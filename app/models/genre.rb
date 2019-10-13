class Genre < ApplicationRecord
	has_many :basic_recipes
	has_many :everyone_recipes
	has_many :my_recipes
	validates :genre_name, presence: true

end
