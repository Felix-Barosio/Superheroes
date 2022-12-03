class Power < ApplicationRecord

    has_many :hero_powers
    has_many :heros, through: :hero_powers
    
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 20 }

end
