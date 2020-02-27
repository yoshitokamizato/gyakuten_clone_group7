class SolutionsController < ApplicationController

  def create
    @solution = Solution.new(content: solution_params[:content], question_id: params[:id])
    @solution.save
    if @solution.save
      flash[:success] = "回答を追加しました。"
      redirect_to('/questions')
    else
      @question = Question.find_by(id: params[:id])
      render('questions/show')
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:content)
  end

end
