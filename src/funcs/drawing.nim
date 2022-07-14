import std/terminal  # import standard terminal lib
import ../assets/logos  # import logos from nitch/src/assets/logos
import ../nitches/[getUser, getHostname,
                  getDistro, getKernel,
                  getUptime, getShell,
                  getPkgs, getRam]  # import nitches to get info about user system

# the main function for drawing fetch
proc drawInfo*() =
  const  # icons
    userIcon: string = "► "    # recomended: 
    hnameIcon: string = "► "   # recomended: 
    distroIcon: string = "► "  # recomended: 
    kernelIcon: string = "► "  # recomended: 
    uptimeIcon: string = "► "  # recomended: 
    shellIcon: string = "► "   # recomended: 
    pkgsIcon: string = "► "    # recomended: 
    ramIcon: string = "► "     # recomended: 
    # please insert space after the icon
    # to avoid the bug with cropping the edge of the icon


  let  # all info about system
    defaultLogo: string = nitchLogo       # default nitch logo from nitch/src/assets/logos
    userUser: string = getUser()          # get user through $USER env variable
    userHostname: string = getHostname()  # get Hostname hostname through /etc/hostname
    userDistro: string = getDistro()      # get distro through /etc/os-release
    userKernel: string = getKernel()      # get kernel through /proc/version
    userUptime: string = getUptime()      # get Uptime through /proc/uptime file
    userShell: string = getShell()        # get shell through $SHELL env variable
    userPkgs: string = getPkgs()          # get amount of packages in distro
    userRam: string = getRam()            # get ram through /proc/meminfo


  # coloed out
  stdout.styledWrite(styleBright, fgRed, defaultLogo)
  stdout.styledWrite(styleBright, "  ╭───────────╮\n")
  stdout.styledWrite(styleBright, "  │ ", fgGreen, userIcon, fgDefault, " user   │ ", fgGreen, userUser, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgYellow, hnameIcon, fgDefault, " hname  │ ", fgYellow, userHostname, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgRed, distroIcon, fgDefault, " distro │ ", fgRed, userDistro, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgBlue, kernelIcon, fgDefault, " kernel │ ", fgBlue, userKernel, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgCyan, uptimeIcon, fgDefault, " uptime │ ", fgCyan, userUptime, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgMagenta, shellIcon, fgDefault, " shell  │ ", fgMagenta, userShell, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgGreen, pkgsIcon, fgDefault, " pkgs   │ ", fgGreen, userPkgs, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgYellow, ramIcon, fgDefault, " memory │ ", fgYellow, userRam, "\n")
  stdout.styledWrite(styleBright, "  ╰───────────╯\n\n")
