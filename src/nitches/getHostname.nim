import std/os
import std/parsecfg

proc getHostname*(): string =
  let hostname = "/etc/hostname"
  let hostnameOpenrc = "/etc/conf.d/hostname"
  if hostname.fileExists():
    result = hostname.open.readLine
  elif hostnameOpenrc.fileExists():
    result = hostnameOpenrc.loadConfig.getSectionValue("", "hostname")
  else:
    result = ""
