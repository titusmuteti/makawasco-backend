class ClientSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :email, :password, :confirm_password, :phone_number

  has_many :bills
  has_many :employees, through: :service
  belongs_to :premise
  
end
