class TasksController < ApplicationController
	before_action :authenticate_user!
  def show
  	@task = Task.find(params[:id])
  end
end
