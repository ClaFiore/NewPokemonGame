class Battle < ApplicationRecord
    belongs_to :user, class_name: 'Pokemon'
    belongs_to :opponent, class_name: 'Pokemon'


    def user_attack_first? #return true or false
        if self.user.speed >= self.opponent.speed
            return true
        else 
            return false
        end
    end

    def user_strong_against?
        if self.user.type.name == "Water" && self.opponent.type.name == "Fire" || self.user.type.name == "Water" && self.opponent.type.name == "Rock" || self.user.type.name == "Water" && self.opponent.type.name == "Ground"
            return true
        elsif self.user.type.name == "Fire" && self.opponent.type.name == "Grass" || self.user.type.name == "Fire" && self.opponent.type.name == "Ice" || self.user.type.name == "Fire" && self.opponent.type.name == "Bug" 
            return true
        elsif self.user.type.name == "Electric" && self.opponent.type.name == "Water" || self.user.type.name == "Electric" && self.opponent.type.name == "Flying"
            return true
        elsif self.user.type.name == "Grass" && self.opponent.type.name == "Water" || self.user.type.name == "Grass" && self.opponent.type.name == "Ground" ||self.user.type.name == "Grass" && self.opponent.type.name == "Rock"
            return true
        elsif self.user.type.name == "Ice" && self.opponent.type.name == "Grass"|| self.user.type.name == "Ice" && self.opponent.type.name == "Flying" 
            return true
        elsif self.user.type.name == "Fighting" && self.opponent.type.name ==  "Rock" || self.user.type.name == "Fighting" && self.opponent.type.name == "Normal" || self.user.type.name == "Fighting" && self.opponent.type.name == "Ice"
            return true
        elsif self.user.type.name == "Poison" && self.opponent.type.name == "Grass" ||self.user.type.name == "Poison" && self.opponent.type.name == "Bug"
            return true
        elsif self.user.type.name == "Ground" && self.opponent.type.name == "Fire" || self.user.type.name == "Ground" && self.opponent.type.name == "Electric" || self.user.type.name == "Ground" && self.opponent.type.name == "Poison" || self.user.type.name == "Ground" && self.opponent.type.name == "Rock"
            return true
        elsif self.user.type.name == "Flying" && self.opponent.type.name == "Bug" || self.user.type.name == "Flying" && self.opponent.type.name == "Grass" || self.user.type.name == "Flying" && self.opponent.type.name == "Fighting"
            return true
        elsif self.user.type.name == "Psychic" && self.opponent.type.name == "Fighting" || self.user.type.name == "Psychic" && self.opponent.type.name == "Poison"
            return true
        elsif self.user.type.name == "Bug" && self.opponent.type.name == "Grass" || self.user.type.name == "Bug" && self.opponent.type.name == "Poison" || self.user.type.name == "Bug" && self.opponent.type.name == "Psychic"
            return true
        elsif self.user.type.name == "Rock" && self.opponent.type.name == "Fire" || self.user.type.name == "Rock" && self.opponent.type.name == "Ice" || self.user.type.name == "Rock" && self.opponent.type.name == "Flying" || self.opponent.type.name == "Bug"
            return true
        elsif self.user.type.name == "Normal"
            return false
        else
            return false
        end     
    end

    def opponent_strong_against?
        if self.opponent.type.name == "Water" && self.user.type.name == "Fire" || self.opponent.type.name == "Water" && self.user.type.name == "Rock" || self.opponent.type.name == "Water" && self.user.type.name == "Ground"
            return true
        elsif self.opponent.type.name == "Fire" && self.user.type.name == "Grass" || self.opponent.type.name == "Fire" && self.user.type.name == "Ice" || self.opponent.type.name == "Fire" && self.user.type.name == "Bug" 
            return true
        elsif self.opponent.type.name == "Electric" && self.user.type.name == "Water" || self.opponent.type.name == "Electric" && self.user.type.name == "Flying"
            return true
        elsif self.opponent.type.name == "Grass" && self.user.type.name == "Water" || self.opponent.type.name == "Grass" && self.user.type.name == "Ground" || self.opponent.type.name == "Grass" && self.user.type.name == "Rock"
            return true
        elsif self.opponent.type.name == "Ice" && self.user.type.name == "Grass"|| self.opponent.type.name == "Ice" && self.user.type.name == "Flying" 
            return true
        elsif self.opponent.type.name == "Fighting" && self.user.type.name ==  "Rock" || self.opponent.type.name == "Fighting" && self.user.type.name == "Normal" || self.opponent.type.name == "Fighting" && self.user.type.name == "Ice"
            return true
        elsif self.opponent.type.name == "Poison" && self.user.type.name == "Grass" || self.opponent.type.name == "Poison" && self.user.type.name == "Bug"
            return true
        elsif self.opponent.type.name == "Ground" && self.user.type.name == "Fire" || self.opponent.type.name == "Ground" && self.user.type.name == "Electric" || self.opponent.type.name == "Ground" && self.user.type.name == "Poison" || self.opponent.type.name == "Ground" && self.user.type.name == "Rock"
            return true
        elsif self.opponent.type.name == "Flying" && self.user.type.name == "Bug" || self.opponent.type.name == "Flying" && self.user.type.name == "Grass" || self.opponent.type.name == "Flying" && self.user.type.name == "Fighting"
            return true
        elsif self.opponent.type.name == "Psychic" && self.user.type.name == "Fighting" || self.opponent.type.name == "Psychic" && self.user.type.name == "Poison"
            return true
        elsif self.opponent.type.name == "Bug" && self.user.type.name == "Grass" || self.opponent.type.name == "Bug" && self.user.type.name == "Poison" || self.opponent.type.name == "Bug" && self.user.type.name == "Psychic"
            return true
        elsif self.opponent.type.name == "Rock" && self.user.type.name == "Fire" || self.opponent.type.name == "Rock" && self.user.type.name == "Ice" || self.opponent.type.name == "Rock" && self.user.type.name == "Flying" ||self.opponent.type.name == "Rock" && self.user.type.name == "Bug"
            return true
        elsif self.opponent.type.name == "Normal"
            return false
        else 
            return false
        end     
    end

    def super_effective_attack
        if user_strong_against? == true
            self.user.attack *= 2
        elsif opponent_strong_against? == true
            self.opponent.attack *= 2
        end
    end

    def user_final_damage
        super_effective_attack
        self.user.attack -= self.opponent.defence
    end

    def opponent_final_damage
        super_effective_attack
        self.opponent.attack -= self.user.defence
    end

    def user_current_hp
        self.user.hp -= opponent_final_damage
    end

    def opponent_current_hp 
        self.opponent.hp -= user_final_damage 
    end

    def attack
         if user_attack_first? == true
            opponent_current_hp
         else
            user_current_hp
         end
    end


    def counterattack
        if user_attack_first? == true 
            user_current_hp
        else 
            opponent_current_hp
        end
    end
end
