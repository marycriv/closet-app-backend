class ItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image, :classification, :brand
  
  has_many :outfits, include_nested_associations: true
end
