import std/strutils

proc getUptime*(): string =
  let
    uptimeSeq: seq[string] = readFile("/proc/uptime").split(".")
    uptimeHours: float = parseInt(uptimeSeq[0]) / 3600

    uptimeObject: string = $(int(uptimeHours * 100) / 100)

  result = uptimeObject
