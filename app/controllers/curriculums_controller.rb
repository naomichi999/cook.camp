class CurriculumsController < ApplicationController
	before_action :authenticate_user!
  def index
    @curriculum = Curriculum.all
    @pages = @curriculum.page(params[:page]).per(10)
  end
end
