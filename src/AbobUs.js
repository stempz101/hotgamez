import React from "react";
import "./AbobUs.css";
import $ from 'jquery';

class AbobUs extends React.Component{
    componentDidMount() {
        $( "#wishes" ).mousedown(function() {
           $("#wishes").css("opacity", "1");
        });
    }

    render(){
        return <div id = "aboutus">
            <div id = "forcustH">
                <span   className = "mainText">Для покупців</span>
                <br></br>
            </div>
            <div id = "forcustT">
                <span className = "subText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Саме для Вас у нас є унікальна пропозиція: можливість швидко і зручно знайти найвигіднішу пропозицію в світі комп'ютерних ігор. Для тих, хто визначається з вибором, в кожному розділі є підбір за параметрами і можливість порівняти товари між собою. Доступний і зручний текстовий пошук, що дозволяє шукати як потрібні розділи, так і конкретні товари за назвою. А на сторінці кожної гри є докладна інформація, яка допоможе прийняти рішення: опис, характеристики, фото і відео, корисні посилання та відгуки. Там же знаходиться блок «Де купити?» зі списком інтернет-магазинів, цінами і прямими посиланнями на сторінку покупки.</span>
            </div>
            <div id = "vlasnH">
                <span className = "mainText">Для власника чи менеджера інтернет-магазину</span>
                <br></br> </div>
            <div id = "vlasnT" >
                <span className = "subText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ви звернулися за адресою, так як HotGamez - це інтернет-сервіс, що допомагає покупцеві знайти, порівняти і визначитись з вибором гри, магазину і зробити покупку. Ми не торгуємо, ми рекламуємо наявні у Вас товари. Таким чином, після розміщення товарів на HotGamez, наші відвідувачі стають Вашими покупцями.</span>
            </div>
            <div  id = "conf">
                <span className={"mainText"}>Конфіденційність</span>
            </div>
            <div id = "questions">
                <span className={"mainText"}>Питання та побажання по сайту</span>
            </div>
            <div id = "wishesDiv">

                <form>
                    <textarea placeholder={"Напишіть тут своє питання/побажання..."} id={"wishes"}/>
                    <span id="wishcircle"></span>
                    <img src="https://imgur.com/l96ZOpj.png" alt="sendwish" id = "sendwish"/>
                </form>
            </div>
            <span id = "feedbackText">Зворотній зв'язок</span>
            <div id = "feedback">

                <img src="https://i.imgur.com/M6yallk.png" alt="telegram logo" id = "telegram"/>
                <img src="https://i.imgur.com/JKRkD6S.png" alt="instagram logo" id = "instagram"/>
                <img src="https://i.imgur.com/tUSYFTL.png" alt="discord logo" id = "discord"/>

            </div>
        </div>

    }
}

export default AbobUs;