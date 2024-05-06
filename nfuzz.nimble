# Package

version       = "0.1.0"
author        = "Fillipe Meireles"
description   = "nfuzz"
license       = "MIT"
srcDir        = "src"
binDir        = "build"
bin           = @["nfuzz"]



# Dependencies

requires "nim >= 2.0.4"
requires "unittest2"