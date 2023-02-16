class Service < ApplicationRecord
    belongs_to :premise
    belongs_to :client
    belongs_to :employee
end
