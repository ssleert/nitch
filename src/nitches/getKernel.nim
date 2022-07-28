import
  std/strutils

proc getKernel*(): string =
  result = "/proc/version".open.readLine.split(" ")[2]
