class CreateGameRecordComments < ActiveRecord::Migration[5.0]
  def change
    create_table :game_record_comments do |t|
      t.string :content
      t.references :game_record, foreign_key: true

      t.timestamps
    end
  end
end
