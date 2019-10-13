class TasksEvaluation < ApplicationRecord
	belongs_to :skill_note
	validates :skill_note_id, :task_name, :total_evaluation, :taste_evaluation, :look_evaluation, :finesse_evaluation, presence: true
end
