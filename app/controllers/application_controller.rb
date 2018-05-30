class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  def matched_user?(user)
    current_user.id == user.id
  end 
  # now you can call this method in your views by adding this line
  helper_method :current_user

end
