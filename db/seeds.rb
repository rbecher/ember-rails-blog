# Coding: UTF-8
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

comments = Comment.create([
    {content: "Ein Kommentar.", post_id: 1},
    {content: "Noch einer.", post_id: 1},
    {content: "Und noch einer.", post_id: 1},
    {content: "Der hier gehört zum 2. Post.", post_id: 2}
])

tags = ActsAsTaggableOn::Tag.create([{name: "erster Post"}, {name: "langweilig"},
                                     {name: "kurzer Post"}, {name: "interessant"}])

taggings = ActsAsTaggableOn::Tagging.create([{tag_id: 1, taggable_id: 1, taggable_type: "Post", context: "tags"},
                                             {tag_id: 2, taggable_id: 1, taggable_type: "Post", context: "tags"},
                                             {tag_id: 2, taggable_id: 2, taggable_type: "Post", context: "tags"},
                                             {tag_id: 3, taggable_id: 2, taggable_type: "Post", context: "tags"},
                                             {tag_id: 3, taggable_id: 3, taggable_type: "Post", context: "tags"},
                                             {tag_id: 4, taggable_id: 3, taggable_type: "Post", context: "tags"}])