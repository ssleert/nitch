import std/[strutils, osproc]

proc getFedoraPkgs*(): string =
  let
    count = osproc.execCmdEx("rpm -qa | wc -l")[0]

  result = count.replace("\n", "")
