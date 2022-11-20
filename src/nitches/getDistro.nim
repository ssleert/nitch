import
  std/[parsecfg, osproc]

proc getDistro*(): string =
  when defined linux:
    result = "/etc/os-release".loadConfig.getSectionValue("", "PRETTY_NAME")

  elif defined windows:
    result = "Windows"

  elif defined android:
    let version = "Android " + osproc.execCmdEx("getprop ro.build.version.release")[0]
    result = version