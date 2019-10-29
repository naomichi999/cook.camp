class SkillNotesController < ApplicationController
	before_action :authenticate_user!
  def new
    @skill = SkillNote.new
  end

  def show
    @user = User.find(current_user.id)
    @skill = @user.skill_notes.order(:task_id)
    @pages = @skill.page(params[:page]).per(7)

    # スキル管理ノートの味・盛り付け・手際の評価の平均
    taste = SkillNote.where(user_id: current_user.id).average(:taste_evaluation)
    look = SkillNote.where(user_id: current_user.id).average(:look_evaluation)
    finesse = SkillNote.where(user_id: current_user.id).average(:finesse_evaluation)
    # カリキュラムの理解度の平均（カリキュラムの理解度の合計÷節の数×５）をグラフに反映する
    section_qty = Section.count
    section_stars = section_qty*5
    understanding_sum = SectionUnderstanding.where(user_id: current_user).sum(:understanding)
    understanding_bit = understanding_sum/section_stars
    understanding_avg = understanding_bit*5
    # 課題の達成度(達成した数÷カリキュラムの数×５)をグラフに反映する
    task_qty = Task.count
    achievement_qty = SkillNote.where(user_id: current_user.id).count
    achievement_bit = achievement_qty.to_f/task_qty.to_f #sumは少数型で出力されるが、countは整数型で出力されるため、少数型に変換する必要がある
    achievement_avg = achievement_bit*5
    # レーダーチャートの配列
    gon.bardata = [taste, finesse, achievement_avg, understanding_avg, look]
    gon.nickname = current_user.nickname
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
      redirect_to new_skill_note_path
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
    redirect_to edit_skill_note_path(current_user.id)
    end
  end

  def destroy
    @skill = SkillNote.find(params[:id])
    if @skill.destroy
      flash[:success] = '自己採点を削除しました。'
      redirect_to skill_note_path(current_user.id)
    else
      flash[:danger] = "自己採点の削除に失敗しました。"
      redirect_to skill_note_path(current_user.id)
    end
  end
  def skill_params
    params.require(:skill_note).permit(:user_id, :task_id, :taste_evaluation, :look_evaluation, :finesse_evaluation, :important_point, :improve_point, :feeling, :cooking_image)
  end
end
