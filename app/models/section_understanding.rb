class SectionUnderstanding < ApplicationRecord
	belongs_to :section, optional: true
	belongs_to :user, optional: true
	validates :user_id, :section_id,:understanding, presence: true
end
