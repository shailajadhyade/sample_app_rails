module UsersHelper
  def gravatar_for(user, size: 100 )
	if user.email?
	  gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	  gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
	  image_tag(gravatar_url, alt: user.name, class: "gravatar")
	else
	  image_tag("/img/avatar_default.png", alt: user.name, class: "gravatar")
	end
  end
end
