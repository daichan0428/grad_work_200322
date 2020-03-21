class ResearchersController < ApplicationController

  def search
    @q = Researcher.ransack(params[:q])
    @skills = Skill.all
    @themes = Theme.all
    @researchers = @q.result(distinct: true)
  end

  def result
    @q = Researcher.search(researchers_result_path)
    @skills = Skill.all
    @themes = Theme.all
    @researchers = @q.result(distinct: true)
  end

  def new
    @researcher = Researcher.new
    @skills = Skill.all
    @themes = Theme.all

  end


  def create
    @researcher = Researcher.new(researcher_params) # ストロングパラメータを引数に
    if @researcher.save
      redirect_to researchers_search_path, notice: "投稿を登録しました。"
    else
      render :new
    end
  end

  # private
  # def researcher_params # ストロングパラメータを定義する
  #   params.require(:post).permit(:caption)
  # end

  private

  def researchers_result_path
    params.require(:q).permit(:name_cont)
  end


  def researcher_params
    params.require(:researcher).permit(:name, :sex, :age, :comment, {:researcher_id => []}, {:skill_id => []}, {:theme_id => []})
  end

  # def researcher_params
  #   params.require(:researcher).permit(:name, :sex, :age, :comment, researcher_id: [], skill_id: [], theme_id: [])
  # end

end
