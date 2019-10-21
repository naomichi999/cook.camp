class Admin::WantToCooksController < ApplicationController
	before_action :authenticate_admin_user!
  def show
  	@user = User.find(params[:id])
  	@want_to_cook = @user.want_to_cooks
    @pages = @want_to_cook.page(params[:page]).per(7)
  end

  def destroy
  	@want_to_cook = WantToCook.find(params[:id])
    if @want_to_cook.destroy
      flash[:success] = '作りたい料理リストから削除しました。'
      redirect_to admin_want_to_cook_path(@want_to_cook.user.id)
    else
      flash[:danger] = "作りたい料理リストから削除できませんでした。"
      redirect_to admin_want_to_cook_path(@want_to_cook.user.id)
    end
  end
end
