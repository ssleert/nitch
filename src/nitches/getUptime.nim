import std/strutils

proc getUptime*(): string =
  let
    uptimeSeq: seq[string] = readFile("/proc/uptime").split(".")
    uptimeHours: string = $(parseInt(uptimeSeq[0]) / 3600)

  result = uptimeHours & "h"
