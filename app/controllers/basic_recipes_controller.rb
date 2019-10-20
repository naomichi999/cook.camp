class BasicRecipesController < ApplicationController
	before_action :authenticate_user!
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

  def show
    @basic_recipe = BasicRecipe.find(params[:id])
    @want_to_cook = WantToCook.new
  end
end
