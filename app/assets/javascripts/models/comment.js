EmberBlog.Comment = DS.Model.extend({
    content: DS.attr('string'),
    createdAt: DS.attr('date'),
    postId: DS.attr('number'),
    updatedAt: DS.attr('date'),
    userId: DS.attr('number'),

    htmlId: function() {
        return "comment-" + this.get('clientId');
    }.property('clientId')
});