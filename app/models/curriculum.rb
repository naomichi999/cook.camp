class Curriculum < ApplicationRecord
	belongs_to :skill_note, optional: true
	has_many :sections, dependent: :destroy
	validates :chapter_number, :chapter_title, presence: true, uniqueness: true
end
