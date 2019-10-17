class MyRecipe < ApplicationRecord
	attachment :cooking_image
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	belongs_to :genre
	belongs_to :want_to_cook
	belongs_to :user
	belongs_to :everyone_recipe
	validates  :cooking_name, :cooking_explanation, :ingredient, presence: true
end
