class TaskContent < ApplicationRecord
	attachment :task_image
	belongs_to :task, optional: true
	validates :task_text, presence: true
end
