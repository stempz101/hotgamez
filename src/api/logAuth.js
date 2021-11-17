import axios from 'axios'
import {Link} from "react-router-dom";

export default function logAuth(login, password){

    /*
        axios.get(url)
        .then(res => {
            setFetchState(p => ({...p, loading: false}))
            setGames(p => [...p, ...dboutput])
        })
    */
    if(login === "1" && password === "1") alert("a")

    else alert("f")
    return true

}