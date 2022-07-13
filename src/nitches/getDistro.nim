proc getDistro*(): string =
  let
    osRelease: File = open("/etc/os-release", fmRead)
    distroName: string = readLine(osRelease)

  close(osRelease)

  result = distroName[6..^2]
