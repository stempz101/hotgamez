import React, {useState} from 'react'
import Layout from '../../components/Layout/Layout'
import { DropDownList } from "@progress/kendo-react-dropdowns";
import * as ReactDOM from "react-dom";
import { useHistory } from "react-router-dom";
import axios from "axios";
import './Favorites.css'
import FavGameTableItem from '../../components/GameTableItem/FavGameTableItem';
import fetchFav from '../../api/fetchFav';
import GameTableItem from "../../components/GameTableItem/GameTableItem";
import Home from "../Home/Home";
let hidden = true;

function click() {
    let cont = document.getElementById("cont")
    if (hidden) {
        cont.style.display = "visible"
        hidden = false;
    }
    else {
        cont.style.display = "none"
        hidden = true;
    }
}

let id;
function getId(){

    return id;
}



function Favorites() {




    const favhistory = useHistory();
    const navigateTo = () => favhistory.push('/game');//eg.history.push('/login');
    const [favsearch, favsetSearch] = useState(''); //add this line
    const [favstartPos, favsetStartPos] = React.useState(0)
    const [favgames, favsetGames] = React.useState([])
    const [favfetchState, favsetFetchState] = React.useState({ loading: false, hasMore: true })

    const [favtableControls, favsetTableControls] = React.useState({ popular: false, newGames: false, free: false, price: null, genre: [], releaseDate: null });
    React.useEffect(() => {
        favsetStartPos(0);
        favsetGames([]);
        fetchFav(favstartPos, favtableControls, favsetFetchState, favsetGames);
    }, [favtableControls])

    /*React.useEffect(() => {
        fetchGames(startPos, tableControls, setFetchState, setGames)
    }, [startPos])*/



    const favobserver = React.useRef();
    const favtrigger = React.useCallback(node => {
        if (favfetchState.loading) return;
        if (favobserver.current) favobserver.current.disconnect()
        favobserver.current = new IntersectionObserver(entries => {
            if (entries[0].isIntersecting && favfetchState.hasMore) {
                favsetStartPos(p => p + 25)
            }
        })
        if (node) favobserver.current.observe(node)
    }, [favfetchState.loading, favfetchState.hasMore])

    return (

        <Layout>
            <div className='game-table-control-container'>

                <div className='games-table-control'>

                    <div className='games-table-control__buttons'>
                        <button onClick={() => favsetTableControls(p => ({ ...p, popular: !p.popular }))}>Популярное</button>
                        <button onClick={() => favsetTableControls(p => ({ ...p, newGames: !p.newGames }))}>Новое</button>
                        <button onClick={() => favsetTableControls(p => ({ ...p, free: !p.free }))}>Бесплатные</button>

                        <li className="dropdown">
                            <a href="javascript:void(0)" className="dropbtn" >Цена</a>
                            <div className="dropdown-content">
                                <button className='pricebtn'>По возрастанию</button>
                                <button className='pricebtn'>По убыванию</button>
                            </div>
                        </li>
                    </div>
                    <div className='games-table-control__list'>

                    </div>
                </div>
            </div>
            <div  className='favgames-table'>

                {favgames.map((item, index) => (
                    <>
                        {index === favgames.length?
                            <div className='favgames-table-item' key={'game-' + index} ref={favtrigger}>
                                <FavGameTableItem item={item} />
                            </div>
                            :
                            <div id="game" onClick={(event)=>{id = event.target.alt;navigateTo()}} className='favgames-table-item' key={'game-' + index}>

                                <FavGameTableItem item={item} />
                            </div>
                        }
                    </>
                ))}
                {favfetchState.loading ? <h3>Loadings...</h3> : <></>}
            </div>
            <div className="fake"></div>

        </Layout>
    )

}

export default Favorites
