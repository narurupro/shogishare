class OpeningsController < ApplicationController
  def show
    @opening = Opening.find(params[:id])
  end

  def index
    @tags = Tag.all
    
    
  end
end
