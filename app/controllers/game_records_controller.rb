class GameRecordsController < ApplicationController
   before_action :require_user_logged_in
  def show
    @game_record = GameRecord.find(params[:id])
    @game_record_comment = @game_record.game_record_comments.build
    @game_record_comments = @game_record.game_record_comments.order("created_at DESC").page(params[:page]).per(5)
  end
end
