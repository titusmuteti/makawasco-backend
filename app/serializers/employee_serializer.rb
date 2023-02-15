class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :location

  has_many :services
  has_many :clients, through: :services
  
end
