class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name , uniqueness: true
  validates :contact,format: { with: /\d{10}/, message: "only allows 10 digits" }
end
