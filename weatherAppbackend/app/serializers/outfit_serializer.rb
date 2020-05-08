class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :shirts, :bottoms, :outterwear
  has_one :weather
  has_one :user
end
