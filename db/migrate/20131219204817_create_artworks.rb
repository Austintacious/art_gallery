class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name, null: false
      t.integer :artist_id, null: false
      t.integer :sale_id
      t.date :date_created
      t.decimal :cost, null: false
      t.boolean :availability, null: false

      t.timestamps
    end
  end
end
