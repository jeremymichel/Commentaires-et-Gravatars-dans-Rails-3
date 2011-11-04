module CommentsHelper
	def gravatar(email, default_img)
		hash = Digest::MD5.hexdigest(email)
		img_src = "http://www.gravatar.com/avatar/#{hash}?d=#{CGI::escape(default_img)}"
		return img_src
	end
end
