class CreateCastlings < ActiveRecord::Migration[5.0]
  def change
    create_table :castlings do |t|
      t.string :name
      t.string :type
      t.string :image_url

      t.timestamps
    end
  end
end
