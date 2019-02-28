class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :set_time, :duration, :status, :service_total, :stylist_id

end
