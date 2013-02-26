# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.create([
    {title: "First", body: "Text of first post"},
    {title: "Second", body: "Text of second post"},
    {title: "Third", body: "Text of third post"}
])

