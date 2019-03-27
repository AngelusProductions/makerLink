import React from 'react';
import { Route, IndexRoute, Router } from 'react-router';
import IndexPageContainer from '../containers/IndexPageContainer';

const App = (props) => {
  return (
    <div>
      <Router>
        <Route path='/makers' component={IndexPageContainer} />
      </Router>
    </div>
  );
}

export default App;
