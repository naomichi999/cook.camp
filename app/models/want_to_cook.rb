class WantToCook < ApplicationRecord
	belongs_to :my_recipe, optional: true
	belongs_to :basic_recipe, optional: true
	belongs_to :user
	validates :user_id, presence: true
end
