class Post < ActiveRecord::Base
  attr_accessible :body, :title
  attr_protected nil
end
