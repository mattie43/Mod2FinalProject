class Yelp
  require "uri"
  require "net/http"

  url = URI("https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972")

  https = Net::HTTP.new(url.host, url.port);
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["Authorization"] = "Bearer xWzmhLOUKKrOAcWcP0_S3Ncn1GkPnd_sLZMIQVriGo9HFsCttBjfhnmguqDqOXEX-yOapQ-e8ngiqeU8ejtvkpMu_ysCIVsv1rlQhB50OAUG2Xucj1KSToGkP9ZSX3Yx"

  response = https.request(request)
  puts response.read_body
end