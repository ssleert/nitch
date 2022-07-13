import std/strutils

proc getKernel*(): string =
  let
    version: string = readAll(open("/proc/version"))
    kernelVersion: seq[string] = version.split(" ")

  return kernelVersion[2]
