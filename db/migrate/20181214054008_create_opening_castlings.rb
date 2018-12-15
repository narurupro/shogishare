class CreateOpeningCastlings < ActiveRecord::Migration[5.0]
  def change
    create_table :opening_castlings do |t|
      t.references :opening, foreign_key: true
      t.references :castling, foreign_key: true

      t.timestamps
    end
  end
end
