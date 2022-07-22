import std/parsecfg

proc getDistro*(): string =
  let
    osRelease = loadConfig("/etc/os-release")

    distroName = osRelease.getSectionValue("", "PRETTY_NAME")

  result = distroName
