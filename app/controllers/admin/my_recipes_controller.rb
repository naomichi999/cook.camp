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
    @my_recipe = MyRecipe.find(params[:id])
  end

  def update
    # 公開フラグの更新とマイレシピ更新
    # 前ページのURLによって処理を変更している
    @my_recipe = MyRecipe.find(params[:id])
    # refererは前ページのURLを取得するメソッド
    if request.referer&.include?(edit_admin_my_recipe_path)
      if @my_recipe.update(my_recipe_params)
        flash[:success] = 'マイレシピを更新しました。'
        redirect_to admin_my_recipe_path
      else
        flash[:danger] = "マイレシピの更新ができませんでした。"
        redirect_to edit_admin_my_recipe_path
      end
    else
      if @my_recipe.publishment == false
        @my_recipe.update(publishment: true)
        flash[:success] = 'マイレシピを公開しました。'
        redirect_to admin_my_recipe_path(@my_recipe)
      else
        @my_recipe.update(publishment: false)
        flash[:success] = 'マイレシピを非公開にしました。'
        redirect_to admin_my_recipe_path(@my_recipe)
      end
    end
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

  protected
  def my_recipe_params
    params.require(:my_recipe).permit(:user_id, :genre_id, :cooking_name, :cooking_explanation, :genre_name, :ingredient, :how_to_cook, :cooking_image, :cooking_video, :publishment)
  end
end
