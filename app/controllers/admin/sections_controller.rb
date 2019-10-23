class Admin::SectionsController < ApplicationController
  before_action :authenticate_admin_user!
  def new
    @section = Section.new
    @section.section_contents.build
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
    @section = Section.find(params[:id])
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:success] = '新しい節を追加しました。'
      redirect_to admin_curriculums_path
    else
      flash[:danger] = '新しい節は追加できませんでした。'
      redirect_to new_admin_section_path
      # render :show
    end
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(section_params)
    flash[:success] = '節の情報を編集しました。'
    redirect_to admin_curriculums_path
    else
    flash[:danger] = "節の情報は編集できませんでした。"
    redirect_to edit_admin_section_path(@section.id)
    end
  end

  def destroy
    @section = Section.find(params[:id])
    if @section.destroy
      flash[:success] = '節を削除しました。'
      redirect_to admin_curriculums_path
    else
      flash[:danger] = "節の削除に失敗しました。"
      redirect_to admin_curriculums_path
    end
  end
    protected
  def section_params
    params.require(:section).permit(:curriculum_id, :section_number, :section_title, section_contents_attributes: [:id, :section_image, :section_text, :_destroy])
  end
end
