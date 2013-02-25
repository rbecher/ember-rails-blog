class Post < ActiveRecord::Base
  attr_accessible :body, :title
  attr_protected nil

  validates_presence_of :body, :title
end
