class SectionsController < ApplicationController
  before_action :authenticate_user!
  def show
  	@section = Section.find(params[:id])
  	@rate = SectionUnderstanding.new
  end

    protected
  def section_params
    params.require(:section).permit(section_understandings_attributes: [:id, :user_id, :section_id, :understanding])
  end
end
