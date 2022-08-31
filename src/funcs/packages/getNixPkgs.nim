import
  std/[strutils, osproc]

proc getNixPkgs*(): string =
  let
    count = osproc.execCmdEx("nix-store -qR /run/current-system/sw ~/.nix-profile")[0]

  result = $(count.split("\n").len - 1)
