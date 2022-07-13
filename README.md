<div align="center">

<img src="https://cdn.discordapp.com/attachments/955362477137362954/996769449480826971/2022-07-13_16-25.png" width="350px">

# `NiTch`

<h3>
  incredibly fast system fetch written in nim :crown:
</h3>
<br>

![Maintenance](https://shields.io/maintenance/yes/2022?style=for-the-badge)
![License](https://shields.io/github/license/unxsh/nitch?style=for-the-badge)
![CodeFactor](https://img.shields.io/codefactor/grade/github/unxsh/nitch?style=for-the-badge)
![Commits](https://shields.io/github/commit-activity/m/unxsh/nitch?style=for-the-badge)

![GitHub Repo stars](https://img.shields.io/github/stars/unxsh/nitch?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/unxsh/nitch?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/unxsh/nitch?style=for-the-badge)

![GitHub release (latest by date)](https://img.shields.io/github/v/release/unxsh/nitch?style=for-the-badge)

</div>

<br>

# Description

<img src="https://media.discordapp.net/attachments/955362477137362954/996770839812911194/2022-07-13_16-31.png" width="350px" align="right">

`nitch` is a small and incredibly fast system fetch written fully in nim without any dependencies, on my pc
it executes in around 1.70 miliseconds.

The source code of `nitch` is highly documented and I hope it will act as a learning resource for nim
and linux systems architecture

If anything in the source code is unclear or is lacking in its explanation, open an issue. Sometimes you get too close to something and you fail to see the "bigger picture"!

btw written in nim 👑

<br>
<br>
<br>
<br>

# Install
### Loading 🚧

# Usage
```fish
nitch
```

<br>

flags:
```fish
 -f --fetch   | return fetch about system
 -h --help    | return help message
 -v --version | return version of program
```

<br>

# Configuration ⚙️
`nitch` is configured through editing source code

### Loading 🚧

<br>

# File architecture 📁
```fish
nitch
  ├── LICENSE
  ├── nitch
  ├── nitch.nimble
  ├── README.md
  ├── src
  │   ├── assets
  │   │   ├── assets.nim
  │   │   └── logos.nim
  │   ├── flags
  │   │   └── argp.nim
  │   ├── funcs
  │   │   └── perform.nim
  │   ├── nitches
  │   │   ├── getDistro.nim
  │   │   ├── getHostname.nim
  │   │   ├── getKernel.nim
  │   │   ├── getPacmanPkgs.nim
  │   │   ├── getRam.nim
  │   │   ├── getShell.nim
  │   │   ├── getUptime.nim
  │   │   └── getUser.nim
  │   ├── nitch.nim
  │   └── nitch.nim.cfg
  └── templates
      ├── data.dat
      ├── listFiles.nim
      ├── readLine.nim
      ├── refTest.nim
      ├── shellCheck.nim
      └── testFile

6 directories, 24 files
```

# Thanks for code 💬
- [pfetch](https://github.com/dylanaraps/pfetch/)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [paleofetch](https://github.com/ss7m/paleofetch)
- [rxfetch](https://github.com/Mangeshrex/rxfetch)
- [nerdfetch](https://github.com/ThatOneCalculator/NerdFetch)
