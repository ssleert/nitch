import
  std/[strutils, osproc]

proc getPortagePkgs*(): string =
  let
    count = osproc.execCmdEx("ls -d /var/db/pkg/*/*| cut -f5- -d/")[0]

  result = $(count.split("\n").len - 1)
