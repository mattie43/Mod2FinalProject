class YelpModel
  require "uri"
  require "net/http"
  require 'JSON'
  require 'yelp/fusion'

  def self.search(term, location)
    return {"Please specify a location" => 1} if location == ""
    client = Yelp::Fusion::Client.new(ENV['YELP_API'])
    response = client.search(location, term: term)
    response.businesses.reduce({}) { |hash, b| hash.update(b.name => b.id) }
  end

  def self.specific_search(id)
    client = Yelp::Fusion::Client.new(ENV['YELP_API'])
    response = client.business(id)    
  end

  def self.img_rating(rating)
    # byebug
    temp = rating.to_s
    if temp[-1] == "0"
      "yelp_stars/large/large_#{temp[0]}.png"
    else
      "yelp_stars/large/large_#{temp[0]}_half.png"
    end
  end
end