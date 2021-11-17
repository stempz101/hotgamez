import axios from 'axios'
import {Link} from "react-router-dom";

export default function logAuth(login, password){

    axios.get("http://127.0.0.1:8000/api/games")
        .then(res => {
            alert(JSON.stringify(res.data.data[0]));
        })

    return true

}