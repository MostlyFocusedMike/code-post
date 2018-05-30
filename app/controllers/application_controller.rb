class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  def logged_in?
    # this is extra explicit
    session[:user_id] ? true : false 
  end 

  def matched_user?(user)
    current_user.id == user.id if current_user
  end 
  # now you can call this method in your views by adding this line
  helper_method :matched_user?, :logged_in?

end
