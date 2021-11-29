import React from "react";
import "./Profile.css";
import Layout from '../../components/Layout/Layout'


function Profile(){


    let lul = "sda"
    return (
        <Layout>
            <div className={"profile_data_box"}>
                <textarea placeholder={"Имя"} className={"name"}></textarea>
                <textarea placeholder={"mail@gmail.com"} className={"mail"}></textarea>
                <textarea placeholder={"Пароль"} className={"password"}></textarea>
                <span className={"profile_data_bottom_text"}>Для входа вы можете использовать ваши почту и пароль</span>
            </div>
        </Layout>
    )
}

export default Profile;