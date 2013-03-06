EmberBlog.Post = DS.Model.extend({
    post: DS.belongsTo('EmberBlog.Post'),

    name: DS.attr('string'),
    createdAt: DS.attr('date'),
    updatedAt: DS.attr('date')
});
