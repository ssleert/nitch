import std/[strutils, osproc]

proc getRpmPkgs*(): string =
  let
    count: string = osproc.execCmdEx("rpm -qa")[0]

  result = $(count.split("\n").len - 1)
