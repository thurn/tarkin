#!/usr/bin/env python3

import subprocess
import os
import hashlib
import sys

COMMANDS = {
  "build": "Builds the server",
  "run": "Runs the server",
  "test": "Runs server tests",
  "clean": "Removes compliation artifacts",
  "docs": "Generates haskell documentation",
  "hoogle": "Runs a Hoogle server",
  "fixgmp": "Fixes a bug with haskell-ide-engine on OSX",
  "protos": "Generates protocol buffer code",
  "lock": "Locks the ThirdParty directory to prevent modification",
  "unlock": "Unlocks the ThirdParty directory to allow modification",
  "checksum": "Hashes the contents of the ThirdParty directory and compares to stored checksum value",
  "updateChecksum": "Updates the stored checksum value for ThirdParty when it changes",
  "symlink": "Creates symlinks to project files to a target dir, e.g. in dropbox"
}

EXPECTED_PROGRAMS = [
  "stack",

  # OSX: brew install protobuf
  # Windows: Download from https://github.com/protocolbuffers/protobuf/releases and add to %PATH%
  # Linux: sudo apt-get install protobuf-compiler
  "protoc"
]

SYMLINK_EXCLUDE = [
  ".git",
  ".vscode",
  "client",
  "server",
]

CLIENT_SYMLINK_EXCLUDE = [
  ".vs",
  "Library",
  "Logs",
  "Packages",
  "Temp",
  "obj",
  "out",
  "client.sln",
  "Assembly-CSharp.csproj",
  "Assembly-CSharp-Editor.csproj"
]

SERVER_SYMLINK_EXCLUDE = [
  ".stack-work"
]

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

if len(sys.argv) < 2:
  print("Usage:")
  for k, v in COMMANDS.items():
    print("'r.py " + k + "': " + v)
  exit(0)

command = sys.argv[1]

os.chdir(DIR)

for program in EXPECTED_PROGRAMS:
  if not (which(program) or which(program + ".exe")):
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
  if os.name == "nt":
    call(["attrib", "+R", os.path.join(THIRD_PARTY, "*"), "/s", "/d"])
  else:
    import pwd
    # TODO check git status
    require_sudo()
    print("Locking ThirdParty")
    chown(THIRD_PARTY, 0, 0)

elif command == "unlock":
  if os.name == "nt":
    call(["attrib", "-R", os.path.join(THIRD_PARTY, "*"), "/s", "/d"])
  else:
    import pwd
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

elif command == "symlink":
    if os.name == "nt":
      print("Not yet implemented.")
      exit(0)
    else:
      if len(sys.argv) < 3:
        print("Usage: r.py symlink <path/to/target/directory>")
        exit(1)
      target = sys.argv[2]
      if os.path.exists(target):
        print("Error: " + target + " already exists")
        exit(1)

      server_target = os.path.join(target, "server")
      client_target = os.path.join(target, "client")
      os.mkdir(target)
      os.mkdir(server_target)
      os.mkdir(client_target)

      for entry in os.listdir(DIR):
        if entry not in SYMLINK_EXCLUDE:
          print("linking " + os.path.join(SERVER_DIR, entry) + " to " + os.path.join(server_target, entry))
          os.symlink(os.path.join(DIR, entry), os.path.join(target, entry))
      for entry in os.listdir(SERVER_DIR):
        if entry not in SERVER_SYMLINK_EXCLUDE:
          print("linking " + os.path.join(SERVER_DIR, entry) + " to " + os.path.join(server_target, entry))
          os.symlink(os.path.join(SERVER_DIR, entry), os.path.join(server_target, entry))
      for entry in os.listdir(CLIENT_DIR):
        if entry not in CLIENT_SYMLINK_EXCLUDE:
          print("linking " + os.path.join(CLIENT_DIR, entry) + " to " + os.path.join(client_target, entry))
          os.symlink(os.path.join(CLIENT_DIR, entry), os.path.join(client_target, entry))

else:
  print("Command not recognized: " + command)
