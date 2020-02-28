class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(created_at: :desc)
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save
    flash[:success] = "質問を追加しました。"
    redirect_to action: :index
  end

  def show

    @question = Question.find_by(id: params[:id])
    @solution = Solution.new

    @question.views += 1
    @question.save

  end

  private
    def question_params
      params.require(:question).permit(:title, :content)
    end

end
