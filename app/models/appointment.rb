class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :stylist, class_name: :User, foreign_keys: :stylist_id
end
