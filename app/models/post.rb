class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments

  def has_link?
    !!self.url && self.url.length > 0
  end

  def comment_count
    self.comments.length
  end

  def unique_user_count #not very nice at all
    arr=[]
    count=0
    self.comments.each do |comment|
      if !arr.include?(comment.user)
        arr << comment.user
        count +=1
      end
    end
    return count
  end
end
