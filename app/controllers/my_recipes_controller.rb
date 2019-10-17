class MyRecipesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @my_recipe = MyRecipe.new
  end

  def show
  end

  def edit
  end

  def create
    @my_recipe = MyRecipe.new(my_recipe_params)
    @my_recipe.user_id = current_user.id
    if @my_recipe.save
      flash[:success] = 'マイレシピを追加しました'
      redirect_to my_recipe_path(current_user.id)
    else
      flash[:danger] = 'マイレシピの追加に失敗しました'
      redirect_to new_my_recipe_path
    end
  end

  def update
  	# 公開フラグ更新とマイレシピ更新
  end

  def destroy
  end

  protected
  def my_recipe_params
    params.require(:my_recipe).permit(:user_id, :genre_id, :cooking_name, :cooking_explanation, :genre_name, :ingredient, :how_to_cook, :cooking_image, :cooking_video, :publishment)
  end
end
