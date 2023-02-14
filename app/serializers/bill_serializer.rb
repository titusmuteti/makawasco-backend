class BillSerializer < ActiveModel::Serializer
  attributes :id, :consumption, :rate_applied, :amount, :balance, :from, :to, :bill_date, :due_date, :paid

  belongs_to :client
  
end
