class RecommendationSerializer
  include JSONAPI::Serializer
  attributes :media_id, :title, :media_type, :recommended_by_id, :status, :user_id
end