import std/[strutils, os]

func getShell*(): string =
  let
    shellPath: string = getEnv("SHELL")
    shellSeq: seq[string] = shellPath.split("/")

  result = shellSeq[^1]
