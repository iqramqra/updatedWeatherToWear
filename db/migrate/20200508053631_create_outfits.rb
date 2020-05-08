class CreateOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.belongs_to :weather, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :shirts
      t.string :bottoms
      t.string :outterwear

      t.timestamps
    end
  end
end
