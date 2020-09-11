class User < ApplicationRecord
    
    has_many :meals
    
    has_secure_password

    validates :name, uniqueness: true
    validates :name, format: { without: /\s/, message: "must contain no spaces" }

end
