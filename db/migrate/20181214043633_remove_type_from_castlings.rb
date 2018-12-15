class RemoveTypeFromCastlings < ActiveRecord::Migration[5.0]
  def change
    remove_column :castlings, :type, :string
  end
end
