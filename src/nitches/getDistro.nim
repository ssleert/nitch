import std/parsecfg

proc getDistro*(): string =
  let
    osRelease: Config = loadConfig("/etc/os-release")

    distroName: string = osRelease.getSectionValue("", "PRETTY_NAME")

  result = distroName
