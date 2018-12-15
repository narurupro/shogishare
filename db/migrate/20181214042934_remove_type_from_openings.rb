class RemoveTypeFromOpenings < ActiveRecord::Migration[5.0]
  def change
    remove_column :openings, :type, :string
  end
end
