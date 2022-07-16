import std/strutils

proc getUptime*(): string =
  let
    uptimeSeq: seq[string] = readFile("/proc/uptime").split(".")
    uptimeHours: string = $(parseInt(uptimeSeq[0]) div 3600)
    uptimeMinutes: string = $(parseInt(uptimeSeq[0]) mod 3600 div 60)

  result = uptimeHours & "h " & uptimeMinutes & "m"