import std/os

func getShell*(): string =
  result = getEnv("SHELL")
