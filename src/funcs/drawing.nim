import std/terminal  # import standard terminal lib
import ../assets/logos  # import logos from nitch/src/assets/logos
import ../nitches/[getUser, getHostname,
                   getDistro, getKernel,
                   getUptime, getShell,
                   getPkgs, getRam]  # import nitches to get info about user system

# the main function for drawing fetch
proc drawInfo*() =
  const  # icons before cotegores
    userIcon: string   = " "  # recomended: " "
    hnameIcon: string  = " "  # recomended: " "
    distroIcon: string = " "  # recomended: " "
    kernelIcon: string = " "  # recomended: " "
    uptimeIcon: string = " "  # recomended: " "
    shellIcon: string  = " "  # recomended: " "
    pkgsIcon: string   = " "  # recomended: " "
    ramIcon: string    = " "  # recomended: " "
    # please insert any char after the icon
    # to avoid the bug with cropping the edge of the icon

  const  # categories
    userCat: string   = " user   │ "  # recomended: " user   │ "
    hnameCat: string  = " hname  │ "  # recomended: " hname  │ "
    distroCat: string = " distro │ "  # recomended: " distro │ "
    kernelCat: string = " kernel │ "  # recomended: " kernel │ "
    uptimeCat: string = " uptime │ "  # recomended: " uptime │ "
    shellCat: string  = " shell  │ "  # recomended: " shell  │ "
    pkgsCat: string   = " pkgs   │ "  # recomended: " pkgs   │ "
    ramCat: string    = " memory │ "  # recomended: " memory │ "

  let  # all info about system
    defaultLogo: string  = nitchLogo      # default nitch logo from nitch/src/assets/logos
    userInfo: string     = getUser()      # get user through $USER env variable
    hostnameInfo: string = getHostname()  # get Hostname hostname through /etc/hostname
    distroInfo: string   = getDistro()    # get distro through /etc/os-release
    kernelInfo: string   = getKernel()    # get kernel through /proc/version
    uptimeInfo: string   = getUptime()    # get Uptime through /proc/uptime file
    shellInfo: string    = getShell()     # get shell through $SHELL env variable
    pkgsInfo: string     = getPkgs()      # get amount of packages in distro
    ramInfo: string      = getRam()       # get ram through /proc/meminfo


  # colored out
  stdout.styledWrite(styleBright, fgRed, defaultLogo)
  stdout.styledWrite(styleBright, "  ╭───────────╮\n")
  stdout.styledWrite(styleBright, "  │ ", fgGreen, userIcon, fgDefault, userCat, fgGreen, userInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgYellow, hnameIcon, fgDefault, hnameCat, fgYellow, hostnameInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgRed, distroIcon, fgDefault, distroCat, fgRed, distroInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgBlue, kernelIcon, fgDefault, kernelCat, fgBlue, kernelInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgCyan, uptimeIcon, fgDefault, uptimeCat, fgCyan, uptimeInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgMagenta, shellIcon, fgDefault, shellCat, fgMagenta, shellInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgGreen, pkgsIcon, fgDefault, pkgsCat, fgGreen, pkgsInfo, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgYellow, ramIcon, fgDefault, ramCat, fgYellow, ramInfo, "\n")
  stdout.styledWrite(styleBright, "  ╰───────────╯\n\n")
