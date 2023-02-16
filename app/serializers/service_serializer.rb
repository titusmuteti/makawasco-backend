class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :premise_id, :created_on, :resolved_on, :remarks
  
  belongs_to :premise
  belongs_to :client
  belongs_to :employee
  
end
