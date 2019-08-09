class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_picture
  has_many :items, include_nested_associations: true


end
