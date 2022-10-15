import
  std/[strutils, osproc]

proc getKissPkgs*(): string =
  let
    count = osproc.execCmdEx("ls -d /var/db/kiss/installed/*")[0]

  result = $(count.split("\n").len - 1)
