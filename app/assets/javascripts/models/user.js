EmberBlog.User = DS.Model.extend({
    comments: DS.hasMany('EmberBlog.Comments'),
    posts: DS.hasMany('EmberBlog.Posts'),

    name: DS.attr('string'),
    email: DS.attr('string'),
    createdAt: DS.attr('date'),
    updatedAt: DS.attr('date'),
    htmlId: function() {
        return "user-" + this.get('clientId');
    }.property('clientId')
});
