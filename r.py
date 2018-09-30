#!/usr/bin/env python3

import argparse
import subprocess
import os
import pwd
import hashlib

COMMANDS = [
  "build", "run", "test", "clean", "docs", "hoogle", "fixgmp", "commands", "protos",
  "lock", "unlock", "checksum", "updateChecksum"
]

EXPECTED_PROGRAMS = [
  "stack",
  "protoc" # sudo apt-get install protobuf-compiler
]

parser = argparse.ArgumentParser()
parser.add_argument("command", choices=COMMANDS)
args = parser.parse_args()
command = args.command

DIR = os.path.dirname(os.path.realpath(__file__))
SERVER_DIR = os.path.join(DIR, "server")
CLIENT_DIR = os.path.join(DIR, "client")
THIRD_PARTY = os.path.join(CLIENT_DIR, "Assets", "ThirdParty")
CHECKSUM_FILE = os.path.join(CLIENT_DIR, "third_party.sha1")

def which(program):
  """Returns the location of a program on the PATH if it can be found, or None
  if it does not exist."""
  def is_exe(fpath):
    return os.path.isfile(fpath) and os.access(fpath, os.X_OK)
  fpath, fname = os.path.split(program)
  if fpath:
    if is_exe(program):
      return program
  else:
    for path in os.environ["PATH"].split(os.pathsep):
      path = path.strip('"')
      exe_file = os.path.join(path, program)
      if is_exe(exe_file):
        return exe_file
  return None

def call(args, failure_message = None):
  """Wrapper around subprocess.check_call"""
  result = subprocess.call(args)
  if result != 0:
    if failure_message:
      print(failure_message)
    exit(result)

def stack(args):
  cwd = os.getcwd()
  os.chdir(SERVER_DIR)
  call(["stack"] + args)
  os.chdir(cwd)

def protos():
  print("Generating Protos")
  stack(["scripts/GenerateProtos.hs"])
  call(["protoc", "proto/data.proto", "--csharp_out=client/Assets/Proto"])

def build():
  protos()
  print("Building")
  stack(["build", "--fast", "--haddock-deps"])

def require_sudo():
  if os.getuid() != 0:
    print("Error: This command must be run as root.")
    exit(1)

def chown(base_path, uid, gid):
  os.chown(base_path, uid, gid)
  for root, dirs, files in os.walk(base_path):
    for d in dirs:
      os.chown(os.path.join(root, d), uid, gid)
    for f in files:
      os.chown(os.path.join(root, f), uid, gid)

def hash_third_party():
  sha_hash = hashlib.sha1()
  for root, dirs, files in os.walk(THIRD_PARTY):
    dirs.sort()
    if ".git" in root:
      continue
    for file in sorted(files):
      path = os.path.join(root, file)
      f = open(path, 'rb')
      while 1:
        buf = f.read(4096)
        if not buf:
          break
        sha_hash.update(buf)
      sha_hash.update(bytes(file, 'utf-8'))
      f.close()
  return sha_hash.hexdigest()

os.chdir(DIR)

for program in EXPECTED_PROGRAMS:
  if not which(program):
    print("Program " + program + " not found on path. Please install.")
    exit(1)

if command == "protos":
  protos()
elif command == "build":
  build()
elif command == "run":
  build()
  print("Running")
  stack(["exec", "tarkin-exe"])
elif command == "test":
  print("Testing")
  protos()
  stack(["test"])
elif command == "clean":
  print("Cleaning")
  stack(["clean"])
elif command == "docs":
  print("Generating Haddock")
  stack(["haddock"])
  print("Generating Hoogle")
  stack(["hoogle", "--", "generate", "--local"])
elif command == "hoogle":
  print("Running Hoogle Server")
  stack(["hoogle", "--", "server", "--local", "--port=8080"])
elif command == "fixgmp":
  # This works around a crazy bug in GHC OSX, see the README at
  # https://github.com/haskell/haskell-ide-engine
  print("Fixing gmp")
  call([
    "mv",
    os.path.expanduser("~/.stack/programs/x86_64-osx/ghc-8.4.3/lib/ghc-8.4.3/integer-gmp-1.0.2.0/HSinteger-gmp-1.0.2.0.o"),
    os.path.expanduser("~/.stack/programs/x86_64-osx/ghc-8.4.3/lib/ghc-8.4.3/integer-gmp-1.0.2.0/HSinteger-gmp-1.0.2.0_RENAMED.o")])
elif command == "commands":
  print("Commands:")
  print(COMMANDS)
elif command == "lock":
  # TODO check git status
  require_sudo()
  print("Locking ThirdParty")
  chown(THIRD_PARTY, 0, 0)
elif command == "unlock":
  # TODO check git status
  require_sudo()
  uid = pwd.getpwnam(os.getlogin()).pw_uid
  gid = pwd.getpwnam(os.getlogin()).pw_gid
  print("Unlocking ThirdParty for user " + str(uid))
  chown(THIRD_PARTY, uid, gid)
elif command == "checksum":
  file = open(CHECKSUM_FILE, "r")
  stored = "\n".join(file.readlines())
  print("Stored: " + stored)
  computed = hash_third_party()
  print("Computed: " + computed)
  if (stored == computed):
    print("MATCH")
  else:
    print("ERROR: NO MATCH")
    exit(1)
elif command == "updateChecksum":
  # TODO check git status
  file = open(CHECKSUM_FILE, "w")
  file.write(hash_third_party())
  file.close()
