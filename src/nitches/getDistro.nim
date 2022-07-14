proc getDistro*(): string =
  let
    osRelease: File = open("/etc/os-release", fmRead)
    distroName: string = readLine(osRelease)

  osRelease.close()

  result = distroName[6..^2]
