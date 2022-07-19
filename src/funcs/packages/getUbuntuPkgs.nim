import std/strutils
import osproc

proc getUbuntuPkgs*(): string =
     let count = osproc.execCmdEx("dpkg -l | wc -l")[0]
     result = replace(count,"\n","")
