React = require('react')

Body = React.createClass
  getClassName: -> 'foo'
  render: ->
    x = 'x'
    <div className={"#{x} #{@getClassName()} bar"}>
      Hello there!
    </div>

module.exports = Body
