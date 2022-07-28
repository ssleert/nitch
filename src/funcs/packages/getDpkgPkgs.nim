import
  std/[strutils, osproc]

proc getDpkgPkgs*(): string =
  let
    count = osproc.execCmdEx("dpkg -l")[0]

  result = $(count.split("\n").len - 1)
