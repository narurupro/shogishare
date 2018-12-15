class CreateOpenings < ActiveRecord::Migration[5.0]
  def change
    create_table :openings do |t|
      t.string :name
      t.string :type
      t.string :image_url

      t.timestamps
    end
  end
end
