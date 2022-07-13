proc getHostname*(): string =
  return readFile("/etc/hostname")
