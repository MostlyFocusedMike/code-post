class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments
  validates :title, :content, presence: true
  attr_accessor :commentor_count

  def has_link?
    !!self.url && self.url =~ /\w/
  end
  def comment_count
    self.comments.length
  end

  def unique_user_count #im dumb
    self.users.uniq.length
  end
end
