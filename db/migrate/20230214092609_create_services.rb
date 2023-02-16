class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :client_id
      t.integer :premise_id
      t.string :created_on
      t.string :resolved_on
      t.string :assgined_to
      t.string :remarks

      t.timestamps
    end
  end
end
