class Salon < ApplicationRecord
  has_many :users
  has_many :services

  validates :name, presence: true
  validates :street_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :web, presence: true
  validates :business_certification, presence: true
  validates :tax_id, presence: true
  
  validates :email, uniqueness: true
  validates :email, format: { with:  /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: 'The format of Email is Invalid'}
 
end
