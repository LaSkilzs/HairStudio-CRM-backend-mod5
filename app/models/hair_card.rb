class HairCard < ApplicationRecord
  belongs_to :user
  belongs_to :stylist, class_name: :User, foreign_key: :stylist_id
end
