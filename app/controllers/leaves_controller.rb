class LeavesController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def destroy
  	@user = User.find(params[:id])
    if @user.destroy
        flash[:success] = '退会手続きが完了いたしました。またのご利用をお待ちしております。'
        redirect_to root_path
    else
    	flash[:success] = '退会手続きが出来ませんでした。再度、退会ボタンを押す、もしくは管理者へお問い合わせください。'
    	redirect_to leafe_path
    end
  end
end
