class CreateTagMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_maps do |t|
      t.references :opening, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
      
      t.index [:opening_id, :tag_id]
    end
  end
end
