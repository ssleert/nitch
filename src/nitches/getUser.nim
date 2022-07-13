import std/os

proc getUser*(): string =
  return getEnv("USER")
