import React from 'react'

function Login({ setIsOpen, setIsLoginForm }) {
   
    return (
        <div>
            <button class = "closeButton" onClick={() => setIsOpen(false)}>×</button>
            <h2>Login</h2>
            <hr></hr>
            <h3>E-mail</h3>
            <input class="authinput" type="text" placeholder="Enter an e-mail..." />
            <h3>Password</h3>
            <input class="authinput2" type="text" placeholder="Enter a password..." />
            <input class = "checkbox" type="checkbox" value="Remember me" />
            <label for="Remember me">Remember me</label>

            <div class="center">
                <button class="authbutton">Log in</button>
            </div>

            <div class = "center2">
                    <button class="changeFrom" onClick={() => setIsLoginForm(p => !p)}>Registration</button>
            </div>
        </div>
    )
}


export default Login
