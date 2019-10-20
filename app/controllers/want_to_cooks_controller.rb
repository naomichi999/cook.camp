class WantToCooksController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def show
    @want_to_cook = current_user.want_to_cooks
    @pages = @want_to_cook.page(params[:page]).per(7)
  end

  def create
	@want_to_cook = WantToCook.new(want_to_cook_params)
    @want_to_cook.user_id = current_user.id
    if @want_to_cook.save
      flash[:success] = '作りたい料理リストへ追加しました。'
      if request.referer&.include?("/localhost:3000/basic_recipes/")
       redirect_to basic_recipe_path(@want_to_cook.basic_recipe.id)
      else
       redirect_to my_recipe_path(@want_to_cook.my_recipe.id)
      end
    else
      flash[:danger] = '作りたい料理リストへ追加できませんでした。'
      if request.referer&.include?("/localhost:3000/basic_recipes/")
       redirect_to basic_recipe_path(@want_to_cook.basic_recipe.id)
      else
       redirect_to my_recipe_path(@want_to_cook.my_recipe.id)
      end
   end
  end

  def destroy
    @want_to_cook = WantToCook.find(params[:id])
    if @want_to_cook.destroy
      flash[:success] = '作りたい料理リストから削除しました。'
      redirect_to want_to_cook_path(current_user.id)
    else
      flash[:danger] = "作りたい料理リストから削除できませんでした。"
      redirect_to want_to_cook_path(current_user.id)
    end
  end
end

  private
  def want_to_cook_params
    params.require(:want_to_cook).permit(:user_id, :my_recipe_id, :basic_recipe_id)
  end
