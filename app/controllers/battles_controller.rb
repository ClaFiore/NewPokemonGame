class BattlesController < ApplicationController
  def show
    @battle = Battle.find(params[:id])
    render :show
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

  def attack
    @battle = Battle.find(params[:format])
      if @battle.user_attack_first? == true
         @defendant = @battle.opponent
         @attacker = @battle.user
         @battle.opponent_current_hp
      else
        @attacker = @battle.opponent
        @defendant = @battle.user
        @battle.user_current_hp
      end
    render :attack
  end

  def counterattack
    @battle = Battle.find(params[:format])
    @battle.counterattack
    render :counterattack
  end

private
  def battle_params
    params.require(:battle).permit(:user_id, :opponent_id)
  end
end
