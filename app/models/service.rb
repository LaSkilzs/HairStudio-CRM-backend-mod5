class Service < ApplicationRecord
  belongs_to :salon
  belongs_to :certification
  has_many :service_types

  validates :name, presence: true
end
