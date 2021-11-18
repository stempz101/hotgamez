import axios from 'axios'

export default function regAuth(login, email, password){
    alert(login + " " + email + ' ' + password);

    axios.post(`http://127.0.0.1:8000/api/register/?username=${login}&email=${email}&password=${password}`)
        .then(res => {
            alert(JSON.stringify(res));
        })
        .catch(err =>{
            alert(JSON.stringify(err.response.data))
        })
}