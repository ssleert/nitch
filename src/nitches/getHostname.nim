import std/os

proc getHostname*(): string =
  let hostname = "etc/hostname"
  if hostname.fileExists():
    result = "/etc/hostname".open.readLine
  else:
    result = ""
