#!/usr/bin/env python3

import argparse
import subprocess
import os

COMMANDS = [
  "build", "run", "test", "clean", "docs", "hoogle", "fixgmp", "commands", "protos"
]

parser = argparse.ArgumentParser()
parser.add_argument("command", choices=COMMANDS)
args = parser.parse_args()
command = args.command

def call(args, failure_message = None):
  """Wrapper around subprocess.check_call"""
  result = subprocess.call(args)
  if result != 0:
    if failure_message:
      print(failure_message)
    exit(result)

def protos():
  print("Generating Protos")
  call(["stack", "scripts/GenerateProtos.hs"])

def build():
  protos()
  print("Building")
  call(["stack", "build", "--fast", "--haddock-deps"])

if command == "protos":
  protos()
elif command == "build":
  build()
elif command == "run":
  build()
  print("Running")
  call(["stack", "exec", "tarkin-exe"])
elif command == "test":
  print("Testing")
  call(["stack", "test"])
elif command == "clean":
  print("Cleaning")
  call(["stack", "clean"])
elif command == "docs":
  print("Generating Haddock")
  call(["stack", "haddock"])
  print("Generating Hoogle")
  call(["stack", "hoogle", "--", "generate", "--local"])
elif command == "hoogle":
  print("Running Hoogle Server")
  call(["stack", "hoogle", "--", "server", "--local", "--port=8080"])
elif command == "fixgmp":
  # This works around a crazy bug in GHC, see the README at
  # https://github.com/haskell/haskell-ide-engine
  print("Fixing gmp")
  call([
    "mv",
    os.path.expanduser("~/.stack/programs/x86_64-osx/ghc-8.4.3/lib/ghc-8.4.3/integer-gmp-1.0.2.0/HSinteger-gmp-1.0.2.0.o"),
    os.path.expanduser("~/.stack/programs/x86_64-osx/ghc-8.4.3/lib/ghc-8.4.3/integer-gmp-1.0.2.0/HSinteger-gmp-1.0.2.0_RENAMED.o")])
elif command == "commands":
  print("Commands:")
  print(COMMANDS)
