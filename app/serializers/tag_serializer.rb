class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts

  def posts
    self.object.posts
  end
end
