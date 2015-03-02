Reflux = require 'reflux'

ExampleActions = require '../actions/ExampleActions'

ExampleStore = Reflux.createStore

  init: ->
    @listenTo ExampleActions.mainLoaded, this.onMainLoaded

  onMainLoaded: (message) ->
    console.log "Store listener to action heard:", message
    @trigger "Test message from store"

module.exports = ExampleStore
