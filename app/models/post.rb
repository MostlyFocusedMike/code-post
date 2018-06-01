class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments
  attr_accessor :commentor_count

  def has_link?
    !!self.url && self.url.length > 0
  end

  def comment_count
    self.comments.length
  end

  def unique_user_count #im dumb
    self.users.uniq.length
  end
end
