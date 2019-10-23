class Admin::TasksController < ApplicationController
	before_action :authenticate_admin_user!
  def new
    @task = Task.new
    @task.task_contents.build
  end

  def show
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = '新しい節を追加しました。'
      redirect_to admin_curriculums_path
    else
      flash[:danger] = '新しい節は追加できませんでした。'
      redirect_to new_admin_task_path
      # render :show
    end
  end

  def update
  end

  def destroy
  end
  def task_params
    params.require(:task).permit(:section_id, :task_number, :task_title, task_contents_attributes: [:id, :task_image, :task_text, :_destroy])
  end
end
