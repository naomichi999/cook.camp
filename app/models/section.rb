class Section < ApplicationRecord
	belongs_to :curriculum, optional: true
	has_many :section_contents, dependent: :destroy
	accepts_nested_attributes_for :section_contents, allow_destroy: true
	# 子モデルのレコードを複数挿入したい場合のgemであるcocoonを使用するための記述
	has_many :section_understandings, dependent: :destroy
	has_many :tasks, dependent: :destroy
	validates :curriculum_id, :section_number, :section_title, presence: true
	validates :section_number, uniqueness: true
end
