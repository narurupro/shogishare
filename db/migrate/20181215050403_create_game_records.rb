class CreateGameRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :game_records do |t|
      t.date :played_at
      t.string :title
      t.string :image_url
      t.string :url

      t.timestamps
    end
  end
end
