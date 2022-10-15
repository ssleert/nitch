import
  ../funcs/packages/[getPacmanPkgs, getRpmPkgs,
                     getPortagePkgs, getXbpsPkgs,
                     getDpkgPkgs, getKissPkgs]

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

  of "garuda":
    result = getPacmanPkgs()

  of "fedora":
    result = getRpmPkgs()

  of "gentoo":
    result = getPortagePkgs()

  of "void":
    result = getXbpsPkgs()

  of "kiss":
    result = getKissPkgs()

  of "ubuntu":
    result = getDpkgPkgs()

  of "debian":
    result = getDpkgPkgs()

  of "pop":
    result = getDpkgPkgs()

  else:
    result = ">3"
