class User < ApplicationRecord
    has_one_attached :image

    has_many :outfits
    has_many :weathers, through: :outfits
end
