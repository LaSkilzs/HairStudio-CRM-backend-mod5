class ServiceRequest < ApplicationRecord
  belongs_to :appointment
  belongs_to :service_type

  validates :hairstyle, presence: true
end
