class SectionsController < ApplicationController
  before_action :authenticate_user!
  def show
  	@section = Section.find(params[:id])
  end
end
