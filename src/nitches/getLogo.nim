import ../assets/logos

func getLogo*(distroId: string): string =
  case distroId:
  of "arch":
    result = archLogo

  of "ubuntu":
    result = ubuntuLogo

  of "debian":
    result = debianLogo

  else:
    result = nitchLogo
