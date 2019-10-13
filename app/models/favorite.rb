class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :my_recipes
	validates :user_id, :my_recipe_id, presence: true
end
