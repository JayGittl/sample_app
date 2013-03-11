module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) fot the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    real_url = "http://wac.450f.edgecastcdn.net/80450F/"+
                  "arcadesushi.com/files/2012/12/Shadow-Warrior-1.jpg"

    if user.id != 1
       image_tag(gravatar_url, alt: user.name, class: "gravatar")
    else
       image_tag(real_url, alt: user.name, size: "80x80") 
    end
  end
end
