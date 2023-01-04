import
  std/terminal,
  ../assets/logos

func getLogo*(distroId: string): tuple =
  const
    coloredLogos: array[16, tuple] = [
      (fgRed, nitchLogo),
      (fgBlue, archLogo),
      (fgRed, ubuntuLogo),
      (fgRed, debianLogo),
      (fgBlue, fedoraLogo),
      (fgGreen, mintLogo),
      (fgBlue, zorinLogo),
      (fgCyan, poposLogo),
      (fgGreen, manjaroLogo),
      (fgGreen, opensuseLogo),
      (fgBlue, slackwareLogo),
      (fgYellow, centosLogo),
      (fgRed, redhatLogo),
      (fgMagenta, gentooLogo),
      (fgMagenta, endeavourosLogo),
      (fgBlue, artixLogo)
    ]

  case distroId:
  of "arch":
    result = coloredLogos[1]

  of "ubuntu":
    result = coloredLogos[2]

  of "debian":
    result = coloredLogos[3]

  of "fedora":
    result = coloredLogos[4]

  of "linuxmint":
    result = coloredLogos[5]

  of "Zorin OS":
    result = coloredLogos[6]

  of "pop":
    result = coloredLogos[7]

  of "manjaro":
    result = coloredLogos[8]

  of "opensuse":
    result = coloredLogos[9]

  of "slackware":
    result = coloredLogos[10]

  of "centos":
    result = coloredLogos[11]

  of "redhat":
    result = coloredLogos[12]

  of "gentoo":
    result = coloredLogos[13]

  of "endeavouros":
    result = coloredLogos[14]

  of "artix":
    result = coloredLogos[15]

  else:
    result = coloredLogos[0]
