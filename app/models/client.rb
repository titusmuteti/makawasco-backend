class Client < ApplicationRecord
    has_secure_password

    has_many :services
    has_many :bills
    has_many :employees, through: :services
    belongs_to :premise

    validates :firstname, presence: true
    # validates :lastname, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
end
