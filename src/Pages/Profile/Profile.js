import React from "react";
import "./Profile.css";
import Layout from '../../components/Layout/Layout'
import axios from "axios";


function Profile(){

    const [user, setUser] = React.useState({})
    React.useEffect(()=>{
        axios.get("http://127.0.0.1:8000/api/user", {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
            .then(res => {
                setUser(res.data)
            })
    })

    return (
        <Layout>
            <div className={"profile_data_box_down2"}>
            </div>
            <div>
            <div className={"profile_data_box_up"}>
                <span className={"profText"}>Настройки профиля</span>
                <div className={"inputRow"}>
                    <textarea placeholder={"Имя"} id ={"changeButtUs"} className={"input"}></textarea>
                    <span className={"changeButt"} onClick={() =>{
                        axios.put(`http://127.0.0.1:8000/api/user/username?username=${document.getElementById("changeButtUs").value}`, {} ,{withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                            .then(res => {
                                alert("Username changed")
                            })
                            .catch(err =>{
                                alert(JSON.stringify(err.response));
                            })
                    }}>  Изменить</span>
                </div>
                <br/>
                <div className={"inputRow"}>
                    <textarea placeholder={"mail@gmail.com"} id ={"changeButtEm"} className={"input"}></textarea>
                    <span className={"changeButt"}  onClick={() =>{
                        axios.put(`http://127.0.0.1:8000/api/user/email?email=${document.getElementById("changeButtEm").value}`, {} ,{withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                            .then(res => {
                                alert("Email changed")
                            })
                            .catch(err =>{
                                alert(JSON.stringify(err.response));
                            })
                    }}>  Изменить</span>
                </div>
                <br/>
                <div className={"inputRow"}>
                    <textarea placeholder={"Пароль"} id ={"changeButtPass"} className={"input"}></textarea>
                    <span className={"changeButt"} onClick={() =>{
                        axios.put(`http://127.0.0.1:8000/api/user/password?password=${document.getElementById("changeButtPass").value}`, {} ,{withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                        .then(res => {
                        alert("Password changed")
                    })
                        .catch(err =>{
                        alert(JSON.stringify(err.response));
                    })
                    }}>  Изменить</span>
                </div>
                <button  className="favorite" onClick={() => {
                    axios.post(`http://127.0.0.1:8000/api/logout`, {} ,{withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
                        .then(res => {
                            alert(JSON.stringify(res))
                            alert("Logged out successfully")
                        })
                        .catch(err =>{
                            alert(JSON.stringify(err.response));
                        })
                }}>Выйти</button>

                <br/>
                <br/>

                <span className={"profile_data_bottom_text"}>Для входа вы можете использовать ваши почту и пароль</span>
            </div>

            <div className={"profile_data_box_down"}>
                <div className={"row"}>
                    <span>Информация</span>
                </div>
                <br/>
                <div className={"row"}>
                    <span>Email : </span>
                    <span>{user.email}</span>
                </div>
                <br/>
                <div className={"row"}>
                    <span>Никнейм : </span>
                    <span>{user.username}</span>
                </div>
                <br/>
                <div className={"row"}>
                    <span>Количество игр в списке желаемого : </span>
                    <span>0</span>
                </div>
                <br/>
                <div className={"row"}>
                    <span>Количество отправленых пожеланий в улучшении сайта : </span>
                    <span>0</span>
                </div>
            </div>
            </div>
        <div className={"profile_data_box_down2"}>
        </div>

        </Layout>
    )
}

export default Profile;