import std/[strutils, osproc]

proc getPacmanPkgs(): int =
  let
    count: string = osproc.execCmdEx("pacman -Qq")[0]

  result = count.split("\n").len - 1

echo getPacmanPkgs()