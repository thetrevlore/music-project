class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :album_id, null: false
      t.integer :ord, null: false
      t.boolean :bonus, default: false, null: false
      t.text :lyrics, null: false

      t.timestamps
    end
    add_index :tracks, :title
  end
end
