class SectionUnderstanding < ApplicationRecord
	belongs_to :section
	belongs_to :user
	validates :user_id, :section_id,:understanding, presence: true
end
