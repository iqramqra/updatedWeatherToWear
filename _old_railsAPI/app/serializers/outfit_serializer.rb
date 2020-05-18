class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :top, :bottom, :outerwear
  # belongs_to :user
end
