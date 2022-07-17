import std/terminal       # import standard terminal lib
import getDistroId        # import to get distro id through /etc/os-release
#import ../assets/logos   # uncomment if you use your own logo
import ../nitches/[getUser, getHostname,
                   getDistro, getKernel,
                   getUptime, getShell,
                   getPkgs, getRam, getLogo]  # import nitches to get info about user system

# the main function for drawing fetch
proc drawInfo*() =
  let  # distro id (arch, manjaro, debian)
    distroId: string = getDistroId()

  let  # logo and it color
    coloredLogo: tuple = getLogo(distroId)  # color + logo tuple

  const  # icons before cotegores
    userIcon: string   = " "  # recomended: " " or "|>"
    hnameIcon: string  = " "  # recomended: " " or "|>"
    distroIcon: string = " "  # recomended: " " or "|>"
    kernelIcon: string = " "  # recomended: " " or "|>"
    uptimeIcon: string = " "  # recomended: " " or "|>"
    shellIcon: string  = " "  # recomended: " " or "|>"
    pkgsIcon: string   = " "  # recomended: " " or "|>"
    ramIcon: string    = " "  # recomended: " " or "|>"
    colorsIcon: string = " "  # recomended: " " or "->"
    # please insert any char after the icon
    # to avoid the bug with cropping the edge of the icon

    dotIcon: string = ""  # recomended: "" or "■"
    # icon for demonstrate colors

  const  # categories
    userCat: string   = " user   │ "  # recomended: " user   │ "
    hnameCat: string  = " hname  │ "  # recomended: " hname  │ "
    distroCat: string = " distro │ "  # recomended: " distro │ "
    kernelCat: string = " kernel │ "  # recomended: " kernel │ "-
    uptimeCat: string = " uptime │ "  # recomended: " uptime │ "
    shellCat: string  = " shell  │ "  # recomended: " shell  │ "
    pkgsCat: string   = " pkgs   │ "  # recomended: " pkgs   │ "
    ramCat: string    = " memory │ "  # recomended: " memory │ "
    colorsCat: string = " colors │ "  # recomended: " colors │ "

  let  # all info about system
    userInfo: string     = getUser()          # get user through $USER env variable
    hostnameInfo: string = getHostname()      # get Hostname hostname through /etc/hostname
    distroInfo: string   = getDistro()        # get distro through /etc/os-release
    kernelInfo: string   = getKernel()        # get kernel through /proc/version
    uptimeInfo: string   = getUptime()        # get Uptime through /proc/uptime file
    shellInfo: string    = getShell()         # get shell through $SHELL env variable
    pkgsInfo: string     = getPkgs(distroId)  # get amount of packages in distro
    ramInfo: string      = getRam()           # get ram through /proc/meminfo

  const  # aliases for colors
    color1: ForegroundColor = fgRed
    color2: ForegroundColor = fgYellow
    color3: ForegroundColor = fgGreen
    color4: ForegroundColor = fgCyan
    color5: ForegroundColor = fgBlue
    color6: ForegroundColor = fgMagenta
    color7: ForegroundColor = fgWhite
    color8: ForegroundColor = fgBlack
    color0: ForegroundColor = fgDefault

  # colored out
  stdout.styledWrite(styleBright, coloredLogo[0], coloredLogo[1], color0,
                     "  ╭───────────╮\n",
                     "  │ ", color1, userIcon, color0, userCat, color1, userInfo, color0, "\n",
                     "  │ ", color2, hnameIcon, color0, hnameCat, color2, hostnameInfo, color0, "\n",
                     "  │ ", color3, distroIcon, color0, distroCat, color3, distroInfo, color0, "\n",
                     "  │ ", color4, kernelIcon, color0, kernelCat, color4, kernelInfo, color0, "\n",
                     "  │ ", color5, uptimeIcon, color0, uptimeCat, color5, uptimeInfo, color0, "\n",
                     "  │ ", color6, shellIcon, color0, shellCat, color6, shellInfo, color0, "\n",
                     "  │ ", color1, pkgsIcon, color0, pkgsCat, color1, pkgsInfo, color0, "\n",
                     "  │ ", color2, ramIcon, color0, ramCat, fgYellow, ramInfo, color0, "\n",
                     "  ├───────────┤\n",
                     "  │ ", color7, colorsIcon, color0, colorsCat, color7, dotIcon, " ", color1, dotIcon, " ", color2, dotIcon, " ", color3, dotIcon, " ", color4, dotIcon, " ", color5, dotIcon, " ", color6, dotIcon, " ", color8, dotIcon, color0, "\n",
                     "  ╰───────────╯\n\n"
  )