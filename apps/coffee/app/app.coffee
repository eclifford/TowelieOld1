define [
  'jquery',
  'underscore',
  'backbone',
  'apps/js/app/router'
], ($, _, Backbone, Router) ->
  router = new Router()
  Backbone.history.start()




