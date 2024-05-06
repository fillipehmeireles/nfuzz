import os
proc writeVersion*() =
  echo getAppFilename().extractFilename(), "0.1.0"