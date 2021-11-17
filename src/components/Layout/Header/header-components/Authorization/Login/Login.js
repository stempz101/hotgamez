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
            <input class = "authinput" type="text" placeholder="Enter a password..." />
            <button class="authbutton">Log in</button>
            <button class="authbutton"onClick={() => setIsLoginForm(p => !p)}>Registration</button>

        </div>
    )
}


export default Login
