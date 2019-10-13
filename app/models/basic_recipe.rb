class BasicRecipe < ApplicationRecord
	# attachment :cooking_image
	# これいるん？
	belongs_to :want_to_cook
	belongs_to :genre
	validates :cooking_name, :cooking_explanation, :ingredient, :how_to_cook, presence: true
end
