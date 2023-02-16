class ClientSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :email, :phone_number

  has_many :services
  has_many :bills
  belongs_to :premise
  has_many :employees, through: :services
  
end
