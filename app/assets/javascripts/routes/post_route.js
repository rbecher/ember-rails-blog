EmberBlog.PostRoute = Ember.Route.extend({
    deactivate: function() {
        this._super();
        this.controllerFor('post').contract();
    }
});
