class Type < ApplicationRecord
    belongs_to :move, optional: true
end
