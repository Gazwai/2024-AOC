require "uri"
require "net/http"

url = URI("https://www.noahstudio.jp/noahweb/Webs/search/1/0/1")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["accept"] = "application/json, text/javascript, */*; q=0.01"
request["accept-language"] = "en-US,en;q=0.7"
request["cache-control"] = "no-cache"
request["content-type"] = "application/x-www-form-urlencoded; charset=UTF-8"
request["cookie"] = "PHPSESSID=1dfada47a8b2e8009d49269315f965ae; AWSALB=VYUsRwFFEXCdTlh1IyTSMeis3MoGyhPeAERl0HJdGDWdjTFlEHXzyLDOo1vrkZf5RELfCj1Fu64Hhwah1ALhIEg8RH0EX3kBED9SBI7l/xVbFjLeLXKi2Hs8eaQz; AWSALBCORS=VYUsRwFFEXCdTlh1IyTSMeis3MoGyhPeAERl0HJdGDWdjTFlEHXzyLDOo1vrkZf5RELfCj1Fu64Hhwah1ALhIEg8RH0EX3kBED9SBI7l/xVbFjLeLXKi2Hs8eaQz; AWSALB=tOVL8dzsxKq6xPLX+FuIJycI0n+8FixdfJHn7BHrumn6T+P2d9d2BWTkDhy6WLbxt97XgTX5X8lBGKlhB6C/lhV6sEG/J56JNAlKF3QMKZi/h6lZ6qwgxZHXF6IN; AWSALBCORS=tOVL8dzsxKq6xPLX+FuIJycI0n+8FixdfJHn7BHrumn6T+P2d9d2BWTkDhy6WLbxt97XgTX5X8lBGKlhB6C/lhV6sEG/J56JNAlKF3QMKZi/h6lZ6qwgxZHXF6IN"
request["origin"] = "https://www.noahstudio.jp"
request["pragma"] = "no-cache"
request["priority"] = "u=1, i"
request["referer"] = "https://www.noahstudio.jp/noahweb/webs/searchresults?searchdate=2024%2F12%2F02&start_time=11%3A00&end_time=13%3A00&is_all_branch=1&b%5B%5D=76&b%5B%5D=17&b%5B%5D=112&b%5B%5D=100&b%5B%5D=18&b%5B%5D=19&b%5B%5D=77&b%5B%5D=8&b%5B%5D=6&b%5B%5D=16&b%5B%5D=4&b%5B%5D=109&b%5B%5D=79&b%5B%5D=78&b%5B%5D=110&b%5B%5D=115"
request["sec-ch-ua"] = "\"Chromium\";v=\"130\", \"Brave\";v=\"130\", \"Not?A_Brand\";v=\"99\""
request["sec-ch-ua-mobile"] = "?0"
request["sec-ch-ua-platform"] = "\"macOS\""
request["sec-fetch-dest"] = "empty"
request["sec-fetch-mode"] = "cors"
request["sec-fetch-site"] = "same-origin"
request["sec-gpc"] = "1"
request["user-agent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
request["x-requested-with"] = "XMLHttpRequest"
request.body = "https://www.noahstudio.jp/noahweb/webs/searchresults?searchdate=2024%2F12%2F02&start_time=11%3A00&end_time=13%3A00&is_all_branch=1&b%5B%5D=76&b%5B%5D=17&b%5B%5D=112&b%5B%5D=100&b%5B%5D=18&b%5B%5D=19&b%5B%5D=77&b%5B%5D=8&b%5B%5D=6&b%5B%5D=16&b%5B%5D=4&b%5B%5D=109&b%5B%5D=79&b%5B%5D=78&b%5B%5D=110&b%5B%5D=115"

response = https.request(request)
puts response.read_body
