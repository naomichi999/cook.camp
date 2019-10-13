class SkillNote < ApplicationRecord
	has_many :curriculums
	has_many :tasks_evaluations, dependent: :destroy
	validates :user_id, :tasks_evaluation, presence: true
end
