class Client < ApplicationRecord
    has_many :sevices
    has_many :bills
    has_many :employees, through: :service
    belongs_to :premise
end
