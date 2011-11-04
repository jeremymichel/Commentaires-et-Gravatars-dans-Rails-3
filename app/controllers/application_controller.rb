class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'digest/md5'
  helper_method :valid_email?

  def valid_email?(email)
  	email =~ /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/
  end
end
