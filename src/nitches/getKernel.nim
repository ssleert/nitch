import
  std/[strutils, osproc]

proc getKernel*(): string =
  when defined linux:
    result = "/proc/version".open.readLine.split(" ")[2]
  elif defined windows:
    result = "idk"
  elif defined android:
    result = osproc.execCmdEx("uname -r")[0]
