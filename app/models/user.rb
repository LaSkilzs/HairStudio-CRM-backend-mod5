class User < ApplicationRecord
  has_secure_password

  belongs_to :salon
  has_many :profiles
  has_many :hair_cards
  has_many :hair_personalities, through: :hair_cards
  has_many :appointments 
  has_many :certifications
  enum role: {admin: "admin", client: "client", owner: "owner", stylist: "stylist"}
 

  validates :username, presence: true 
  validates :username, length: { minimum: 5 }
  validates :username, uniqueness: true
  validates :role, presence: true 
  
  validates :password_digest, presence: true 
  validates :password_digest, length: { minimum: 5}
  validates :password_digest, uniqueness: true
end
