class Admin::InquiriesController < ApplicationController
	before_action :authenticate_admin_user!
  def index
    @inquiry = Inquiry.all
    @pages = @inquiry.page(params[:page]).per(7)
  end
end
