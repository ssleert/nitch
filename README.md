<div align="center">

<img src="https://cdn.discordapp.com/attachments/955362477137362954/996769449480826971/2022-07-13_16-25.png" width="350px">

# `NiTch`

<h3>
  incredibly fast system fetch written in <code>nim👑</code>
</h3>
<br>

![Maintenance](https://shields.io/maintenance/yes/2022?style=for-the-badge)
![License](https://shields.io/github/license/unxsh/nitch?style=for-the-badge)
![Commits](https://shields.io/github/commit-activity/m/unxsh/nitch?style=for-the-badge)

![GitHub Repo stars](https://img.shields.io/github/stars/unxsh/nitch?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/unxsh/nitch?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/unxsh/nitch?style=for-the-badge)

![GitHub release (latest by date)](https://img.shields.io/github/v/release/unxsh/nitch?style=for-the-badge)

</div>

# Description 📖

<img src="https://media.discordapp.net/attachments/955362477137362954/997839005460725841/2022-07-16_15-15_1.png" width="42%" align="right">

`nitch` is a small and incredibly fast system fetch written fully in `nim👑` without any dependencies, on my pc
it executes in around 1.70 miliseconds.

The source code of `nitch` is highly documented and I hope it will act as a learning resource for nim
and linux systems architecture

If anything in the source code is unclear or is lacking in its explanation, open an issue. Sometimes you get too close to something and you fail to see the "bigger picture"!


btw written in `nim👑`

why `nim👑`? because it's fast and simple

<br>

# Installation ☁️
```fish
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
```

# Usage 🪨
```
nitch
```

flags:
```
 -f --fetch   | return fetch about system
 -h --help    | return help message
 -v --version | return version of program
```

<br>

# Configuration ⚙️
### `nitch` is configured through editing source code

### **src/funcs/drawing.nim**
### main conf file
```nim
import std/terminal  # import standard terminal lib
import ../assets/logos  # import logos from nitch/src/assets/logos
import ../nitches/[getUser, getHostname,
                   getDistro, getKernel,
                   getUptime, getShell,
                   getPkgs, getRam]  # import nitches to get info about user system

# the main function for drawing fetch
proc drawInfo*() =
  const  # icons before cotegores
    userIcon: string   = "->"  # recomended: " "
    hnameIcon: string  = "->"  # recomended: " "
    distroIcon: string = "->"  # recomended: " "
    kernelIcon: string = "->"  # recomended: " "
    uptimeIcon: string = "->"  # recomended: " "
    shellIcon: string  = "->"  # recomended: " "
    pkgsIcon: string   = "->"  # recomended: " "
    ramIcon: string    = "->"  # recomended: " "
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
```

# Building 📦
### 0) install [nim](https://nim-lang.org/)

### 1) clone repo
```fish
git clone https://github.com/unxsh/nitch.git
```
### 2) change dir to `nitch`
```fish
cd nitch/
```

### 3) build program with `nimble`
```fish
nimble build
```
After that you will get a ready-made binary file in the root directory of the project.

<br>
<br>

# File architecture 📁
```fish
nitch
  ├── LICENSE
  ├── nitch
  ├── nitch.nimble
  ├── README.md
  ├── src
  │   ├── assets
  │   │   ├── assets.nim
  │   │   └── logos.nim
  │   ├── flags
  │   │   └── argParser.nim
  │   ├── funcs
  │   │   ├── drawing.nim
  │   │   ├── packages
  │   │   │   └── getPacmanPkgs.nim
  │   │   └── perform.nim
  │   ├── nitches
  │   │   ├── getDistro.nim
  │   │   ├── getHostname.nim
  │   │   ├── getKernel.nim
  │   │   ├── getPkgs.nim
  │   │   ├── getRam.nim
  │   │   ├── getShell.nim
  │   │   ├── getUptime.nim
  │   │   └── getUser.nim
  │   ├── nitch.nim
  │   └── nitch.nim.cfg
  └── templates
      ├── cfgParser
      ├── cfgParser.nim
      ├── data.dat
      ├── listFiles.nim
      ├── readLine.nim
      ├── refTest.nim
      ├── shellCheck.nim
      ├── test.cfg
      ├── testFile
      └── testProc.nim

  7 directories, 30 files
```

# Thanks for ideas & examples 💬
- [pfetch](https://github.com/dylanaraps/pfetch/)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [paleofetch](https://github.com/ss7m/paleofetch)
- [rxfetch](https://github.com/Mangeshrex/rxfetch)
- [nerdfetch](https://github.com/ThatOneCalculator/NerdFetch)
