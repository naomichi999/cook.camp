class MyRecipe < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	belongs_to :genre
	belongs_to :want_to_cook
	belongs_to :user
	belongs_to :everyone_recipe
	validates :user_id, :genre_id, :cooking_name, :cooking_explanation, :ingredient, :publishment, presence: true
end
