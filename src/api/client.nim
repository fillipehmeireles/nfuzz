import httpclient

type ResponseStats* = object
    status*: HttpCode
    chars*: int

proc makeRequest*(url: string): ResponseStats =
    let client: HttpClient = newHttpClient()
    try:
        var response: Response = client.get(url)
        
        var respStats =  ResponseStats(status: response.code, chars: response.body.len)
        result =  respStats
    finally:
        client.close()

proc fuzzRequest*(url: string) = 
    let responseStat = makeRequest(url)
    echo responseStat