import std/os

proc getUser*(): string =
  result = getEnv("USER")
