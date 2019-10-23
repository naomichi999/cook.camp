class Admin::TasksController < ApplicationController
	before_action :authenticate_admin_user!
  def new
    @task = Task.new
    @task.task_contents.build
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = '新しい課題を追加しました。'
      redirect_to admin_curriculums_path
    else
      flash[:danger] = '新しい課題は追加できませんでした。'
      redirect_to new_admin_task_path
      # render :show
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
    flash[:success] = '課題の情報を編集しました。'
    redirect_to admin_curriculums_path
    else
    flash[:danger] = "課題の情報は編集できませんでした。"
    redirect_to edit_admin_task_path(@task.id)
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:success] = '課題を削除しました。'
      redirect_to admin_curriculums_path
    else
      flash[:danger] = "課題の削除に失敗しました。"
      redirect_to admin_curriculums_path
    end
  end
  def task_params
    params.require(:task).permit(:section_id, :task_number, :task_title, task_contents_attributes: [:id, :task_image, :task_text, :_destroy])
  end
end
