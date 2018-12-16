class UserGameRecordsController < ApplicationController
   before_action :require_user_logged_in
  def create
    game_record=GameRecord.find(params[:game_record_id])
    current_user.like(game_record)
     flash[:success] = '棋譜をお気に入り登録しました。'
    redirect_to game_record
  end

  def destroy
     game_record=GameRecord.find(params[:game_record_id])
    current_user.unlike(game_record)
     flash[:success] = '棋譜のお気に入りを解除しました。。'
    redirect_to game_record
  end
end
