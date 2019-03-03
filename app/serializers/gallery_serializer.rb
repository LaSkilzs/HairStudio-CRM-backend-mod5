class GallerySerializer < ActiveModel::Serializer
  attributes :id, :image, :gallery_category_id
end
