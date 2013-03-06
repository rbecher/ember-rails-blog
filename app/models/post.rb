class Post < ActiveRecord::Base
  acts_as_ordered_taggable
  attr_accessible :body, :title
  attr_protected nil

  has_many :comments

  validates_presence_of :body
  validates_presence_of :title
end
