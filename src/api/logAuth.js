import axios, {Axios} from 'axios'
import {Link, Redirect, useHistory} from "react-router-dom";

export default function logAuth(email, password){


    axios.post("http://127.0.0.1:8000/api/login", {email : email, password : password}, {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}
        })
        .then(res => {
            alert("Successfully logined as " + res.data.data.username)
            axios.get("http://127.0.0.1:8000/api/user", {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                .then(res => {
                    alert("Good login")
                    /*let history = useHistory();
                    history.push("/")*/
                })
        })
        .catch(err =>{
            alert("Wrong login or password")
        })

    return

}