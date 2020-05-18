class AddSeasonsToOutfits < ActiveRecord::Migration[6.0]
  def change
    add_column :outfits, :season, :Belongs_to
  end
end
