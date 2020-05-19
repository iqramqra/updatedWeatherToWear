class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar
  has_many :outfits
end
