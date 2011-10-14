require 'digest/md5'
module MembersHelper
  def gravatar(email)
    hash = Digest::MD5.hexdigest(email.downcase)
    "http://www.gravatar.com/avatar/#{hash}"
  end

end
