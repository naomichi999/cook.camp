class UsersController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@my_recipe = MyRecipe.all
  	# ↑ここは@my_recipe = MyRecipe.find(params[:id])でいける？？
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	 if @user.update(user_params)
       flash[:success] = 'ユーザー情報を編集しました。'
  	   redirect_to user_path
     else
       flash[:danger] = "ユーザー情報の編集に失敗しました。"
       redirect_to edit_user_path
    end
  end
    protected
    def user_params
      params.require(:user).permit(:sei_kanji, :mei_kanji, :sei_kana, :mei_kana, :nickname, :introduction, :profile_image, :email)
    end
end
