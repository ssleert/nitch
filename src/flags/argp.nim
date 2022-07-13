func argParser*(args: seq[string], argCount: int): int =

  # list of args
  const
    argsList: array[4, string] = [
    "-h", "--help",
    "-v", "--version"
    ]

  # if no flags
  if argCount == 0:
    result = 0

  else:
    case args[0]:

    # -h --help flag
    of argsList[0 .. 1]:
      result = 1

    # -v --version flag
    of argsList[2 .. 3]:
      result = 2
