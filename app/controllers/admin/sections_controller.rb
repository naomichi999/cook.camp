class Admin::SectionsController < ApplicationController
  before_action :authenticate_admin_user!
  def new
    @section = Section.new
    @section.section_contents.build
  end

  def show
  end

  def edit
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
  end

  def destroy
  end
    protected
  def section_params
    params.require(:section).permit(:curriculum_id, :section_number, :section_title, section_contents_attributes: [:id, :section_image, :section_text, :_destroy])
  end
end
