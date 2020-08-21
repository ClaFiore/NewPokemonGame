class MovesController < ApplicationController
  def index
    @moves = Moves.all
  end
  def show 
    @move = Move.find(params[:format])
  end
end
