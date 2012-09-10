class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, :body, :presence => true
  validates :title, :length => { :minimum => 2 }
  validates :title,   :uniqueness => true

  belongs_to :category

  has_attached_file :photo
end
