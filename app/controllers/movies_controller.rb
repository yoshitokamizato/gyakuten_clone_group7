class MoviesController < ApplicationController
  before_action :authenticate_user!
  #Railsの動画教材ページ（＝トップページ）へ
  def index
    @movies = Movie.page(params[:page])
  end



end
