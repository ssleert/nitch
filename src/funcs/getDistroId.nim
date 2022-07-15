import std/parsecfg

proc getDistroId*(): string =
  let
    osRelease: Config = loadConfig("/etc/os-release")

  result = osRelease.getSectionValue("", "ID")
