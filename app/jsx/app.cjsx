React = require('react')
MainSection = require('./components/MainSection')

render = -> React.renderComponent(
  <MainSection />,
  document.getElementById('content'))

render()
