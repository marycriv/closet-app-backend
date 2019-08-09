class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :items, include_nested_associations: true
end
