class SkillNote < ApplicationRecord
	belongs_to :task
	belongs_to :user
	validates :user_id, :task_id, :task_name, :total_evaluation, :taste_evaluation,
	:look_evaluation, :finesse_evaluation, presence: true
end
