import
  std/[strutils, os]

func getShell*(): string =
  result = getEnv("SHELL").split("/")[^1]
