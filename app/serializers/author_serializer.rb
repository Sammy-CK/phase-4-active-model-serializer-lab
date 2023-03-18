class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: AuthorprofileSerializer
  has_many :posts, serializer: AuthorpostSerializer
end
