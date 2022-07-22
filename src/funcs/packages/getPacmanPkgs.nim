import std/[os, sequtils]

proc getPacmanPkgs*(): string =
  let
    packagesDir = "/var/lib/pacman/local"
    filesInPath: seq[tuple] = toSeq(walkDir(packagesDir, relative = true))

  result = $(filesInPath.len - 1)
