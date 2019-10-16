class Admin::UsersController < ApplicationController
  def index
    @users = User.with_deleted
    # with_deleted = all + 論理削除されたデータ (with_deletedをつけると論理削除されたデータも表示する
    @pages = @users.page(params[:page]).per(7)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def really_destroy!
  end

  def restore
  end
end
