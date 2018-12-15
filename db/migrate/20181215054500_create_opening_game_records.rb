class CreateOpeningGameRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :opening_game_records do |t|
      t.references :opening, foreign_key: true
      t.references :game_record, foreign_key: true

      t.timestamps
    end
  end
end
