import std/[os, sequtils]

proc getPacmanPkgs*(): string =
  let
    packagesDir: string = "/var/lib/pacman/local"
    filesInPath: seq[tuple] = toSeq(walkDir(packagesDir, relative = true))

  return $(filesInPath.len - 1)
