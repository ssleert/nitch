import
  std/[osproc, strutils]

proc getFlatpakPkgs*(): string =
  result = osproc.execCmdEx("flatpak list | wc --lines")[0]