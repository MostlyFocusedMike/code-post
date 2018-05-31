class CommentsController < ApplicationController
  def create 
    # the request.referer returns the page the form came from: 
    #     https:/site.com/posts/2
    # so we use regex to pull the post number to use as our id 
   post_id = request.referer.match(/.+\/(\d)/).captures[0]

   user_id = session[:user_id]
   content = params[:comment][:content]
   Comment.create(user_id: user_id, post_id: post_id, content: content)

   redirect_to post_path(post_id)
  end 

  def destroy
    comment = Comment.find(params[:id])
    post = comment.post
    comment.destroy 
    redirect_to post_path(post)
  end 
end 
