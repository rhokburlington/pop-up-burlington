class ApplicationController < ActionController::Base
  protect_from_forgery

  http_basic_authenticate_with :name => "popup", :password => "vh1video"

end
