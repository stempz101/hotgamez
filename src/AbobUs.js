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

// Получаем контейнер
        const container = document.querySelector(".container");
// Получаем контент:
        const content = document.querySelector(".content");
// 1. Получаем высоту контента, который мы хотим показать/скрыть
        const heightOfContent = content.getBoundingClientRect().height;
// Получаем кнопку
        const btn = document.querySelector(".trigger");

// 2. Задаем пользовательские свойства CSS с высотой контента
        container.style.setProperty("--containerHeight", `${heightOfContent}px`);

// Когда высота задана
        setTimeout(e => {
            document.documentElement.classList.add("height-is-set");
            content.setAttribute("aria-hidden", "true");
        }, 0);

        btn.addEventListener("click", function(e) {
            container.setAttribute("data-drawer-showing", container.getAttribute("data-drawer-showing") === "true" ? "false" : "true");
            // 5. Переключаем значение aria-hidden
            content.setAttribute("aria-hidden", content.getAttribute("aria-hidden") === "true" ? "false" : "true");
        })

        return <div id = "aboutus">
            <div id = "forcustH">
                <span   className = "mainText">Для покупців</span>
                <br></br>
            </div>
            <div id = "forcustT">
                <span className = "subText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Саме для Вас у нас є унікальна пропозиція: можливість швидко і зручно знайти найвигіднішу пропозицію в світі комп'ютерних ігор. Для тих, хто визначається з вибором, в кожному розділі є підбір за параметрами і можливість порівняти товари між собою. Доступний і зручний текстовий пошук, що дозволяє шукати як потрібні розділи, так і конкретні товари за назвою. А на сторінці кожної гри є докладна інформація, яка допоможе прийняти рішення: опис, характеристики, фото і відео, корисні посилання та відгуки. Там же знаходиться блок «Де купити?» зі списком інтернет-магазинів, цінами і прямими посиланнями на сторінку покупки.</span>
            </div>
            <div id = "vlasnH">
                <span className = "mainText">Для власника інтернет-магазину</span>
                <br></br> </div>
            <div id = "vlasnT" >
                <span className = "subText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ви звернулися за адресою, так як HotGamez - це інтернет-сервіс, що допомагає покупцеві знайти, порівняти і визначитись з вибором гри, магазину і зробити покупку. Ми не торгуємо, ми рекламуємо наявні у Вас товари. Таким чином, після розміщення товарів на HotGamez, наші відвідувачі стають Вашими покупцями.</span>
            </div>
            <div id = "conf">
                <span className={"mainText"}>Конфіденційність</span>

                <div className="container">
                    <button type="button" class="trigger">Show/Hide content</button>
                    <div className="content">
                            1. Збір інформації<br/>
                            Ми збираємо інформацію, коли ви реєструєтеся на сайті, заходьте на свій обліковий запис, виходите з облікового запису. Інформація включає ваш реєстраційний e-mail (логін).<br/>
                            Крім того, ми автоматично реєструємо ваш комп'ютер і браузер, включаючи IP, апаратні дані, а також адресу сторінки, що запитується на нашому сайті.<br/>
                            <br/>
                            2. Використання інформації<br/>
                            Інформація, яку ми отримуємо від вас, може бути використана, щоб:<br/>
                            Зробити послуги такими, що відповідають вашим індивідуальним запитам.<br/>
                            Запропонувати персональну рекламу<br/>
                            Поліпшити наш сайт<br/>
                            Поліпшити систему підтримки користувачів<br/>
                            Зв'язатися з вами електронною поштою суворо у випадках запиту від вас на надання інформації про зміну пароля, списки підібраних вами товарів та ін.<br/>
                            <br/>
                            3. Захист особистих даних<br/>
                            Ми єдиний власник інформації, зібраної на цьому сайті. Ваші особисті дані не будуть продані або будь-яким чином передані третім особам з будь-яких причин.<br/>
                            <br/>
                            4. Розкриття інформації третім особам<br/>
                            Ми не продаємо, не обмінюємо та не передаємо особисті дані стороннім компаніям.<br/>
                            Ми готові ділитися інформацією, щоб запобігти злочинам або допомогти в їхньому розслідуванні, якщо йдеться про підозру в шахрайстві, дії, які фізично загрожують безпеці людей суворо у випадках, коли це передбачено законом.<br/>
                            Неконфіденційна та неперсоналізована інформація може бути надана іншим компаніям з метою маркетингу, реклами тощо.<br/>
                            <br/>
                            5. Захист інформації<br/>
                            Ми використовуємо різні засоби безпеки, щоб гарантувати збереження ваших особистих даних. До ваших послуг найсучасніше шифрування. Nadavi також захищає ваші дані в режимі офлайн. Лише співробітники, які працюють із конкретним завданням (наприклад, технічна підтримка або використання сайту) отримують доступ до особистих даних. Сервера та комп'ютери, на яких записана конфіденційна інформація, знаходяться у безпечному оточенні.<br/>
                            <br/>
                            6. Використання файлів cookie<br/>
                            Наші файли cookie використовуються для покращення доступу до сайту та визначення повторних відвідувань. Крім того, вони дозволяють відстежити найцікавіші запити. Файли cookie не передають жодної конфіденційної інформації.<br/>
                            <br/>
                            7. Згода<br/>
                            Користуючись послугами нашого сайту, ви автоматично погоджуєтесь із нашою політикою конфіденційності.<br/> <br/>
                    </div>
                </div>
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
            <div id = "feedbackText">
                <span >Зворотній зв'язок</span>
            </div>
            <div id = "feedback">

                <img src="https://i.imgur.com/M6yallk.png" alt="telegram logo" id = "telegram"/>
                <img src="https://i.imgur.com/JKRkD6S.png" alt="instagram logo" id = "instagram"/>
                <img src="https://i.imgur.com/tUSYFTL.png" alt="discord logo" id = "discord"/>

            </div>
        </div>


    }
}

export default AbobUs;