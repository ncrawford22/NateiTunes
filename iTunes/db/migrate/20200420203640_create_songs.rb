class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre
      t.float :duration
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
