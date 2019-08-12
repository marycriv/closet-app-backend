class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id

  has_many :items, include_nested_associations: true
end
