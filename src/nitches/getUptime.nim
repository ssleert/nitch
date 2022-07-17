import std/strutils

proc getUptime*(): string =
  let
    uptimeSeq: seq[string] = readFile("/proc/uptime").split(".")
    uptimeHours: int = parseInt(uptimeSeq[0]) div 3600
    uptimeMinutes: int = parseInt(uptimeSeq[0]) mod 3600 div 60


  if uptimeHours != 0:
      result = $(uptimeHours) & "h " & $(uptimeMinutes) & "m"

  else:
      result = $(uptimeMinutes) & "m"