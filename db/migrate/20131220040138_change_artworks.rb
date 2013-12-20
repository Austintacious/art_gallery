class ChangeArtworks < ActiveRecord::Migration
  def up
    add_column :artworks, :medium_id, :integer
  end

  def down
    remove_column :artworks, :medium_id
  end
end
