EmberBlog.Router.map(function() {
    // default index route to / loading index template
    this.resource("posts", function() { // implicit path and template name (same as route name)
        //this.route('new');
    });
    this.resource('post', { path: '/posts/:post_id' });
    this.route("about");
});

EmberBlog.reopen({
    location: 'history'
})