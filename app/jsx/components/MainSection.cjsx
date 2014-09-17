React = require('react')
Body = require('./Body')

MainSection = React.createClass
  render: ->
    <div>
      <h1>Example of React with coffee-reactify and browserify</h1>
      <Body />
    </div>

module.exports = MainSection
