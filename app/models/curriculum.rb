class Curriculum < ApplicationRecord
	attachment :curriculum_image
	belongs_to :skill_note
	validates :chapter_title, :section_title, :curriculum_content, presence: true
end
