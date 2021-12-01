import React from 'react'
import Layout from '../../components/Layout/Layout'

import './Game.css'
import GameTableItem from '../../components/GameTableItem/GameTableItem';
import fetchGames from '../../api/fetchGames';
import axios from "axios";


let game = {name:"The Elder Scrolls III: Morrowind", descr: "The Elder Scrolls III: Morrowind® Game of the Year Edition\n"+" включает в себя Morrowind и весь контент из дополнений Bloodmoon и Tribunal.\n"+" Оригинальный Mod Construction Set не включен в этот сборник.", descrFull: "Эпическая, нелинейная одиночная RPG Morrowind позволяет вам создать и играть любым персонажем, которого вы только сможете придумать. Вы можете идти по главной сюжетной линии и найти источник пагубной болезни, отравляющей землю или отправиться в собственное путешествие, изучая удивительные локации и совершенствуя образ своего персонажа его поступками в игре. Обладая сногсшибательной 3D графикой, нелинейным сюжетом и невероятным уровнем детализации и интерактивности, Morrowind предлагает вам геймплей, который вы больше нигде не найдете.\n" +
        "В Tribunal вы совершаете путешествие в столицу Морроувинда, Морнхолд, для того, чтобы встретить двух королей-богов Морроувинда, Алмалексию и Сота Сила. Ваше путешествие приведет вас к Заводному Городу Сота Сила и массивным, исполинским подземельям, в которых вас ждут странные и смертельно опасные существа: гоблины, лорды-личи и загадочные Фабриканты.\n" +
        "Bloodmoon переносит вас на ледяной остров Солстхейм, на котором вас ждут снег, метели и новые существа, такие как морозные тролли, ледяные големы, волки... и еще много других. Вы сможете выбрать один из двух путей развития сюжета и получите возможность защищать колонию, самому решить, как она будет построена, и уничтожить оборотней. Однако, вы можете также присоединиться к оборотням, стать одним из них, открыв для себя абсолютно новый стиль игры.\n" +
        "Ключевые особенности:\n" +
        "Игроки могут перенести в игру уже существующих персонажей и сохраненные игры, чтобы продолжить свои приключения\n" +
        "Добавлено до 80 часов нового геймлея и квестов\n" +
        "Исследуйте леса, пещеры и снежные пустоши острова Солстхейм\n" +
        "Прорывайтесь в новые громадные подземелья, посетите столицу Морнхолд и Заводной город Сота Сила\n" +
        "Сражайтесь с новыми существами: медведями и волками, лордами-личами и гоблинами, ледяными големами и спригганами\n" +
        "Руководите постройкой горнодобывающей колонии и столкнитесь с угрозой беспощадных оборотней\n" +
        "Станьте оборотнем и дайте волю своей жажде охоты\n" +
        "Новые доспехи и оружие, включая Нордскую кольчугу и Ледяные клинки",
    price : 322, image: "https://1k.by/images/site/news/2018/07/20/t829bc1a42.jpg"}

function Game() {

    const [user, setUser] = React.useState({})
    React.useEffect(()=>{
        axios.get("http://127.0.0.1:8000/api/user", {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
            .then(res => {
                setUser(res.data)
            })
    })


    return (
        <Layout>
           <div className="descriptionBox">
               <div className="GameText">
                    <h1> {game.name}</h1>
                    <a>{game.descr}</a>
               </div>

                   <img className="gameImage" src = {game.image}></img><br></br>
               <h2>Сравнение цен</h2>
           </div>

            <div className="fake"></div>
            <div className="commonitem">
            <div className="CompItem">
                    <button>Купить</button>
                    <a className="GamePrice">{game.price}₴</a>
                    <a  className="ItemText">{game.name} </a>

                <div className="CompPrice">
                    <div className="StoreItem">

                        <div className="divItem">
                             <img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/1200px-Steam_icon_logo.svg.png"></img>

                        </div>
                </div>
            </div>
            </div>

            <div className="CompItem">
                <button>Купить</button>
                <a className="GamePrice">{game.price}₴</a>
                <a  className="ItemText">{game.name} </a>

                <div className="CompPrice">
                    <div className="StoreItem">

                        <div className="divItem">
                            <img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/1200px-Steam_icon_logo.svg.png"></img>

                        </div>
                    </div>
                </div>
            </div>

            <div className="CompItem">
                <button>Купить</button>
                <a className="GamePrice">{game.price}₴</a>
                <a  className="ItemText">{game.name} </a>

                <div className="CompPrice">
                    <div className="StoreItem">

                        <div className="divItem">
                            <img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/1200px-Steam_icon_logo.svg.png"></img>

                        </div>
                    </div>
                </div>
            </div>

            <div className="CompItem">
                <button>Купить</button>
                <a className="GamePrice">{game.price}₴</a>
                <a  className="ItemText">{game.name} </a>

                <div className="CompPrice">
                    <div className="StoreItem">

                        <div className="divItem">
                            <img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/1200px-Steam_icon_logo.svg.png"></img>

                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div className="fake"></div>
            <div className="fake"></div>
    <div className="AboutGame">

         <h2>Об игре</h2>
              <a className="Description">{game.descrFull}</a>


   </div>

            <div className="PC">
                <br/>
                <h2>{game.name}</h2>
                <div className="articles">
                    <a className="articlePC">    Платформа:  Steam,</a><br/><br/>
                    <a className="articlePC">     Издатель:  Bethesda Softworks</a><br/>
                    <a className="articlePC">    Разработчик:  Bethesda Game Studios</a><br/><br/>
                    <a className="articlePC">    Жанр:  РПГ</a><br/><br/>
                    <a className="articlePC">     Дата выпуска: 29 апреля 2002</a><br/><br/>
                </div>
            </div><br/>
        <div className="PC">
            <br/>
            <h2> Cистемные Требования</h2>
            <div className="articles">
            <a classname ="articlePC">   500 MHz Intel Pentium III,</a><br/><br/>
            <a classname ="articlePC">   Celeron, or AMD Athlon</a><br/>
            <a classname ="articlePC">   или AMD Ryzen 3 1300X</a><br/><br/>
            <a classname ="articlePC">    256 МБ ОЗУ</a><br/><br/>
            <a classname ="articlePC">   32MB Direct3D Compatible video card with 32-bit</a><br/>
            <a className="articlePC">     color support and DirectX 8.1 </a><br/><br/>
            <a classname ="articlePC">   1GB free hard disk space</a>
            </div><br/>
        </div>


        </Layout>
    )

}


export default Game