import unittest2
import httpclient
from ../src/api/client import ResponseStats,makeRequest


suite "Api Client Tests":
  test "makeRequest":
    check: makeRequest("https://api.sampleapis.com/beers/ale") == ResponseStats(status: Http200, chars: 36815)