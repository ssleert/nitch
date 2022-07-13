import std/os
import flags/argp
import funcs/perform

let
  arg: int = argParser(commandLineParams(), paramCount())

case arg:

# if no flags
of 0:
  arg0()

# -h --help flag
of 1:
  arg1()

# -v --version flag
of 2:
  arg2()

# nim xdd
else:
  arg0()
