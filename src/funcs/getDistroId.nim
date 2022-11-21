import
  std/parsecfg

proc getDistroId*(): string =
  when defined linux:
    let
      osRelease = "/etc/os-release".loadConfig

    result = osRelease.getSectionValue("", "ID")

  elif defined android:
    result = "android"
