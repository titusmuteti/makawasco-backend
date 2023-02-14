class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.integer :consumption
      t.integer :rate_applied
      t.decimal :amount
      t.decimal :balance
      t.string :bill_date
      t.string :from
      t.string :to
      t.string :due_date
      t.string :paid

      t.timestamps
    end
  end
end
