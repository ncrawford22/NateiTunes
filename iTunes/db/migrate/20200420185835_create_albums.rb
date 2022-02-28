class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :album_art

      t.timestamps
    end
  end
end
