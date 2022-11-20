import 
  std/[os, osproc]

proc getHostname*(): string =
  when defined linux:
    let hostname = "/etc/hostname"
    if hostname.fileExists():
      result = hostname.open.readLine
    else:
      result = ""

  elif defined windows:
    result = osproc.execCmdEx("hostname")[0]

  elif defined android:
    result = osproc.execCmdEx("hostname")[0]

  else:
    result = "Unknown"