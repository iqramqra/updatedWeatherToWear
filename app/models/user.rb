class User < ApplicationRecord
    validates :username, uniqueness: true, presence: true
    has_secure_password
    
    has_one_attached :image

    has_many :outfits
    has_many :weathers, through: :outfits
end
