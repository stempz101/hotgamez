import {BrowserRouter as Router, Route, Switch, Redirect} from 'react-router-dom';
import Modal from 'react-modal'

import Home from './Pages/Home/Home';
import AboutUs from "./Pages/About/AboutUs";
import Profile from "./Pages/Profile/Profile";
import Game from "./Pages/Game/Game"
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
                <Route exact path="/" component={Home}/>
                <Route path="/about" component={AboutUs}/>
                <Route path="/profile" component={Profile}/>
                <Route path="/game"  component={Game}/>
            </Switch>
        </Router>
    </div>
  );
}

export default App;
