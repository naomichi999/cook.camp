class Admin::MyRecipesController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @my_recipe = MyRecipe.all
    @pages = @my_recipe.page(params[:page]).per(7)
  end

  def recipe_list
    @user = User.find(params[:id])
    @my_recipe = @user.my_recipes
    @pages = @my_recipe.page(params[:page]).per(7)
  end

  def show
  end

  def edit
  end

  def update
  	# 公開フラグとマイレシピの更新
  end

  def destroy
  end
end
