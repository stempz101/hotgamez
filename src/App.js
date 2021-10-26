import React from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Home from "./Home";
import AbobUs from "./AbobUs";
import "./App.css";
import * as ReactDom from "@testing-library/react";
import $ from 'jquery';


let loginhidden = true;

function logClick(){
        $(".container").not("login").addClass("blur");

    let page = window.location.href.split('/')[window.location.href.split("/").length - 1];

    if(loginhidden === false){
        document.getElementById("login").style = "visibility : hidden";
        loginhidden = true;
    }
    else{
        document.getElementById("login").style = "visibility : visible";
        loginhidden = false;
    }

    }

function loginFocusOut(){
    alert("unfocused")
}

function focused(){
    alert("focused")
}


const BasicExample = () => (



    <Router>

      <div class = "container">

          <header >
              <a href ="/">
                  <img src="https://imgur.com/zkFCRqh.png" alt="" id={"image"}/>
              </a>
              <form>
                  <input type={"text"} placeholder={"Введите название игры..."} id={"search"}/>
              </form>
              <img src = "https://i.imgur.com/N9Q6FyP.png" alt=""  id = "imagelogo"/>
              <img src = "https://i.imgur.com/vAVPQRO.png" alt=""  id = "searchlogo"/>
              <input type = "image" src = "https://i.imgur.com/t9wcmFd.png" alt=""  id = "profileicon" onClick={logClick} />

              <img src="https://i.imgur.com/comJ0Fm.png" alt="wishlist" id = "heart"/>
          </header>

          <div class = "login" id = "login">

              <div class="wrapper wrapper_blur">
                  <div class="content"></div>
              </div>
              <div class="modal"></div>


              <div id = "logButtons">
                  <span id = "vhod">Вход</span>
                  <hr id = "upperline"/>
                  <span  id = "mailtext">Электронная почта / номер телефона</span>
                  <input type={"text"} id = "mailinput"/>
                  <span  id = "passtext">Пароль</span>
                  <input type={"text"} id = "passinput"/>
                  <input type={"checkbox"} id = "rememberme"/>
                  <label htmlFor="checkbox"></label>
                  <span id = "forgotpass">Забыли пароль?</span>
                  <button id = "logingIn">Войти</button>
                  <hr id = "lineUp"/>
                  <hr id = "lineDown"/>
                  <span id = "textOr">или</span>
                  <span id = "enterUsing">Войти как пользователь</span>
                  <div id = "googleRect">
                      <img src = "https://i.imgur.com/Rvg4gaR.png" id = "googleImage"/>
                      <span id = "googleText">Google</span>
                  </div>
                  <div id = "faceRect">
                      <img src = "https://i.imgur.com/FUH2NZv.png" id = "faceImage"/>
                      <span id = "faceText">Facebook</span>
                  </div>

              </div>
          </div>



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