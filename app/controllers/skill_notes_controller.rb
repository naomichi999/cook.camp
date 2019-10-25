class SkillNotesController < ApplicationController
	before_action :authenticate_user!
  def new
    @skill = SkillNote.new
  end

  def show
  end

  def edit
  end

  def create
    @skill = SkillNote.new(skill_params)
    if @skill.save
      flash[:success] = '課題を自己採点しました。'
      redirect_to skill_note_path(current_user.id)
    else
      flash[:danger] = '課題を自己採点できませんでした。'
      redirect_to skill_note_path(current_user.id)
      # render :show
    end
  end

  def update
  end
  def skill_params
    params.require(:skill_note).permit(:user_id, :task_id, :taste_evaluation, :look_evaluation, :finesse_evaluation, :important_point, :improve_point, :feeling, :cooking_image, :made_times)
  end
end
