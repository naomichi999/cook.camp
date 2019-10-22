class Admin::CurriculumsController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @curriculum = Curriculum.all
    @pages = @curriculum.page(params[:page]).per(10)
  end

  def new
    @curriculum = Curriculum.new
  end

  def edit
    @curriculum = Curriculum.find(params[:id])
  end

  def update
    @curriculum = Curriculum.find(params[:id])
    if @curriculum.update(curriculum_params)
    flash[:success] = '章の情報を編集しました。'
    redirect_to admin_curriculums_path
    else
    flash[:danger] = "章の情報は編集できませんでした。"
    render :edit
    end
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)
    if @curriculum.save
      flash[:success] = '新しい章を追加しました。'
      redirect_to admin_curriculums_path
    else
      flash[:danger] = '新しい章の追加ができませんでした。'
      redirect_to new_admin_curriculum_path
      # render :show
    end
  end

  def destroy
  end
  protected
  def curriculum_params
    params.require(:curriculum).permit(:chapter_number, :chapter_title)
  end
end
