class FollowSerializer < ActiveModel::Serializer
  attributes :id, :followee_id, :follower_id, :followee, :follower
end
