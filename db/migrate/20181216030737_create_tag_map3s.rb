class CreateTagMap3s < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_map3s do |t|
      t.references :tag, foreign_key: true
      t.references :game_record, foreign_key: true

      t.timestamps
    end
  end
end
