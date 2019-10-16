class Admin::UsersController < ApplicationController
  def index
    @users = User.with_deleted
    # with_deleted = all + 論理削除されたデータ (with_deletedをつけると論理削除されたデータも表示する
    @pages = @users.page(params[:page]).per(7)
  end

  def show
    @user = User.with_deleted.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    user = User.with_deleted.find(params[:id])
    if user.destroy
      flash[:success] = 'ユーザーの論理削除が完了しました。'
      redirect_to admin_users_path
    else
      flash[:danger] = "ユーザーの論理削除に失敗しました。"
      redirect_to admin_user_path(user.id)
    end
  end

  def really_destroy
    user = User.with_deleted.find(params[:id])
    if user.really_destroy!
      flash[:success] = 'ユーザーの物理削除が完了しました。'
      redirect_to admin_users_path
    else
      flash[:danger] = "ユーザーの物理削除に失敗しました。"
      redirect_to admin_user_path(user.id)
    end
  end

  def restore
    user = User.with_deleted.find(params[:id])
    if user.restore
      flash[:success] = 'ユーザーの論理削除を取り消ました。'
      redirect_to admin_users_path
    else
      flash[:danger] = "ユーザーの論理削除の取り消しに失敗しました。"
      redirect_to admin_user_path(user.id)
    end
  end
end
