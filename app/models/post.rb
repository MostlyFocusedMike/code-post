class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments

  def has_link?
    !!self.url && self.url.length > 0 
  end
end
