class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :tags

  belongs_to :author
  def tags
    # tags = self.Object.tags.map {|tag| tag.name}
    self.object.tags
  end

end
