class ToppagesController < ApplicationController
  def index
    @game_records = GameRecord.all.order("created_at DESC").page(params[:page]).per(10)
  end
end
