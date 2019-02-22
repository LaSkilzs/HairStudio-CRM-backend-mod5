class ServiceProduct < ApplicationRecord
  belongs_to :product
  belongs_to :ServiceType
end
