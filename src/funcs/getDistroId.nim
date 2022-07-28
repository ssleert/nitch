import
  std/parsecfg

proc getDistroId*(): string =
  let
    osRelease = "/etc/os-release".loadConfig

  result = osRelease.getSectionValue("", "ID")
