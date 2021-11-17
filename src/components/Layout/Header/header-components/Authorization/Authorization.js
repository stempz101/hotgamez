import React from 'react'
import Login from './Login/Login'
import Registration from './Registration/Registration'
import logAuth from "../../../../../api/logAuth";

function Authorization({setIsOpen}) {
    const [isLoginForm, setIsLoginForm] = React.useState(false)

    if(isLoginForm)
        return (
            <Login setIsOpen={setIsOpen} setIsLoginForm={setIsLoginForm}/>
        )

    return (
        <Registration setIsOpen={setIsOpen} setIsLoginForm={setIsLoginForm}/>

    )
}

export default Authorization
