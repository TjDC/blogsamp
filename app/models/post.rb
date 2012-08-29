class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, :body, :presence => true
  validates :title, :length => { :minimum => 2 }
  validates :title,   :uniqueness => true
end
