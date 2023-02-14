class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :location

  has_many: services
  
end
