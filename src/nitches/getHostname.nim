proc getHostname*(): string =
  let
    hostNameFile: File = open("/etc/hostname")
    hostName: string = readLine(hostNameFile)

  hostNameFile.close()

  result = hostName
