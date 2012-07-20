define [
  'jquery',
  'underscore',
  'backbone',
  'apps/js/app/views/tweet'
], ($, _, Backbone, TweetView) ->
  TweetsView = Backbone.View.extend
    tagName: 'ul'
    initialize: ->
      console.log 'init tweets view'
      _.bindAll @, 'render', 'renderItem'
      @collection.bind 'reset', @render

    render: ->
      _.each @collection.models, (item) =>
        @renderItem item
      $('div#tweets').html $(@el)
      @

    renderItem: (item) ->
      tweetView = new TweetView
        model: item
      $(@el).append tweetView.render().el




