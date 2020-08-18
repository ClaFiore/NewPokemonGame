class Trainer < ApplicationRecord
    has_one :pokemon
    validates :name, uniqueness: {case_sensitive: false}
end
