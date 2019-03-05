class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :start_time, :duration, :status, :service_total, :stylist_id, :name

end
