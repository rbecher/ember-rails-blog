EmberBlog.Comment = DS.Model.extend({
    post: DS.belongsTo('EmberBlog.Post'),

    content: DS.attr('string'),
    createdAt: DS.attr('date'),
    postId: DS.attr('number'),
    updatedAt: DS.attr('date'),
    userId: DS.attr('number'),

    htmlId: function() {
        return "comment-" + this.get('clientId');
    }.property('clientId')
});