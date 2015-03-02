React = require 'react'
Main = require './components/Main'

Router = require 'react-router'
DefaultRoute = Router.DefaultRoute
Link = Router.Link
Route = Router.Route
RouteHandler = Router.RouteHandler

routes =
  <Route>
    <Route name="main" path="/" handler={Main}></Route>
  </Route>

Router.run routes, (Handler, state) ->
  params = state.params
  React.render <Handler params={params} />, document.getElementById('content')
