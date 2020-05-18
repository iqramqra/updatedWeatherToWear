class OutfitsController < ApplicationController
    before_action :authorized, only: [:create]

    def index
        @outfits = Outfit.all
        render json: @outfits
    end

    def show 

    end

    def create
        @new_outfit = Outfit.create(user: @user)
        # params[:]
        render json: @new_outfit
    end

    def update

    end

    def delete

    end
end
