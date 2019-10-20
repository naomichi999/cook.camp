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
  end

  def edit
  end

  def create
    @basic_recipe = BasicRecipe.new(basic_recipe_params)
    if @basic_recipe.save
      flash[:success] = '基本のレシピを追加しました'
      redirect_to root_path
    else
      flash[:danger] = '基本のレシピの追加に失敗しました'
      redirect_to root_path
      # render :show
    end
  end

  def update
  end

  def destroy
  end

  protected
  def basic_recipe_params
    params.require(:basic_recipe).permit(:genre_id, :cooking_name, :cooking_explanation, :genre_name, :ingredient, :how_to_cook, :cooking_image)
  end
end