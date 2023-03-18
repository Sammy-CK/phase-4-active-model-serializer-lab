class AuthorpostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end

  def tags
    # tags = self.Object.tags.map {|tag| tag.name}
    self.object.tags
  end

end
