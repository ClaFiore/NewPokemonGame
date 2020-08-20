class Trainer < ApplicationRecord
    has_many :pokemons
    validates :name, uniqueness: {case_sensitive: false}
    validates :pokemons, length: { minimum: 0, maximum: 6 , message: "Allowed Per Team Is Maximum 6"}
end
