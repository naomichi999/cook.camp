class SkillNote < ApplicationRecord
	attachment :cooking_image
	belongs_to :task, optional: true
	belongs_to :user
	validates :user_id, :task_id, :taste_evaluation,
	:look_evaluation, :finesse_evaluation, :made_times,  presence: true
end
