import
  std/terminal,     # import standard terminal lib
  std/strutils,
  getDistroId,      # import to get distro id through /etc/os-release
  ../assets/logos,  # uncomment if you use your own logo
  ../nitches/[getUser, getHostname,
                  getDistro, getKernel,
                  getUptime, getShell,
                  getPkgs, getRam, getLogo]  # import nitches to get info about user system

# the main function for drawing fetch
proc drawInfo*(asciiArt: bool) =
  let  # distro id (arch, manjaro, debian)
    distroId = getDistroId()

  let  # logo and it color
    coloredLogo = getLogo(distroId)  # color + logo tuple
    # (fgRed, nitchLogo)

  const  # icons before cotegores
    userIcon   = " "  # recomended: " " or "|>"
    hnameIcon  = " "  # recomended: " " or "|>"
    distroIcon = "󰻀 "  # recomended: "󰻀 " or "|>"
    kernelIcon = "󰌢 "  # recomended: "󰌢 " or "|>"
    uptimeIcon = " "  # recomended: " " or "|>"
    shellIcon  = " "  # recomended: " " or "|>"
    pkgsIcon   = "󰏖 "  # recomended: "󰏖 " or "|>"
    ramIcon    = "󰍛 "  # recomended: "󰍛 " or "|>"
    colorsIcon = "󰏘 "  # recomended: "󰏘 " or "->"
    # please insert any char after the icon
    # to avoid the bug with cropping the edge of the icon

    dotIcon = ""  # recomended: "" or "■"
    # icon for demonstrate colors

  const  # categories
    userCat   = " user   │ "  # recomended: " user   │ "
    hnameCat  = " hname  │ "  # recomended: " hname  │ "
    distroCat = " distro │ "  # recomended: " distro │ "
    kernelCat = " kernel │ "  # recomended: " kernel │ "-
    uptimeCat = " uptime │ "  # recomended: " uptime │ "
    shellCat  = " shell  │ "  # recomended: " shell  │ "
    pkgsCat   = " pkgs   │ "  # recomended: " pkgs   │ "
    ramCat    = " memory │ "  # recomended: " memory │ "
    colorsCat = " colors │ "  # recomended: " colors │ "

  let  # all info about system
    userInfo     = getUser()          # get user through $USER env variable
    hostnameInfo = getHostname()      # get Hostname hostname through /etc/hostname
    distroInfo   = getDistro()        # get distro through /etc/os-release
    kernelInfo   = getKernel()        # get kernel through /proc/version
    uptimeInfo   = getUptime()        # get Uptime through /proc/uptime file
    shellInfo    = getShell()         # get shell through $SHELL env variable
    pkgsInfo     = getPkgs(distroId)  # get amount of packages in distro
    ramInfo      = getRam()           # get ram through /proc/meminfo

  const  # aliases for colors
    color1 = fgRed
    color2 = fgYellow
    color3 = fgGreen
    color4 = fgCyan
    color5 = fgBlue
    color6 = fgMagenta
    color7 = fgWhite
    color8 = fgBlack
    color0 = fgDefault

  # ascii art
  if not asciiArt:
    discard
  else:
    stdout.styledWrite(styleBright, coloredLogo[0], coloredLogo[1], color0)

  # colored out
    stdout.styledWrite("\n", styleBright, "  ╭───────────╮\n")
    stdout.styledWrite("  │ ", color2, userIcon, color0, userCat, color1, userInfo, color0, "\n",)
    if not isEmptyOrWhitespace(hostnameInfo):
      stdout.styledWrite("  │ ", color2, hnameIcon, color0, hnameCat, color2, hostnameInfo, color0, "\n")
    stdout.styledWrite("  │ ", color3, distroIcon, color0, distroCat, color3, distroInfo, color0, "\n")
    stdout.styledWrite("  │ ", color4, kernelIcon, color0, kernelCat, color4, kernelInfo, color0, "\n")
    stdout.styledWrite("  │ ", color5, uptimeIcon, color0, uptimeCat, color5, uptimeInfo, color0, "\n")
    stdout.styledWrite("  │ ", color6, shellIcon, color0, shellCat, color6, shellInfo, color0, "\n")
    stdout.styledWrite("  │ ", color1, pkgsIcon, color0, pkgsCat, color1, pkgsInfo, color0, "\n")
    stdout.styledWrite("  │ ", color2, ramIcon, color0, ramCat, fgYellow, ramInfo, color0, "\n")
    stdout.styledWrite("  ├───────────┤\n")
    stdout.styledWrite("  │ ", color7, colorsIcon, color0, colorsCat, color7, dotIcon, " ", color1, dotIcon, " ", color2, dotIcon, " ", color3, dotIcon, " ", color4, dotIcon, " ", color5, dotIcon, " ", color6, dotIcon, " ", color8, dotIcon, color0, "\n")
    stdout.styledWrite("  ╰───────────╯\n\n")
