import
  std/strutils

proc getRam*(): string =
  let
    fileSeq: seq[string] = "/proc/meminfo".readLines(3)
  
  let
    memTotalString = fileSeq[0].split(" ")[^2]
    memAvailableString = fileSeq[2].split(" ")[^2]
  
    memTotalInt = memTotalString.parseUInt div 1024
    memAvailableInt = memAvailableString.parseUInt div 1024
  
    memUsedInt = memTotalInt - memAvailableInt
  
  result = $(memUsedInt) & " | " & $(memTotalInt) & " MiB"
  
  
proc getRam_MB*(): string =
  let
    fileSeq: seq[string] = "/proc/meminfo".readLines(3)
  
  let
    memTotalString = fileSeq[0].split(" ")[^2]
    memAvailableString = fileSeq[2].split(" ")[^2]

    memTotalInt = memTotalString.parseUInt div 1000
    memAvailableInt = memAvailableString.parseUInt div 1000

    memUsedInt = memTotalInt - memAvailableInt

  result = $(memUsedInt) & " | " & $(memTotalInt) & " MB"
