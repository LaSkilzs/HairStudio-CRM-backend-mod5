class ServiceTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :service_id
end
