proc getHostname*(): string =
  let
    hostNameFile = open("/etc/hostname")
    hostName = readLine(hostNameFile)

  hostNameFile.close()

  result = hostName
