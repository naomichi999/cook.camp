class Task < ApplicationRecord
	belongs_to :section, optional: true
	has_many :skill_notes, dependent: :destroy
	has_many :task_contents, dependent: :destroy
	accepts_nested_attributes_for :task_contents, allow_destroy: true
	# 子モデルのレコードを複数挿入したい場合のgemであるcocoonを使用するための記述
	validates :section_id, :task_number, presence: true
	validates :task_title, uniqueness: true
end
