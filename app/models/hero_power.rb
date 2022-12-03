class HeroPower < ApplicationRecord

    belongs_to :hero
    belongs_to :power
    
    validates :hero_id, presence: true
    validates :power_id, presence: true
    validates :strength, inclusion: { in: %w(Strong Weak Average), message: "%{value} is not a valid strength, please choose from Strong, Weak, or Average" }

end
