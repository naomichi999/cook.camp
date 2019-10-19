class BasicRecipe < ApplicationRecord
	attachment :cooking_image
	belongs_to :want_to_cook, optional: true
	belongs_to :genre
	validates :cooking_name, :cooking_explanation, :ingredient, :how_to_cook, presence: true
end
