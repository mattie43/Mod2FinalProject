class Restaurant < ApplicationRecord
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