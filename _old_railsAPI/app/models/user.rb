class User < ApplicationRecord
    validates :username, uniqueness: true, presence: true
    has_secure_password

    has_many :outfits
    has_many :seasons, through: :outfits
end
