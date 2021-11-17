import React from 'react'
import regAuth from "../../../../../../api/regAuth";
import logAuth from "../../../../../../api/logAuth";

function Registration({setIsOpen, setIsLoginForm}) {
    return (
        <div>
           <h2>Registration</h2>
            <button className="closeButton" onClick={() => setIsOpen(false)}>×</button>
            <hr></hr>
            <h3>Username</h3>
            <input className="authinput" type="text" id="logInput" placeholder="Enter an username..." />
            <h3>E-mail</h3>
           <input className="authinput" type="text" id="logInput" placeholder="Enter an e-mail..."/>
            <h3>Password</h3>
           <input className="authinput" type="password" id="passInput" placeholder="Enter a password..."/>
            <div className="center">
                <button className="authbutton" onClick={() => regAuth(document.getElementById("logInput").value, document.getElementById("passInput").value)}>Registration</button>
            </div>

            <div className="center2">
                <button className="changeFrom" onClick={() => setIsLoginForm(p => !p)}>Log in</button>
            </div>
        </div>
    )
}

export default Registration
