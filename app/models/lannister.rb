class Lannister < ApplicationRecord
    has_many :debts
    validates_uniqueness_of :first_name
    validates_presence_of :first_name

    def name
        "#{self.first_name}" + " Lannister"
    end
end
