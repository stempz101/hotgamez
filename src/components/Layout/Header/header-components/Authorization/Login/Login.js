import React from 'react'
import logAuth from "../../../../../../api/logAuth";

function Login({ setIsOpen, setIsLoginForm }) {

    return (
        <div>
            <button class = "closeButton" onClick={() => setIsOpen(false)}>×</button>
            <h2>Login</h2>
            <hr></hr>
            <h3>E-mail</h3>
            <input class="authinput" type="text" id = "logInput" placeholder="Enter an e-mail..." />
            <h3>Password</h3>
            <input class = "authinput" type="password" id = "passInput" placeholder="Enter a password..." />
            <input className="checkbox" type="checkbox" value="Remember me"/>
            <label htmlFor="Remember me">Remember me</label>
            <div className="center">
                <button className="authbutton" onClick={() => logAuth(document.getElementById("logInput").value, document.getElementById("passInput").value)}>Log in</button>
            </div>

            <div className="center2">
                <button className="changeFrom" onClick={() => setIsLoginForm(p => !p)}>Registration</button>
            </div>
        </div>
    )
}


export default Login
