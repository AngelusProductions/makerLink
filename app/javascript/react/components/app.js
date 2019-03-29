import React from 'react'
import { Route, Router, browserHistory } from 'react-router'
import IndexPageContainer from '../containers/IndexPageContainer'
import { createBrowserHistory } from 'history'
const history = createBrowserHistory();

const App = (props) => {
  return (
    <div>
      <Router history={history}>
        <Route path='/' component={IndexPageContainer} />
      </Router>
    </div>
  )
}

export default App
