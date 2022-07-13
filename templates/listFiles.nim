import std/os
import std/sequtils

proc listFiles(dir: string) =
  let
    filesInPath: seq[tuple] = toSeq(walkDir(dir, relative = true))

  let
    asd: int = filesInPath.len - 1

listFiles("/var/lib/pacman/local")
