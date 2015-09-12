import React from 'react'
import { Router, Route, Link } from 'react-router'


var Application = React.createClass({
  render: function() {
    return (
      <div>
        "Hello world!"
      </div>
    );
  }
});

$(document).ready(function() {
  React.render((
    <Router>
      <Route path="/" component={Application}>
      </Route>
    </Router>
  ), document.body);

});
