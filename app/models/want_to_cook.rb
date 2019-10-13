class WantToCook < ApplicationRecord
	has_many :my_recipes
	has_many :basic_recipes
	belongs_to :user
	validates :user_id, :my_recipe_id, :basic_recipe_id, presence: true
end
