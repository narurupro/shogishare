class OpeningsController < ApplicationController
   before_action :require_user_logged_in
  def show
    @opening = Opening.find(params[:id])
    @game_records = @opening.relational_game_records
  end

  def index
    @tags = Tag.all
    
    
  end
end
