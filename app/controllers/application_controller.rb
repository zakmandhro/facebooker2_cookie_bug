class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include Facebooker2::Rails::Controller
  before_filter :authenticate
  
  def authenticate
    Rails.logger.debug "Authenticating #{current_facebook_client.inspect}"
  end
end
