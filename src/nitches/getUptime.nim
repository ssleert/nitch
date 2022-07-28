import
  std/strutils

proc getUptime*(): string =
  let
    uptimeString = "/proc/uptime".open.readLine.split(".")[0]
    uptimeUint = uptimeString.parseUInt

    uptimeHours = uptimeUint div 3600
    uptimeMinutes = uptimeUint mod 3600 div 60

  if uptimeHours == 0:
    result = $(uptimeMinutes) & "m"

  else:
    result = $(uptimeHours) & "h " & $(uptimeMinutes) & "m"
