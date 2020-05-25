class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :has_many
      t.string :songs

      t.timestamps
    end
  end
end
