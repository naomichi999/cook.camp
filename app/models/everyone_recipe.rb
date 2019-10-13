class EveryoneRecipe < ApplicationRecord
	belongs_to :genre
	has_many :my_recipes
	validates :my_recipe_id, :genre_id, presence: true
end
