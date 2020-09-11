# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Meal.destroy_all

# Meal.create(name: "Plain Deep Dish Slice", rating: 1, comments: "The worst slice of pizza I've ever had!",
# picture_url: "https://media.timeout.com/images/105184705/630/472/image.jpg", yelp_id: "FqzYCiJ29FGw6KFAGrpuJQ", user_id: u1.id)
# Meal.create(name: "Terrible pizza slice", rating: 1, comments: "Heard this place was great, turned out their pizza was awful!", 
# picture_url: "https://i2.wp.com/blog.slicelife.com/wp-content/uploads/2019/04/deepdish.jpg?fit=1200%2C630&ssl=1", yelp_id: "FqzYCiJ29FGw6KFAGrpuJQ", user_id: u2.id)
