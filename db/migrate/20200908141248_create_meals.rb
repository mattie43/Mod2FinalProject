class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :rating
      t.text :comments
      t.belongs_to :user
      t.string :picture_url
      t.string :yelp_id

      t.timestamps
    end
  end
end
