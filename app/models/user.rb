class User < ApplicationRecord
    has_many :outfits
    has_many :weathers through: :outfits
end
