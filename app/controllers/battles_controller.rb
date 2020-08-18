class BattlesController < ApplicationController
  def show
    @battle = Battle.find(params[:id])
  end
  
  def new
    @battle = Battle.new
  end

  def create
    @battle = Battle.create(battle_params)
    @battle.opponent = Pokemon.all.sample
    @battle.save
    redirect_to battle_path(@battle)
  end

private
  def battle_params
    params.require(:battle).permit(:user_id, :opponent_id)
  end
end
