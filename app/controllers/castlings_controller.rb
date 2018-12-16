class CastlingsController < ApplicationController
  def index
    @tags =Tag.all
  end

  def show
    @castling = Castling.find(params[:id])
    @game_records = @castling.relational_game_records
  end
end
