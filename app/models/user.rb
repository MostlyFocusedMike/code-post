class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :commented_posts, :through => :comments, :source => :post
  has_secure_password
  validates :username, :email, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, presence: true, email: true
  validates_confirmation_of :password

  def num_posts 
    self.posts.count > 0 ? "written #{self.posts.count}" : "not written any"
  end 

  def num_commented_posts
    self.commented_posts.count > 0 ? "commented on #{self.commented_posts.count}" : "not commented on any" 
  end 
  
  # written or commented on are the only option
  def num_things(write_or_comment)
    return write_or_comment == "written" ? self.posts.count : self.commented_posts.uniq.count
  end 

  def num_things_words(w_o_c)
    things_count = num_things(w_o_c)
    return things_count > 0 ? "#{w_o_c} #{things_count}" : "not #{w_o_c} any"
  end 



end
