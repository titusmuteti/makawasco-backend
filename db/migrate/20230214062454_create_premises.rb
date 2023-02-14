class CreatePremises < ActiveRecord::Migration[7.0]
  def change
    create_table :premises do |t|
      t.string :address
      t.string :town
      t.string :owners_firstname
      t.string :owners_lastname

      t.timestamps
    end
  end
end
