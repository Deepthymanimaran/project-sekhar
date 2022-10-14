class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :doctors, through: :appointments
   has_many :appointments
   has_many :notifications
   has_many :prescriptions

   has_one :address

   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, uniqueness: true
end
