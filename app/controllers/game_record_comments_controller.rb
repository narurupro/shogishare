class GameRecordCommentsController < ApplicationController
   before_action :require_user_logged_in

  def new
    
  end

  def create
    game_record = GameRecord.find(params[:game_record_id])
    muri=game_record.game_record_comments.build(game_record_comment_params)
     if muri.save
      flash[:success] = 'メッセージを投稿しました。'
      redirect_to root_url
    else

      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
      render 'toppages/index'
    end
  end
  
  def game_record_comment_params
    params.require(:game_record_comment).permit(:content)
  end
end
