React = require 'react'
ReactFireMixin = require 'reactfire'
Firebase = require 'firebase'
{Link, RouteHandler} = require('react-router')

AppConstants = require '../constants/AppConstants'
ExampleStore = require '../stores/ExampleStore'
ExampleActions = require '../actions/ExampleActions'

Main = React.createClass
  mixins: [ReactFireMixin]

  getInitialState: ->
    items: []

  componentWillMount: ->
    ExampleStore.listen (message) ->
      console.log 'Component heard store trigger:', message
    @bindAsArray new Firebase("#{AppConstants.FIREBASE_ENDPOINT}/items/").limitToLast(25), "items"
    ExampleActions.mainLoaded 'Component has loaded'

  render: ->
    items = @state.items.map (item) =>
      <li><a href="#/items/item.url}">{item.name}</a></li>

    <div>
      <div>Main Component</div>
      <ul>
        {items}
      </ul>
      <RouteHandler />
    </div>

module.exports = Main
