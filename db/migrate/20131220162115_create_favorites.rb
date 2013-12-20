class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :customer_id, null: false
      t.integer :collection_id, null: false

      t.timestamps
    end
  end
end
