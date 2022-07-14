func argParser*(args: seq[string], argCount: int): int =

  # list of constant args
  const
    argsList: array[4, string] = [
    "-h", "--help",
    "-v", "--version"
    ]

  # if no flags
  if argCount == 0:
    result = 0  # return 0

  else:
    # case first argument
    case args[0]:

    # if -h --help flags
    of argsList[0 .. 1]:
      result = 1  # return 1

    # if -v --version flags
    of argsList[2 .. 3]:
      result = 2  # return 2
