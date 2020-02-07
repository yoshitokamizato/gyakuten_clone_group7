class MoviesController < ApplicationController

  #Railsの動画教材ページ（＝トップページ）へ
  def index

    if user_signed_in?

    else

      redirect_to(new_user_session_path)

    end
  end



end
