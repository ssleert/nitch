import std/[strutils, os]

func getShell*(): string =
  let
    shellPath = getEnv("SHELL")
    shellSeq: seq[string] = shellPath.split("/")

  result = shellSeq[^1]
