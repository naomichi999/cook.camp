class TaskContent < ApplicationRecord
	attachment :task_image
	belongs_to :task
	validates :task_id,:task_text, presence: true
end
