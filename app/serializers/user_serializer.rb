class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :role, :image, :profiles, :hair_personalities, :hair_cards, :appointments

  has_many :profiles
  has_many :hair_cards
  has_many :hair_personalities, through: :hair_cards
  has_many :appointments
end
