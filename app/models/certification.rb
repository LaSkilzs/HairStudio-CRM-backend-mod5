class Certification < ApplicationRecord
  belongs_to :stylist, class_name: :User, foreign_key: :stylist_id
  has_many :services

  validates :name, presence: true
  validates :organization, presence: true
end
