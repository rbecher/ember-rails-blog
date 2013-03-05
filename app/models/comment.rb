class Comment < ActiveRecord::Base
  attr_accessible :content, :post_id, :user_id

  validates_presence_of :content
  validates_presence_of :post_id
end
