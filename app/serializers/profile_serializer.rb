class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :birthday, :email
end
