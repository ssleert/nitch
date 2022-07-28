import
  std/parsecfg

proc getDistro*(): string =
  result = "/etc/os-release".loadConfig.getSectionValue("", "PRETTY_NAME")
