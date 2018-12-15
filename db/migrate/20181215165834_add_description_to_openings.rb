class AddDescriptionToOpenings < ActiveRecord::Migration[5.0]
  def change
    add_column :openings, :description, :string
  end
end
