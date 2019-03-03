class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :message, :salon_id
end
