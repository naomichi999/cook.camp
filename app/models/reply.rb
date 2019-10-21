class Reply < ApplicationRecord
	belongs_to :inquiry
	validates :inquiry_id, :reply_title, :reply_content, presence: true
end
