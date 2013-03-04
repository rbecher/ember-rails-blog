EmberBlog = Ember.Application.create({
    LOG_TRANSITIONS: true,
    LOG_BINDINGS : true
});
//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require ./router
//= require_tree ./routes
//= require_self
