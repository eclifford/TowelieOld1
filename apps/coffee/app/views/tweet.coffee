define [
  'jquery',
  'underscore',
  'backbone',
  'text!apps/coffee/app/templates/tweet.html'
], ($, _, Backbone, TweetTemplate) ->
  TweetView = Backbone.View.extend
    tagName: 'li'

    initialize: ->
      _.bindAll @, 'render'

    render: ->
      console.log 'renderItem', @model.toJSON()
      $(@el).html _.template(TweetTemplate, @model.toJSON())
      @


