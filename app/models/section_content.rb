class SectionContent < ApplicationRecord
	attachment :section_image
	belongs_to :section
	validates :section_id,:section_text, presence: true
end
