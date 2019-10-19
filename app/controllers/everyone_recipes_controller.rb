class EveryoneRecipesController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def meat
  	@everyone = MyRecipe.where('genre_id = ? and publishment = ?', 1, true)
  	@pages = @everyone.page(params[:page]).per(7)
  end

  def fish
  	@everyone = MyRecipe.where('genre_id = ? and publishment = ?', 2, true)
  	@pages = @everyone.page(params[:page]).per(7)
  end

  def vegetable
  	@everyone = MyRecipe.where('genre_id = ? and publishment = ?', 3, true)
  	@pages = @everyone.page(params[:page]).per(7)
  end

  def noodle
  	@everyone = MyRecipe.where('genre_id = ? and publishment = ?', 4, true)
  	@pages = @everyone.page(params[:page]).per(7)
  end

  def rice
  	@everyone = MyRecipe.where('genre_id = ? and publishment = ?', 5, true)
  	@pages = @everyone.page(params[:page]).per(7)
  end

  def soup
  	@everyone = MyRecipe.where('genre_id = ? and publishment = ?', 6, true)
  	@pages = @everyone.page(params[:page]).per(7)
  end
end
