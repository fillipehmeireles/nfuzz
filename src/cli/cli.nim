import parseopt
from help import writeHelp
from appVersion import writeVersion
from ../api/client import fuzzRequest


proc cli*() =
  for kind, key, value in getOpt():
    case kind
    of cmdArgument:
      discard
    of cmdLongOption, cmdShortOption:
      case key
      of "v", "version":
        writeVersion()
        quit()
      of "h", "help":
        writeHelp()
        quit()
      of "u", "url":
          fuzzRequest(value)
      else:
        echo "Unknown option: ", key
    of cmdEnd:
      discard