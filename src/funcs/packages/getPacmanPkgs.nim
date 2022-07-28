import
  std/[os, sequtils]

proc getPacmanPkgs*(): string =
  let
    filesInPath: seq[tuple] = "/var/lib/pacman/local".walkDir(relative = true).toSeq

  result = $(filesInPath.len - 1)
