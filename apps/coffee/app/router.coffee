define [
  'jquery',
  'underscore',
  'backbone',
  'apps/js/app/collections/tweets',
  'apps/js/app/views/tweets'
], ($, _, Backbone, TweetsCollection, TweetsView) ->
  Router = Backbone.Router.extend
    initialize: ->

    routes: 
      "":        "default"

    default: ->
      tweetsCollection = new TweetsCollection()
      tweetsView = new TweetsView
        collection: tweetsCollection
      tweetsCollection.fetch()




      