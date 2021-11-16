import {BrowserRouter as Router, Route, Switch, Redirect} from 'react-router-dom';
import Modal from 'react-modal'

import Home from './Pages/Home/Home';
import React from 'react';

import './App.css'

function App() {
  React.useEffect(() => {
    Modal.setAppElement('body');
  }, [])
  return (
    <div className="App">
        <Router>
            <Switch>
              <Route path="/" component={Home}/>
            </Switch>
        </Router>
    </div>
  );
}

export default App;
