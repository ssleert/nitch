import std/terminal

func getLogoColor*(distroId: string): ForegroundColor =
  case distroId:
  of "arch":
    result = fgBlue

  of "ubuntu":
    result = fgRed

  of "debian":
    result = fgRed

  of "fedora":
    result = fgBlue

  of "linuxmint":
    result = fgGreen

  of "Zorin OS":
    result = fgBlue

  of "pop":
    result = fgCyan

  of "manjaro":
    result = fgGreen

  of "opensuse":
    result = fgGreen

  of "slackware":
    result = fgBlue

  of "centos":
    result = fgYellow

  of "redhat":
    result = fgRed

  of "gentoo":
    result = fgMagenta

  else:
    result = fgRed
