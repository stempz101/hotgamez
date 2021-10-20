import React from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Home from "./Home";
import AbobUs from "./AbobUs";
import "./App.css";



    const BasicExample = () => (


    <Router>

      <div>

          <header>
              <a href ="/">
                  <img src="https://imgur.com/zkFCRqh.png" alt="" id={"image"}/>
              </a>
              <form>
                  <input type={"text"} placeholder={"Введите название игры..."} id={"search"}/>
              </form>
              <img src = "https://i.imgur.com/N9Q6FyP.png" alt=""  id = "imagelogo"/>
              <img src = "https://i.imgur.com/vAVPQRO.png" alt=""  id = "searchlogo"/>
              <img src = "https://i.imgur.com/t9wcmFd.png" alt=""  id = "profileicon"/>

              <img src="https://i.imgur.com/comJ0Fm.png" alt="wishlist" id = "heart"/>
          </header>



        <Route exact path="/" component={Home} />
        <Route path="/about" component={AbobUs} />

          <footer>
              <h3 id = "settingsButton">Настройки</h3>
              <h3 id = "ctext">© 2021 HotGamez</h3>
              <h3 id = "languageButton">Русский</h3>
              <Link to="/about"><h3 id = "usButton">О нас</h3></Link>

      </footer>

      </div>
    </Router>

);




export default BasicExample;