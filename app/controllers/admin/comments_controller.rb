class Admin::CommentsController < ApplicationController
	before_action :authenticate_admin_user!
	def update
	end

	def destroy
	end
end
