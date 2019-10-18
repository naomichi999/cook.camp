class WantToCooksController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def create
	@want_to_cook = WantToCook.new(want_to_cook_params)
    @want_to_cook.user_id = current_user.id
    if @want_to_cook.save
      flash[:success] = '作りたい料理リストへ追加しました。'
      redirect_to root_path
    else
      flash[:danger] = '作りたい料理リストへ追加できませんでした。'
      redirect_to root_path
   end
  end

  def destroy
  end
end

  private
  def want_to_cook_params
    params.require(:want_to_cook).permit(:user_id, :my_recipe_id, :basic_recipe_id)
  end
