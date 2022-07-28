import
  std/os

func getUser*(): string =
  result = getEnv("USER")
