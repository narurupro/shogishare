class CreateUserGameRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :user_game_records do |t|
      t.references :user, foreign_key: true
      t.references :game_record, foreign_key: true

      t.timestamps
    end
  end
end
