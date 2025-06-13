class AccountSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name
end
