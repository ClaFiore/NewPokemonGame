class Battle < ApplicationRecord
    belongs_to :user, class_name: 'Pokemon'
    belongs_to :opponent, class_name: 'Pokemon'
end
