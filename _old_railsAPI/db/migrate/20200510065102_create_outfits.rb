class CreateOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.string :top
      t.string :bottom
      t.string :outerwear
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
