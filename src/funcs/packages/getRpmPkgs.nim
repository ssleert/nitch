import std/osproc

proc getRpmPkgs*(): string =
  let
    count: string = osproc.execCmdEx("rpm -qa | wc -l")[0]

  result = count[0 .. ^3]
