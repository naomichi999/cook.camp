class Admin::BasicRecipesController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  end

  def show
  end

  def genre_choice
  end
end
