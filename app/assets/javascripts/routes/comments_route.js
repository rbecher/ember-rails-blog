EmberBlog.CommentRoute = Em.Route.extend({
    model: function() {
        Em.Logger.info("In PostComments Route");
        var post = this.modelFor('post');
        return EmberBlog.Comment.find(post.get('id'));
    }
});
