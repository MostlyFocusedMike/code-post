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
  # now you can call this method in your views by adding this line
  helper_method :matched_user?, :logged_in?

  def nice_format(user, text)
    if matched_user?(user) 
      str = "You have"
    else 
      str = "#{user.username} has"
    end 
    num = user.num_things(text)[:num]
    if num == 1
      return str + " " + user.num_things(text)[:text] + " post"
    else 
      return str + " " + user.num_things(text)[:text] + " posts"
    end 
    
  end 

  def nice_format_posts_commented(user)
    if matched_user?(user)
      str = "You have"
    else
      str = "#{user.username} has"
    end

    return str + " " + pluralize(user.num_posts, "post")

  end

end
