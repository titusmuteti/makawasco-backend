class PremiseSerializer < ActiveModel::Serializer
  attributes :id, :address, :town, :owners_firstname, :owners_lastname

  has_many :clients
  
end
