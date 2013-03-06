EmberBlog.Post = DS.Model.extend({
    comments: DS.hasMany('EmberBlog.Comment'),
    tags: DS.hasMany('EmberBlog.Tag'),

    title: DS.attr('string'),
    body: DS.attr('string'),
    createdAt: DS.attr('date'),
    updatedAt: DS.attr('date'),
    htmlId: function() {
        return "post-" + this.get('clientId');
    }.property('clientId')
});