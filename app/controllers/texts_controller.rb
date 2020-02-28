class TextsController < ApplicationController

  def index
    @texts = Text.all.order(number: :asc)
  end

  def show
    @text = Text.find_by(id: params[:id])
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)
    @text.save
    flash[:success] = "テキスト教材を追加しました。"
    redirect_to action: :index
  end

  private

  def text_params
    params.require(:text).permit(:number, :genre, :title, :content)
  end

end
