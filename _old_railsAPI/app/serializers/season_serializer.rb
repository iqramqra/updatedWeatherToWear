class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :outfits
end
