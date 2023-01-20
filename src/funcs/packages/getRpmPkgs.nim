import
  std/[strutils, osproc]

proc getRpmPkgs*(): string =
  result = osproc.execCmdEx("rpm -qa | wc --lines")[0]
