class Admin::RepliesController < ApplicationController
	before_action :authenticate_admin_user!
  def show
  	@inquiry = Inquiry.find(params[:id])
  	@reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params)
    @inquiry = Inquiry.find(@reply.inquiry_id)
    if @reply.save
      flash[:success] = 'お問い合わせに返信しました。'
      redirect_to admin_inquiries_path
    else
      flash[:danger] = '送信できませんでした。入力内容をご確認のうえ、再度送信してください。'
      redirect_to admin_reply_path(@reply.inquiry_id)
    end
  end
      protected
  def reply_params
    params.require(:reply).permit(:inquiry_id, :reply_title, :reply_content)
  end
end
