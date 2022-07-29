class UserSerializer
  include JSONAPI::Serializer
  attributes :email, :name, :id
end
