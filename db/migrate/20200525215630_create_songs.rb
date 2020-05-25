class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :belongs_to
      t.string :artist
      t.string :belongs_to
      t.string :billboard

      t.timestamps
    end
  end
end
