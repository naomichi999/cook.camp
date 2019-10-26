class SkillNotesController < ApplicationController
	before_action :authenticate_user!
  def new
    @skill = SkillNote.new
  end

  def show
    @user = User.find(current_user.id)
    @skill = @user.skill_notes.order(:task_id)
    @pages = @skill.page(params[:page]).per(7)
  end

  def edit
    @skill = SkillNote.find(params[:id])
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
    @skill = SkillNote.find(params[:id])
    if @skill.update(skill_params)
    flash[:success] = '自己採点を編集しました。'
    redirect_to skill_note_path(current_user.id)
    else
    flash[:danger] = "自己採点は編集できませんでした。"
    redirect_to skill_note_path(current_user.id)
    end
  end
  def skill_params
    params.require(:skill_note).permit(:user_id, :task_id, :taste_evaluation, :look_evaluation, :finesse_evaluation, :important_point, :improve_point, :feeling, :cooking_image, :made_times)
  end
end
