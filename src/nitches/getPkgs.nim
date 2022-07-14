import std/parsecfg
import ../funcs/packages/getPacmanPkgs

proc getPkgs*(): string =
  let
    osRelease: Config = loadConfig("/etc/os-release")

    sysId: string = osRelease.getSectionValue("", "ID")

  case sysId:
  of "arch":
    result = getPacmanPkgs()

  of "archcraft":
    result = getPacmanPkgs()

  of "manjaro":
    result = getPacmanPkgs()

  of "ubuntu":
    result = "<3"

  of "debian":
    result = "<3"

  else:
    result = "<3"