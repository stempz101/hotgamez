import React from 'react'

function Registration({setIsOpen, setIsLoginForm}) {
    return (
        <div>
            <h2>Registration</h2>
            <button onClick={() => setIsOpen(false)}>Close Modal</button>
            <button onClick={() => setIsLoginForm(p => !p)}>Change Form</button>
        </div>
    )
}

export default Registration
