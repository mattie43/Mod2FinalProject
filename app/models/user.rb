class User < ApplicationRecord
    
    has_many :meals
    
    has_secure_password

    validates :name, uniqueness: true
    validates :name, format: { without: /\s/, message: "must contain no spaces" }

    def restaurants_visited
      arr = []
      self.meals.count.times do |num|
        arr << self.meals[num].yelp_id
      end
      arr.uniq
      # byebug
    end

end
