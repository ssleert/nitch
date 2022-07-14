import ./drawing
import ../assets/assets

# if if no flag
proc arg0*() =
  drawInfo()

# if -h --help flags
proc arg1*() =
  stdout.write(helpMsg)  # write to stdout helpMsg from nitch/assets/assets file

# if -v --version flags
proc arg2*() =
  stdout.write(programVersion)  # write to stdout programVersion from nitch/assets/assets file
