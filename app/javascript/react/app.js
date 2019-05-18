import React from 'react'
import { Route, Router, browserHistory } from 'react-router';
import { createBrowserHistory } from 'history'
const history = createBrowserHistory();

import LandingPage from './containers/LandingPage'
import Profile from './containers/Profile'

const App = props => {
  return (
      <Router history={history}>
        <Route exact path='/' component={LandingPage} />
        <Route path='/makers/:id' component={Profile} />
      </Router>
  )
}

export default App
