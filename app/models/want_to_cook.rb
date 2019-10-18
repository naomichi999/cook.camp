class WantToCook < ApplicationRecord
	has_many :my_recipes
	has_many :basic_recipes
	belongs_to :user
	validates :user_id, presence: true
end
