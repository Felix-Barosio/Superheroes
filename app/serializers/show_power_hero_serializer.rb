class ShowPowerHeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :heros
end
