class Task < ApplicationRecord
	belongs_to :section
	has_many :skill_notes, dependent: :destroy
	has_many :task_contents, dependent: :destroy
	validates :section_id, :task_number, presence: true
	validates :task_title, uniqueness: true
end
