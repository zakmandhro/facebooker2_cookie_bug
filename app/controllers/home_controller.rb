class HomeController < ApplicationController
  def index
    @user = current_facebook_user
  end
  
  def redirect_test
    redirect_to home_index_path
  end
end
