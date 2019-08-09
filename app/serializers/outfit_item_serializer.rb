class OutfitItemSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :outfit_id

  has_one :item, include_nested_associations: true
  has_one :outfit, include_nested_associations: true
end
