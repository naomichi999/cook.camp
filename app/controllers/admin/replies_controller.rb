class Admin::RepliesController < ApplicationController
	before_action :authenticate_admin_user!
  def new
  end

  def create
  end
end
