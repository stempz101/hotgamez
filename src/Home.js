import React from "react";
import "./Home.css";
import $ from "jquery";





let dbinput = [{image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "699"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "u", price : "6"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "Very very very very long text", price : "6999"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "699"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "u", price : "6"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "Very very very very long text", price : "6999"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}, {image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"}]
let arr = [];
//Эта херота отвечает за полученную с БД инфу. dbinput на данный момент что-то типа полученой инфы с бд
//Функция снизу делает массив игр в div формате
for(let i = 0; i < dbinput.length; i++){
    if(i + 1 === dbinput.length){
        arr.push(
            <div id="square" className={"lastGame"}>
                <div id = "gameName">{dbinput[i].game}</div>
                <div id = "gamePriceFrom">От</div><div id = "gamePrice">{dbinput[i].price}$</div>
                <img src ={dbinput[i].image} alt={dbinput[i].game}  id = "gameImage"/>
            </div>

        )
    }
    else{
        arr.push(
            <div id="square">
                <div id = "gameName">{dbinput[i].game}</div>
                <div id = "gamePriceFrom">От</div><div id = "gamePrice">{dbinput[i].price}$</div>
                <img src ={dbinput[i].image} alt={dbinput[i].game}  id = "gameImage"/>
            </div>

        )
    }
}

class Home extends React.Component{

        componentDidMount()                                                 /* чтобы фокус не пропадал после клика */
        {
            $("#filtSquarePopular").css("background-color", "darkgrey");

            $("#filtSquarePopular").mousedown(function () {
                $("#filtSquarePopular").css("background-color", "darkgrey");
                $("#filtSquareNew").css("background-color", "white");
                $("#filtSquareFive").css("background-color", "white");
                $("#filtSquareTen").css("background-color", "white");
            });
            $("#filtSquareNew").mousedown(function () {
                $("#filtSquarePopular").css("background-color", "white");
                $("#filtSquareNew").css("background-color", "darkgrey");
                $("#filtSquareFive").css("background-color", "white");
                $("#filtSquareTen").css("background-color", "white");
            });
            $("#filtSquareFive").mousedown(function () {
                $("#filtSquarePopular").css("background-color", "white");
                $("#filtSquareNew").css("background-color", "white");
                $("#filtSquareFive").css("background-color", "darkgrey");
                $("#filtSquareTen").css("background-color", "white");
            });
            $("#filtSquareTen").mousedown(function () {
                $("#filtSquarePopular").css("background-color", "white");
                $("#filtSquareNew").css("background-color", "white");
                $("#filtSquareFive").css("background-color", "white");
                $("#filtSquareTen").css("background-color", "darkgrey");
            });
        }





render(){

    const array = arr;
        return <div id = "mainPage">
            <ul style={{ listStyleType: "none" }} id = "filters"> {/*Простой фильтер*/}
                <li id = "filterButtons">
                    <button id = "filtSquarePopular" className={"filterButton"}>Популярное</button>
                </li>
                <li id = "filterButtons">
                    <button id = "filtSquareNew" className={"filterButton"}>Новое</button>
                </li>
                <li id = "filterButtons">
                    <button id = "filtSquareFive" className={"filterButton"}>До 5$</button>
                </li>
                <li id = "filterButtons">
                    <button id = "filtSquareTen" className={"filterButton"}>До 10$</button>
                </li>
            </ul>
            <div id = "rearrs">
                <hr id = "rearrTopLine" color={"black"}/>
                <ul style={{listStyleType : "none"}} id ="filtRearrangers"> {/*Более широкий фильтер*/}
                    <li id = "filterButtons">
                        <button id = "priceRearr" className={"rearrButton"} tabIndex={0}>Цена</button>
                    </li>
                    <li id = "filterButtons">
                        <button id = "genreRearr" className={"rearrButton"}>Жанр</button>
                    </li>
                    {/* <li id = "filterButtons">
                        <button id = "typeRearr" className={"rearrButton"}>Тип</button>
                    </li>*/}
                    <li id = "filterButtons">
                        <button id = "dateRearr" className={"rearrButton"}>Дата выхода</button>
                    </li>
                    <li id = "filterButtons">
                        <button id = "popularRearr" className={"rearrButton"}>Популярность</button>
                    </li>

                </ul>
                <hr id = "rearrBotLine" color={"black"}/>
            </div>
            <div id = "games">
                {array}
            </div>
        </div>;
    }

}




export default Home;