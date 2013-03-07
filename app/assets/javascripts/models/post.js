EmberBlog.Post = DS.Model.extend({
    comments: DS.hasMany('EmberBlog.Comment'),

    tagList: DS.attr('raw'),
    title: DS.attr('string'),
    body: DS.attr('string'),
    createdAt: DS.attr('date'),
    updatedAt: DS.attr('date'),
    htmlId: function() {
        return "post-" + this.get('clientId');
    }.property('clientId')
});

DS.RESTAdapter.registerTransform('raw', {
    deserialize: function(serialized) {
        return serialized;
    },
    serialize: function(deserialized) {
        return deserialized;
    }
});