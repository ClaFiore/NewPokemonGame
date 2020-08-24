class BattlesController < ApplicationController
  def show
    @battle = Battle.find(params[:id])
    render :show
  end
  
  def new
    @battle = Battle.new
  end

  def create
    @battle = Battle.new
    @battle.opponent = Pokemon.all.sample
    @battle = Battle.create(user_id: params["battle"]["user_id"], opponent_id: @battle.opponent.id)
    if @battle.valid?
      @battle.save
      redirect_to battle_path(@battle)
    else
      array_ids = Pokemon.all.map {|p| p.id}
      deleted_id = array_ids.delete(params["battle"]["user_id"].to_i)
      @battle.update(opponent_id: array_ids.sample)
      byebug
      redirect_to battle_path(@battle)
    end
  end

  def attack
    @battle = Battle.find(params[:format])
      if @battle.user_attack_first? 
         @defendant = @battle.opponent
         @attacker = @battle.user
         @battle.opponent_current_hp
      else
        @attacker = @battle.opponent
        @defendant = @battle.user
        @battle.user_current_hp
      end
      newhp = @defendant.hp
      @defendant.update_attributes(:hp => newhp)
    render :attack
  end

  def counterattack
    @battle = Battle.find(params[:format])
    if @battle.user_attack_first? 
      @defendant = @battle.user
      @attacker = @battle.opponent
      @battle.user_current_hp
   else
     @attacker = @battle.user
     @defendant = @battle.opponent
     @battle.opponent_current_hp
   end
   newhp = @defendant.hp
   @defendant.update_attributes(:hp => newhp)
    render :counterattack
  end

private
  def battle_params
    params.require(:battle).permit(:user_id, :opponent_id)
  end
end
