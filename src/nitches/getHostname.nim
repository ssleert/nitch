proc getHostname*(): string =
  result = "/etc/hostname".open.readLine
