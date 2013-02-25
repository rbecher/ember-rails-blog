require 'rubygems'
require 'jsonpath'

json = <<-HERE_DOC
{
  "posts": [
    {
      "id": 1,
      "title": "One",
      "body": "Text 1",
      "created_at": "2013-02-25T02:37:32+01:00",
      "updated_at": "2013-02-25T02:37:32+01:00"
    },
    {
      "id": 2,
      "title": "Two",
      "body": "Text 2",
      "created_at": "2013-02-25T02:37:32+01:00",
      "updated_at": "2013-02-25T02:37:32+01:00"
    }
  ],
  "meta": {
    "total": 2
  }
}
HERE_DOC

paths = %w{
  $.posts[*]
  $..posts[0].title
  $.meta.total
}

paths.each_with_index do |path, nr|
  jpath = JsonPath.new(path)
  puts "#{nr} - #{path}:\n"
  puts jpath.on(json)
  puts "--\n"
end
