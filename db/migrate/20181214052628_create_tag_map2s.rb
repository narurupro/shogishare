class CreateTagMap2s < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_map2s do |t|
      t.references :castling, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
      
      t.index [:castling_id, :tag_id], unique: true
    end
  end
end
