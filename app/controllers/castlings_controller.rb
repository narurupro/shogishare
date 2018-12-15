class CastlingsController < ApplicationController
  def index
    @tags =Tag.all
  end

  def show
    @castling = Castling.find(params[:id])
  end
end
