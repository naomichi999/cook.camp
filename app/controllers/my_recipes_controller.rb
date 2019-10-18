class MyRecipesController < ApplicationController
  before_action :authenticate_user!
  def index
    @my_recipe = MyRecipe.all
    @pages = @my_recipe.page(params[:page]).per(7)
  end

  def new
    @my_recipe = MyRecipe.new
  end

  def show
    @my_recipe = MyRecipe.find(params[:id])
    @want_to_cook = WantToCook.new
  end

  def edit
  end

  def create
    @my_recipe = MyRecipe.new(my_recipe_params)
    @my_recipe.user_id = current_user.id
    if @my_recipe.save
      flash[:success] = 'マイレシピを追加しました'
      redirect_to my_recipes_path
    else
      flash[:danger] = 'マイレシピの追加に失敗しました'
      redirect_to new_my_recipe_path
    end
  end

  def update
    @my_recipe = MyRecipe.find(params[:id])
    if @my_recipe.publishment == false
      @my_recipe.update(publishment: true)
    flash[:success] = 'マイレシピを公開しました。'
    redirect_to root_path
  else
      @my_recipe.update(publishment: false)
      flash[:success] = 'マイレシピを非公開にしました。'
      redirect_to root_path
    end

  	# 公開フラグ更新とマイレシピ更新
  end

  def destroy
    my_recipe = MyRecipe.find(params[:id])
    if my_recipe.destroy
      flash[:success] = 'マイレシピの削除が完了しました。'
      redirect_to my_recipes_path
    else
      flash[:danger] = "マイレシピの削除に失敗しました。"
      redirect_to my_recipe_path
    end
  end

  protected
  def my_recipe_params
    params.require(:my_recipe).permit(:user_id, :genre_id, :cooking_name, :cooking_explanation, :genre_name, :ingredient, :how_to_cook, :cooking_image, :cooking_video, :publishment)
  end
end
