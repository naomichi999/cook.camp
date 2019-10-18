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
    @my_recipe = MyRecipe.find(params[:id])
  end

  def edit
  end

  def update
  	# 公開フラグとマイレシピの更新
  end

  def destroy
    my_recipe = MyRecipe.find(params[:id])
    if my_recipe.destroy
      flash[:success] = 'マイレシピの削除が完了しました。'
      redirect_to admin_recipe_list_path
    else
      flash[:danger] = "マイレシピの削除に失敗しました。"
      redirect_to admin_my_recipe_path
    end
  end
end
