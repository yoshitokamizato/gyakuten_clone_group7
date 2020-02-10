class MoviesController < ApplicationController

  #Railsの動画教材ページ（＝トップページ）へ
  def index
    @movies = Movie.page(params[:page])
  end

end
