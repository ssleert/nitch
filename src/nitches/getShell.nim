import std/os

proc getShell*(): string =
  return getEnv("SHELL")
