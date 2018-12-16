class GameRecordsController < ApplicationController
  def show
    @game_record = GameRecord.find(params[:id])
  end
end
