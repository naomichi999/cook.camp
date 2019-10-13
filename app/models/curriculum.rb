class Curriculum < ApplicationRecord
	belongs_to :skill_note
	validates :chapter_title, :section_title, :curriculum_content, presence: true
end
