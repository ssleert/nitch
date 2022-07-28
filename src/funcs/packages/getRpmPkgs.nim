import
  std/[strutils, osproc]

proc getRpmPkgs*(): string =
  let
    count = osproc.execCmdEx("rpm -qa")[0]

  result = $(count.split("\n").len - 1)
