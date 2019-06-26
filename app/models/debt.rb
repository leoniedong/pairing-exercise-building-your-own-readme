class Debt < ApplicationRecord
    belongs_to :lannister
    validates_presence_of :name, :amount
end
