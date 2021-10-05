import React from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import MediaQuery from 'react-responsive'
import Home from "./Home";
import Game from "./Game";
import "./App.css";


const BasicExample = () => (
    <Router>
      <div>

          <header>
              <Link to="/">
                  <img src="https://imgur.com/zkFCRqh.png" alt="" id = "image"/>
                  {/*Лого с орлом*/}
              </Link>
              <form>
                  <input type={"text"} placeholder={"Введите название игры..."} id={"search"}/>
                  {/*Поисковик*/}
              </form>
              <img src = "https://i.imgur.com/N9Q6FyP.png" alt=""  id = "imagelogo"/> {/*Надпись HotGames*/}
              <img src = "https://i.imgur.com/vAVPQRO.png" alt=""  id = "searchlogo"/> {/*(за)Лупа*/}
              <img src = "https://i.imgur.com/fM03nMZ.png" alt=""  id = "profileicon"/> {/*Иконка профиля*/}

              <img src="https://cdn2.iconfinder.com/data/icons/media-player-ui/512/Media-Icon-25-512.png" alt="wishlist" id = "heart"/> {/*Список желаний*/}
          </header>



        <Route exact path="/" component={Home} /> {/*Эта херота отвечает за переход между страницами*/}
        <Route path="/about" component={Game} /> {/*как и эта офк*/}
          <footer>
              <h3 id = "settingsButton">Настройки</h3> {/*Текст футера*/}
              <h3 id = "ctext">© 2021 HotGamez</h3>
              <h3 id = "languageButton">Русский</h3>
              <h3 id = "usButton">О нас</h3>
          </footer>
      </div>
    </Router>
);



export default BasicExample;