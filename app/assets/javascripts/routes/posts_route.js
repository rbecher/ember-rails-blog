EmberBlog.PostsRoute = Ember.Route.extend({
    model: function() {
        return EmberBlog.Post.find();
    }
});

EmberBlog.PostsNewRoute = Ember.Route.extend({
    setupController: function(controller) {
        controller.startEditing();
    },

    // as of rc-1.0
    deactivate: function() {
        this._super();
        this.controllerFor('posts.new').stopEditing();
    }
});