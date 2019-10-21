class Reply < ApplicationRecord
	belongs_to :inquiry
	validates :inquiry_id,  :reply_content, presence: true
end
