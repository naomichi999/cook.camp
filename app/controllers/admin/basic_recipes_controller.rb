class Admin::BasicRecipesController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  end

  def meat
  	@basic = BasicRecipe.where(genre_id:1)
  	@pages = @basic.page(params[:page]).per(7)
  end

  def fish
  	@basic = BasicRecipe.where(genre_id:2)
  	@pages = @basic.page(params[:page]).per(7)
  end

  def vegetable
  	@basic = BasicRecipe.where(genre_id:3)
  	@pages = @basic.page(params[:page]).per(7)
  end

  def noodle
  	@basic = BasicRecipe.where(genre_id:4)
  	@pages = @basic.page(params[:page]).per(7)
  end

  def rice
  	@basic = BasicRecipe.where(genre_id:5)
  	@pages = @basic.page(params[:page]).per(7)
  end

  def soup
  	@basic = BasicRecipe.where(genre_id:6)
  	@pages = @basic.page(params[:page]).per(7)
  end

  def new
  	@basic_recipe = BasicRecipe.new
  end

  def show
  	@basic_recipe = BasicRecipe.find(params[:id])
  end

  def edit
  	@basic_recipe = BasicRecipe.find(params[:id])
  end

  def create
    @basic_recipe = BasicRecipe.new(basic_recipe_params)
    if @basic_recipe.save
      flash[:success] = '基本のレシピを追加しました'
      redirect_to admin_basic_recipe_path(@basic_recipe.id)
    else
      flash[:danger] = '基本のレシピの追加に失敗しました'
      redirect_to new_admin_basic_recipe_path
      # render :show
    end
  end

  def update
    @basic_recipe = BasicRecipe.find(params[:id])
	if @basic_recipe.update(basic_recipe_params)
	flash[:success] = '基本のレシピを更新しました。'
	render :show
	else
	flash[:danger] = "基本のレシピの更新ができませんでした。"
	render :show
end
  end

  def destroy
    @basic_recipe = BasicRecipe.find(params[:id])
    if @basic_recipe.destroy
      flash[:success] = 'マイレシピの削除が完了しました。'
      redirect_to admin_basic_recipes_path
    else
      flash[:danger] = "マイレシピの削除に失敗しました。"
      redirect_to admin_basic_recipe_path
    end
  end

  protected
  def basic_recipe_params
    params.require(:basic_recipe).permit(:genre_id, :cooking_name, :cooking_explanation, :genre_name, :ingredient, :how_to_cook, :cooking_image)
  end
end