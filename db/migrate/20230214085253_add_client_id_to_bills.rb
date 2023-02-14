class AddClientIdToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :client_id, :integer
  end
end
