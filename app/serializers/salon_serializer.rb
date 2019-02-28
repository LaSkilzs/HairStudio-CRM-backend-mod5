class SalonSerializer < ActiveModel::Serializer
  attributes :id,:name, :street_1, :city, :state, :phone, :email, :web,:image, :clients, :stylists
end
