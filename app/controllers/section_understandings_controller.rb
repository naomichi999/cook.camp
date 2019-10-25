class SectionUnderstandingsController < ApplicationController
	before_action :authenticate_user!
  def create
    @rate = SectionUnderstanding.new(section_understanding_params)
    if @rate.save
      flash[:success] = '理解度を評価しました。'
      redirect_to section_path(@rate.section_id)
    else
      flash[:danger] = '理解度の評価はできませんでした。'
      redirect_to section_path(@rate.section_id)
    end
  end

  def update
    @page = Section.find(params[:id])
    @rate = SectionUnderstanding.find_by(user_id: current_user.id, section_id: @page.id)
    if @rate.update(section_understanding_params)
    flash[:success] = '理解度を評価しました。'
    redirect_to section_path(@rate.section_id)
    else
    flash[:danger] = "理解度の評価はできませんでした。"
    redirect_to section_path(@rate.section_id)
    end
  end
    private
  def section_understanding_params
    params.require(:section_understanding).permit(:id, :user_id, :section_id, :understanding)
  end
end
