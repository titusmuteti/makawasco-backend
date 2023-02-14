class AddPremiseIdToClient < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :premise_id, :integer
  end
end
