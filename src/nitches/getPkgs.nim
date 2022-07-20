import ../funcs/packages/[getPacmanPkgs, getRpmPkgs, getPortagePkgs, getVoidPkgs, getUbuntuPkgs]

proc getPkgs*(distroId: string): string =
  case distroId:
  of "arch":
    result = getPacmanPkgs()

  of "archcraft":
    result = getPacmanPkgs()

  of "manjaro":
    result = getPacmanPkgs()

  of "endeavouros":
    result = getPacmanPkgs()

  of "fedora":
    result = getRpmPkgs()

  of "gentoo":
    result = getPortagePkgs()

  of "void":
    result = getVoidPkgs()
  
  of "ubuntu":
    result = getUbuntuPkgs()

  else:
    result = ">3"
