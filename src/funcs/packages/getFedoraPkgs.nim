import std/strutils

import osproc


proc getFedoraPkgs*(): string =
    let count = osproc.execCmdEx("rpm -qa | wc -l")[0]
    result = replace(count, "\n", "")