import ../funcs/packages/[getPacmanPkgs, getRpmPkgs]

proc getPkgs*(distroId: string): string =
  case distroId:
  of "arch":
    result = getPacmanPkgs()

  of "archcraft":
    result = getPacmanPkgs()

  of "manjaro":
    result = getPacmanPkgs()

  of "fedora":
    result = getRpmPkgs()

  else:
    result = ">3"
