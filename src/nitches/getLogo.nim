import ../assets/logos

func getLogo*(distroId: string): string =
  case distroId:
  of "arch":
    result = archLogo

  of "ubuntu":
    result = ubuntuLogo

  of "debian":
    result = debianLogo

  of "fedora":
    result = fedoraLogo

  of "linuxmint":
    result = mintLogo

  of "Zorin OS":
    result = zorinLogo

  of "pop":
    result = poposLogo

  of "manjaro":
    result = manjaroLogo

  of "opensuse":
    result = opensuseLogo

  of "slackware":
    result = slackwareLogo

  of "centos":
    result = centosLogo

  of "redhat":
    result = redhatLogo

  of "gentoo":
    result = gentooLogo

  else:
    result = nitchLogo
