class Client < ApplicationRecord
    has_many :sevices
    has_many :bills
    has_many :employees, through: :service
    # belongs_to :premise

    validates :firstname, presence: true
    # validates :lastname, presence: true
    validates :email, presence: true, uniqueness: true
    # validates :password, presence: true, length: { in: 6..20 }
end
