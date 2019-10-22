class SectionContent < ApplicationRecord
	attachment :section_image
	belongs_to :section, optional: true
	validates :section_text, presence: true
end
