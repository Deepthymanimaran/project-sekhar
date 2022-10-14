class Medicine < ApplicationRecord
    has_many :prescriptions, through: :prescribed_medicines
    has_many :prescribed_medicines

    validates :name, presence: true
    validates :price, numericality: true
    validates :quantity, presence: true
    validates :expiry, presence: true
end
