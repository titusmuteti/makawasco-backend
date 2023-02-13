class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :email
      t.string :password_digest
      t.string :confirm_password
      t.integer :phone_number

      t.timestamps
    end
  end
end
