class Section < ApplicationRecord
	belongs_to :curriculum
	has_many :section_contents, dependent: :destroy
	has_many :section_understandings, dependent: :destroy
	has_many :tasks, dependent: :destroy
	validates :curriculum_id, :section_number, :section_title, presence: true
end
