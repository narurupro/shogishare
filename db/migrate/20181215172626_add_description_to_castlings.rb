class AddDescriptionToCastlings < ActiveRecord::Migration[5.0]
  def change
    add_column :castlings, :description, :string
  end
end
