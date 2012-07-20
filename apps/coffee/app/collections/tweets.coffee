define [
  'jquery',
  'underscore',
  'backbone'
], ($, _, Backbone) ->
  TweetsCollection = Backbone.Collection.extend
    url: "http://search.twitter.com/search.json?q=blue&callback=?"
    parse: (response) ->
      #console.log response
      response.results
    