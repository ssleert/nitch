import std/os

proc getShell*(): string =
  result = getEnv("SHELL")
