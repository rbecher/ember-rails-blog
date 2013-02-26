EmberBlog.PostView = Ember.View.extend({
    classNames: ['post-container'],
    classNameBindings: ['isNew:new:already-read'],
    isNew: true
});
