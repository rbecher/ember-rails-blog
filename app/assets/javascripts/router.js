EmberBlog.Router.map(function() {
    // default index route to / loading index template
    this.resource("posts", function() {
       this.route("posts"); // implicit path and template name (same as route name)
    });
    this.route("about");
});