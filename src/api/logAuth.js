import axios, {Axios} from 'axios'
import {Link, Redirect, useHistory} from "react-router-dom";

export default async function logAuth(email, password){
    let logined = false;
    axios.post("http://127.0.0.1:8000/api/login", {email : email, password : password}, {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}
        })
        .then(res => {
            alert("Successfully logined as " + res.data.data.username)
            axios.get("http://127.0.0.1:8000/api/user", {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                .then(res => {
                    alert("Good login")
                    logined = true;
                })
        })
        .catch(err =>{
            alert("Wrong login or password")
        })
    if(logined){
        return true;
    }
    else{
        return false;
    }
}