proc getHostname*(): string =
  result = readFile("/etc/hostname")
