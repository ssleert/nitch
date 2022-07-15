import std/strutils

proc getUptime*(): string =
  let
    uptimeSeq: seq[string] = readFile("/proc/uptime").split(".")
    uptimeHours: string = $(parseInt(uptimeSeq[0]) / 3600)

    uptimeHoursSeq: seq[string] = uptimeHours.split(".")

  result = uptimeHoursSeq[0] & "." & uptimeHoursSeq[1][0 .. 1] & "h"
