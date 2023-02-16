import
  std/strutils

proc getUptime*(): string =
  let
    uptimeString = "/proc/uptime".open.readLine.split(".")[0]
    uptimeUint = uptimeString.parseUInt

    uptimeHours = uptimeUint div 3600 mod 24
    uptimeMinutes = uptimeUint mod 3600 div 60
    uptimeDays = uptimeUint div 3600 div 24 

  if uptimeDays == 0:
    result = $(uptimeHours) & "h " & $(uptimeMinutes) & "m"
  
  elif uptimeHours == 0 and uptimeDays == 0:
    result = $(uptimeMinutes) & "m"

  else:
    result = $(uptimeDays) & "d " & $(uptimeHours) & "h " & $(uptimeMinutes) & "m"
