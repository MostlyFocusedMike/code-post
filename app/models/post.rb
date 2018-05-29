class Post < ApplicationRecord
  belongs_to :profile
  has_many :comments
  has_many :profiles, through: :comments
end
