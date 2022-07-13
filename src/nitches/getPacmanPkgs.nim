import std/os
import std/sequtils

proc getPacmanPkgs*(): string =
  let
    packagesDir: string = "/var/lib/pacman/local"
    filesInPath: seq[tuple] = toSeq(walkDir(packagesDir, relative = true))

  return $(filesInPath.len - 1)
