class Pokemon < ApplicationRecord
    has_many :battles, class_name: "Pokemon", foreign_key: "user_id"
    has_many :battles, class_name: "Pokemon", foreign_key: "opponent_id"
    belongs_to :trainer, optional: true
    belongs_to :type
    validates :species, uniqueness: {case_sensitive: false}
end
