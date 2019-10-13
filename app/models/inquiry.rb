class Inquiry < ApplicationRecord
	has_one :reply, dependent: :destroy
	validates :inquirer_name, :email,:inquiry_title,:inquiry_content, presence: true
end
