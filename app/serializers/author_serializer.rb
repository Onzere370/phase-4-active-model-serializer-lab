class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile, :posts
  def profile 
    {
      username: object.profile.username,
      email: object.profile.email,
      bio: object.profile.bio,
      avatar_url: object.profile.avatar_url
    }
  end
end
