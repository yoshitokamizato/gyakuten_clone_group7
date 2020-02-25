class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
    @question = Question.new(title: question_params[:title], content: question_params[:content], views: 0)
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
