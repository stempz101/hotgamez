import React from 'react'

function Login({setIsOpen, setIsLoginForm}) {
    return (
        <div>
            <h2>Login</h2>
            <button onClick={() => setIsOpen(false)}>Close Modal</button>
            <button onClick={() => setIsLoginForm(p => !p)}>Change Form</button>
        </div>
    )
}

export default Login
