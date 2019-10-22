class Task < ApplicationRecord
	belongs_to :section
	has_many :skill_notes, dependent: :destroy
	has_many :task_contents, dependent: :destroy
	validates :section_id, :task_number, :task_title, presence: true, uniqueness: true
end
