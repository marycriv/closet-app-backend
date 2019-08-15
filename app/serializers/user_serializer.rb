class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_picture, :bio
  has_many :items, include_nested_associations: true


end
