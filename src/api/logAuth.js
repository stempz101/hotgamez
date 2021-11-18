import axios, {Axios} from 'axios'
import {Link, Redirect} from "react-router-dom";

export default function logAuth(email, password){

    axios.post("http://127.0.0.1:8000/api/login", {email : email, password : password}, {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}
        })
        .then(res => {
            alert(JSON.stringify(res.data));
            axios.get("http://127.0.0.1:8000/api/user", {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                .then(res => {
                    alert(JSON.stringify(res.data))
                })
        })
        .catch(err =>{
            alert(JSON.stringify(err.response.data))
        })


    return true

}