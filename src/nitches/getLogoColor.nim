import std/terminal

func getLogoColor*(distroId: string): ForegroundColor =
  case distroId:
  of "arch":
    result = fgBlue

  of "ubuntu":
    result = fgRed

  of "debian":
    result = fgRed

  else:
    result = fgRed
