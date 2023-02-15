class Employee < ApplicationRecord
    has_many :services
    has_many :clients, through: :services
end
