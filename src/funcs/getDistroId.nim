import std/parsecfg

proc getDistroId*(): string =
  let
    osRelease = loadConfig("/etc/os-release")

  result = osRelease.getSectionValue("", "ID")
