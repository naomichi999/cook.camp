class Admin::WantToCooksController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  end

  def destroy
  end
end
