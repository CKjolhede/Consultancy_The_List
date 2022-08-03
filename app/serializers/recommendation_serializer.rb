class RecommendationSerializer
  include JSONAPI::Serializer
  attributes :media_id, :title, :media_type, :recommended_by_id, :status, :user_id

  attribute :recommended_by_info do |object|
    @rec_user = User.find(object.recommended_by_id)
  end
end
