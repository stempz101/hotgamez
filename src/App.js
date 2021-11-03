import React, {useState} from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Home from "./Home";
import AbobUs from "./AbobUs";
import Profile from "./Profile";
import "./App.css";
import $ from 'jquery';


let loginhidden = true;
let reghidden = true;

function logClick(){
    loginhidden = true;
    document.getElementById("registration").style = "visibility : hidden";
    $(".container > *:not(#login):not(header)").css("filter", 'blur(15px)')

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

function regClick(){
    reghidden = true;
    document.getElementById("login").style = "visibility : hidden";

    $(".container > *:not(#registration):not(header)").css("filter", 'blur(15px)')

    let page = window.location.href.split('/')[window.location.href.split("/").length - 1];

    if(reghidden === false){
        document.getElementById("registration").style = "visibility : hidden";
        reghidden = true;
    }
    else{
        document.getElementById("registration").style = "visibility : visible";
        reghidden = false;
    }

}

function showPass() {
    var x = document.getElementById("regpassinput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function logshowPass() {
    var x = document.getElementById("passinput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function closewindow(){
    $(".container > *:not(#login):not(header):not(#registration)").css("filter", 'none')
    document.getElementById("registration").style = "visibility : hidden";
    document.getElementById("login").style = "visibility : hidden";
}
function loginButton(){
    let inpM = document.getElementById("mailinput").value;
    let inpP = document.getElementById("passinput").value;
    //todo backend mail and password check
    if(inpM === "craftaXLB" && inpP === "crafta12345"){
        alert("goodLogin")

    }
}

const BasicExample = () => (



    <Router>

      <div className = "container">

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

          <div className="login" id = "login">

              <div class="wrapper wrapper_blur">
                  <div class="content"></div>
              </div>
              <div class="modal"></div>


              <div id = "logButtons">
                  <span id = "vhod">Вход</span>
                  <hr id = "upperline"/>
                  <span  id = "mailtext">Электронная почта</span>
                  <input type={"text"} id = "mailinput"/>
                  <span  id = "passtext">Пароль</span>
                  <input type={"password"} id = "passinput"/>
                  <input type = "checkbox" id = "logcheckbox" onClick={logshowPass} />
                  <input type={"checkbox"} id = "rememberme"/>
                  <label htmlFor="checkbox"></label>
                  <span id = "forgotpass">Забыли пароль?</span>
                  <button id = "logingIn" onClick={loginButton}>Войти</button>
                  <span id = "registrText" onClick={regClick}>Зарегистрироваться</span>
                  <button id="closebutton" onClick={closewindow}>×</button>

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


          <div className="registration" id="registration">

              <div className="wrapper wrapper_blur">
                  <div className="content"></div>
              </div>
              <div className="modal"></div>


              <div id="regButtons">
                  <span id="reg">Регистрация</span>
                  <hr id="upperline"/>


                  <span id="nickname">Nickname</span>
                  <input type={"text"} id="nicknameinput"/>
                  <span id="regmailtext">Электронная почта</span>
                  <input type={"text"} id="regmailinput"/>
                  <span id="regpasstext">Придумайте пароль</span>
                  <input type={"password"} id="regpassinput"/>
                  <input type = "checkbox" id = "regcheckbox" onClick={showPass} />
                  <span id="underpass">Пароль должен быть не менее 6 символов, содержать цифры и латинские буквы, в том числе заглавные, и не должен совпадать с именем и эл. почтой</span>
                  <span id="polzsogl">Регистрируясь, вы соглашаетесь с <a href = "abobus">пользовательским соглашением</a> </span>
                  <button id="signup">Зарегистрироваться</button>
                  <hr id="regLineUp"/>

                  <span id="regtextOr">или</span>
                  <hr id="regLineDown"/>
                  <span id="regAlready" onClick={logClick}>Я уже зарегистрирован</span>
                  <button id="signup">Зарегистрироваться</button>
                  <button id="closebutton" onClick={closewindow}>×</button>
                  <div id="googleRect">
                      <img src="https://i.imgur.com/Rvg4gaR.png" id="googleImage"/>
                      <span id="googleText">Google</span>
                  </div>
                  <div id="faceRect">
                      <img src="https://i.imgur.com/FUH2NZv.png" id="faceImage"/>
                      <span id="faceText">Facebook</span>
                  </div>
              </div>


          </div>






          <Route exact path="/" component={Home} />
        <Route path="/about" component={AbobUs} />
        <Route path="/profile" component={Profile}/>

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