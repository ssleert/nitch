import ../funcs/packages/getPacmanPkgs

proc getPkgs*(distroId: string): string =
  case distroId:
  of "arch":
    result = getPacmanPkgs()

  of "archcraft":
    result = getPacmanPkgs()

  of "manjaro":
    result = getPacmanPkgs()

  of "ubuntu":
    result = ">3"

  of "debian":
    result = ">3"

  else:
    result = ">3"
