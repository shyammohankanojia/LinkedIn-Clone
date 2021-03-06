LynxIn.Views.ConnectionsOf = Backbone.View.extend({
  template: JST["connections/connectionsof"],

  initialize: function () {
    this.listenTo(this.model, "sync", function () {
      this.render();
      $(".loading").removeClass("show-load");
    });
  },

  render: function () {
    var connections = this.model.attributes.connections
    if (!connections) {connections = [];}
    var content = this.template({user: this.model, connections: connections});
    this.$el.html(content);
    return this;
  }

})
