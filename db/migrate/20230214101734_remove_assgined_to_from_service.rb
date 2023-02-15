class RemoveAssginedToFromService < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :assgined_to, :string
  end
end
