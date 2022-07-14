import std/strutils

proc getUptime*(): string =
  let
    uptimeSeq: seq[string] = readFile("/proc/uptime").split(".")
    uptimeHours: string = $(parseInt(uptimeSeq[0]) / 3600)

  if len(uptimeHours) > 4:
    result = uptimeHours[0 .. 4] & "h"

  else:
    result = uptimeHours & "h"
