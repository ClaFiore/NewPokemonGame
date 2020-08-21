class Move < ApplicationRecord
    has_one :type 
    has_many :move_sets
    has_many :pokemons, through: :move_sets
end
