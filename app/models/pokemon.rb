class Pokemon < ApplicationRecord
    has_many :battles, class_name: "Pokemon", foreign_key: "user_id"
    has_many :battles, class_name: "Pokemon", foreign_key: "opponent_id"
    has_many :move_sets
    has_many :moves,  through: :move_sets
    belongs_to :trainer, optional: true

    validates :species, uniqueness: {case_sensitive: false}

    def faint?
        if self.hp <= 0 
            self.hp = 0
            return true
         else 
            return false
         end
    end
    def self.reset_health(pokemon) 
        
        pokemon.hp = rand(1..10)
        pokemon.save
    end
end
