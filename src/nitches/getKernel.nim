import std/strutils

proc getKernel*(): string =
  let
    version = readAll(open("/proc/version"))

  result = version.split(" ")[2]
