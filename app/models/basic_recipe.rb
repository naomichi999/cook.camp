class BasicRecipe < ApplicationRecord
	attachment :cooking_image
	has_many :want_to_cooks, dependent: :destroy
	belongs_to :genre
	validates :cooking_name, :cooking_explanation, :ingredient, :how_to_cook, presence: true
end
