EmberBlog.TaggedRoute = Ember.Route.extend({
    model: function(params) {
        Em.Logger.info( params );

        var posts = EmberBlog.Post.find({'tag_name': params.tag_name});
        return posts;
    }//,
    //controllerFor: function() {
    //    return EmberBlog.TaggedController;
    //}
});
