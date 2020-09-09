class User < ApplicationRecord
    
    has_many :meals
    
    has_secure_password

    def average_rating
        if self.meals.count > 0
            total_rating = self.meals.sum {|meal| meal.rating}
            number_of_ratings = self.meals.count
            total_rating / number_of_ratings
        end
    end

    def highest_rating
        highest = self.meals.max_by {|meal| meal.rating}
        self.meals.find_by(rating: highest)
    end

end
