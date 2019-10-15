class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@my_recipe = MyRecipe.all
  	# ↑ここは@my_recipe = MyRecipe.find(params[:id])でいける？？
  end

  def edit
  end

  def update
  end
end
