import React from 'react'
import Layout from '../../components/Layout/Layout'
import Home from '../Home/Home'
import './Game.css'
import GameTableItem from '../../components/GameTableItem/GameTableItem';
import fetchGames from '../../api/fetchGames';
import axios from "axios";



function Game() {
    let id;

    React.useEffect(()=>{id = Home.getId()})

    let prices = [];
    const [game, setGame, ] = React.useState({})
    React.useEffect(()=>{
        axios.get(`http://127.0.0.1:8000/api/games/${id}`, {withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})

            .then(res => {
                setGame(res.data.data)
                //alert(game.prices[1].price)

            })

    })

    function click() {

        this.setState({ isLoading: true });

        axios.post(`http://127.0.0.1:8000/api//game/${id}/action-favorite`,{withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
            .then((response) => {
                this.setState({ data: response.data, isLoading: false });
            })
            .catch((err) => {
                this.setState({ data: err, isLoading: false });
            });
    }


        React.useEffect(() => {
            axios.post(`http://127.0.0.1:8000/api//game/${id}/action-favorite`, {
                withCredentials: true,
                headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}
            })

                .then(res => {
                    setGame(res.data.data)
                })

        })




    return (

        <Layout>
            <div className="descriptionBox">

                <button onClick={click} className="favorite">Добавить</button>


                <div className="GameText">
                    <h1> {game.game}</h1>
                    <a>{game.short_description}</a>
                </div>

                <img className="gameImage" src = {game.main_image}></img><br></br>
            </div>

            <div className="fake"></div>

            <div className="commonitem">
                <h2>Сравнение цен</h2>

                <div className="CompItem">
                    <button className="buy">Купить</button>
                    <a className="GamePrice"> {game.prices && game.prices[0].price}₴</a>
                    <a  className="ItemText">{game.game}</a>



                    <div className="CompPrice">
                        <div className="StoreItem">

                            <div className="divItem">
                                <img src = {game.prices && game.prices[0].shop_image}></img>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="CompItem">
                    <button className="buy">Купить</button>
                    <a className="GamePrice">{game.prices && game.prices[1].price}₴</a>
                    <a  className="ItemText">{game.game} </a>

                    <div className="CompPrice">
                        <div className="StoreItem">

                            <div className="divItem">
                                <img src = {game.prices && game.prices[1].shop_image}></img>

                            </div>
                        </div>
                    </div>
                </div>



            </div>

            <div className="fake"></div>
            <div className="fake"></div>

            <div className="AboutGame">

                <h2>Об игре</h2>
                <a className="Description">{game.description}</a>


            </div>

            <div className="PC">
                <br/>
                <h2>Конфигурация</h2>
                <div className="articles">
                    <a className="articlePC">    Платформа:  {game.platform},</a><br/><br/>
                    <a className="articlePC">     Издатель: {game.publisher}</a><br/>
                    <a className="articlePC">    Разработчик:  {game.developer}</a><br/><br/>
                    <a className="articlePC">    Жанр:  РПГ</a><br/><br/>
                    <a className="articlePC">     Дата выпуска: {game.release_date}</a><br/><br/>
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