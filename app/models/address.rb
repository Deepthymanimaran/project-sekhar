class Address < ApplicationRecord
  belongs_to :user

    validates :building_name, presence: true
    validates :zipcode, numericality: true
end
