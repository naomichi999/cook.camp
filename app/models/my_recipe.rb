class MyRecipe < ApplicationRecord
	attachment :cooking_image
	mount_uploader :cooking_video, VideoUploader
	# 動画投稿用gemであるcarrierwave用の記述
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :want_to_cooks, dependent: :destroy
	belongs_to :genre
	belongs_to :user
	belongs_to :everyone_recipe, optional: true
	# nilを許可するためにはoptional: trueと記述する
	validates  :cooking_name, :cooking_explanation, :ingredient, presence: true
end
