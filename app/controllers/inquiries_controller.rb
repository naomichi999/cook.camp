class InquiriesController < ApplicationController
  def new
  	@inquiry = Inquiry.new
  	if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      flash[:success] = 'お問い合わせありがとうございます。内容を確認次第、管理者からご連絡させていただきます。'
      if user_signed_in?
        redirect_to users_path
      else
      	redirect_to root_path
      end
    else
      flash[:danger] = '送信できませんでした。入力内容をご確認のうえ、再度お問い合わせください。'
      # ↓renderでnewページを表示させるときにユーザー情報を取得するための記述
  	  if user_signed_in?
        @user = User.find(current_user.id)
      end
      render :new
    end
  end
    protected
  def inquiry_params
    params.require(:inquiry).permit(:user_id, :inquirer_name, :email, :inquiry_title, :inquiry_content)
  end
end