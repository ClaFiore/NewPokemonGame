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
        if self.user.type.name == "Water" && self.opponent.type.name == "Fire" || self.opponent.type.name == "Rock" || self.opponent.type.name == "Ground"
            return true
        elsif self.type.name == "Fire" && self.opponent.type.name == "Grass" || self.opponent.type.name == "Ice" || self.opponent.type.name == "Bug" 
            return true
        elsif self.type.name == "Electric" && self.opponent.type.name == "Water" || self.opponent.type.name == "Flying"
            return true
        elsif self.type.name == "Grass" && self.opponent.type.name == "Water" || self.opponent.type.name == "Ground" ||  self.opponent.type.name == "Rock"
            return true
        elsif self.type.name == "Ice" && self.opponent.type.name == "Grass"|| self.opponent.type.name == "Flying" 
            return true
        elsif self.type.name == "Fighting" && self.opponent.type.name ==  "Rock" || self.opponent.type.name == "normal" || self.opponent.type.name == "Ice"
            return true
        elsif self.type.name == "Poison" && self.opponent.type.name == "Grass" || self.opponent.type.name == "Bug"
            return true
        elsif self.type.name == "Ground" && self.opponent.type.name == "Fire" || self.opponent.type.name == "Electric" || self.opponent.type.name == "Poison" || self.opponent.type.name == "Rock"
            return true
        elsif self.type.name == "Flying" && self.opponent.type.name == "Bug" || self.opponent.type.name == "Grass" || self.opponent.type.name == "Fighting"
            return true
        elsif self.type.name == "Psychic" && self.opponent.type.name == "Fighting" || self.opponent.type.name == "Poison"
            return true
        elsif self.type.name == "Bug" && self.opponent.type.name == "Grass" || self.opponent.type.name == "Poison" || self.opponent.type.name == "Psychic"
            return true
        elsif self.type.name == "Rock" && self.opponent.type.name == "Fire" || self.opponent.type.name == "Ice" || self.opponent.type.name == "Flying" || self.opponent.type.name == "Bug"
            return true
        else
            return false
        end     
    end

    def super_effective_attack? #return true or false
    end

    def user_final_damage
        self.user.attack -= self.opponent.defence
    end

    def opponent_final_damage
        self.opponent.attack -= self.user.defence
    end

    

    def attack
        
    end


    def counterattack
    end

end
