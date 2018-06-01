class ApplicationController < ActionController::Base
  include ActionView::Helpers::TextHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  def logged_in?
    # this is extra explicit
    !!session[:user_id] ? true : false 
  end 

  def matched_user?(user)
    current_user.id == user.id if current_user
  end 

  def nice_format(user, text)
    str = matched_user?(user) ? "You have" : "#{user.username} has"
    if user.num_things(text) == 1
      return "#{str} #{user.num_things_words(text)} post"
    else 
      return "#{str} #{user.num_things_words(text)} posts"
    end 
  end 

  # now you can call this method in your views by adding this line
  helper_method :current_user, :matched_user?, :logged_in?
end
