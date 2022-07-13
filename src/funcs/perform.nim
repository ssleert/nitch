import std/terminal
import ../assets/assets
import ../assets/logos
import ../nitches/[getUser, getHostname, getDistro, getKernel, getUptime, getShell, getPacmanPkgs, getRam]


# if no flag
proc arg0*() =
  let
    userUser: string = getUser()
    userHostname: string = getHostname()
    userDistro: string = getDistro()
    userKernel: string = getKernel()
    userUptime: string = getUptime()
    userShell: string = getShell()
    userPkgs: string = getPacmanPkgs()
    userRam: string = getRam()

  stdout.styledWrite(styleBright, fgRed, nitchLogo)
  stdout.styledWrite(styleBright, "  ╭───────────╮\n")
  stdout.styledWrite(styleBright, "  │ ", fgGreen, " ", fgDefault, " user   │ ", fgGreen, userUser, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgYellow, " ", fgDefault, " hname  │ ", fgYellow, userHostname)
  stdout.styledWrite(styleBright, "  │ ", fgRed, " ", fgDefault, " distro │ ", fgRed, userDistro, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgBlue, " ", fgDefault, " kernel │ ", fgBlue, userKernel, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgCyan, " ", fgDefault, " uptime │ ", fgCyan, userUptime, "h", "\n")
  stdout.styledWrite(styleBright, "  │ ", fgMagenta, " ", fgDefault, " shell  │ ", fgMagenta, userShell, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgGreen, " ", fgDefault, " pkgs   │ ", fgGreen, userPkgs, "\n")
  stdout.styledWrite(styleBright, "  │ ", fgYellow, " ", fgDefault, " memory │ ", fgYellow, userRam, "\n")
  stdout.styledWrite(styleBright, "  ╰───────────╯\n\n")

# -h --help flag
proc arg1*() =
  stdout.styledWrite(helpMsg)

# -v --version flag
proc arg2*() =
  stdout.styledWrite(programVersion)
