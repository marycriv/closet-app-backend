class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :author_id

  has_many :items, include_nested_associations: true
end
