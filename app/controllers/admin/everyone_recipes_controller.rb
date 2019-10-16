class Admin::EveryoneRecipesController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  end

  def genre_choice
  end
end
