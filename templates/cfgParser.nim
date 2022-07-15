import std/parsecfg

let
  cfg: Config = loadConfig("test.cfg")

  first: string = cfg.getSectionValue("", "first")
  second: string = cfg.getSectionValue("", "second")
  third: string = cfg.getSectionValue("", "third")


echo first
echo second
echo third
