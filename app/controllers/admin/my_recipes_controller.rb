class Admin::MyRecipesController < ApplicationController
  before_action :authenticate_admin_user!
  def index
  end

  def show
  end

  def edit
  end

  def update
  	# 公開フラグとマイレシピの更新
  end

  def destroy
  end
end
