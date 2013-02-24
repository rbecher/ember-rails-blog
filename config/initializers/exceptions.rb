module EmberBlog
  # When they try to do something they should be logged in for
  class NotLoggedIn < Exception; end

  # When the input is somehow bad
  class InvalidParameters < Exception; end

  # When they don't have permission to do something
  class InvalidAccess < Exception; end

  # When something they want is not found
  class NotFound < Exception; end
end