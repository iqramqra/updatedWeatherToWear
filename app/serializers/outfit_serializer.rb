class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :top, :bottom, :outerwear, :""
  has_one :weather
end
