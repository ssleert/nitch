import std/strutils

proc getUptime*(): string =
  let
    uptimeFile: File = open("/proc/uptime", fmRead)
    uptimeSeq: seq[string] = readAll(uptimeFile).split(" ")
    uptimeHours: float = int(parseFloat(uptimeSeq[0])) / 3600

    uptimeObject: float = int(uptimeHours * 100) / 100

  close(uptimeFile)

  return uptimeObject.repr
