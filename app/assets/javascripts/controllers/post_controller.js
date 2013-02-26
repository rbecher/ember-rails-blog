EmberBlog.PostController = Ember.ObjectController.extend({
    content: null,

    // initial value
    isExpanded: false,

    expand: function() {
        this.set('isExpanded', true)
    },

    contract: function() {
        this.set('isExpanded', false)
    }
});
