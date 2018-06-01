class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :commented_posts, :through => :comments, :source => :post
  has_secure_password
  validates :username, :email, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  validates_confirmation_of :password

  def num_posts 
    self.posts.count > 0 ? "written #{self.posts.count}" : "not written any"
  end 

  def num_commented_posts
    self.commented_posts.count > 0 ? "commented on #{self.commented_posts.count}" : "not commented on any" 
  end 
  
  # written or commented on are the only option
  def num_things(written_or_commented_on)
    if written_or_commented_on == "written"
      text = written_or_commented_on.strip
      things = self.posts.count
    else 
      text = written_or_commented_on.strip
      things = self.commented_posts.count
    end 

    text = things > 0 ? "#{text} #{things}" : "not #{text} any"
    num = things 
    return {text: text, num: num}
  end 


end
