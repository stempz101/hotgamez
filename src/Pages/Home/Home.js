import React, {useState} from 'react'
import Layout from '../../components/Layout/Layout'
import { DropDownList } from "@progress/kendo-react-dropdowns";
import * as ReactDOM from "react-dom";
import { useHistory } from "react-router-dom";

import './Home.css'
import GameTableItem from '../../components/GameTableItem/GameTableItem';
import fetchGames from '../../api/fetchGames';
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



function Home() {
    const history = useHistory();
    const navigateTo = () => history.push('/game');//eg.history.push('/login');

    const [search, setSearch] = useState(''); //add this line
    const [startPos, setStartPos] = React.useState(0)
    const [games, setGames] = React.useState([])
    const [fetchState, setFetchState] = React.useState({ loading: false, hasMore: true })

    const [tableControls, setTableControls] = React.useState({ popular: false, newGames: false, free: false, price: null, genre: [], releaseDate: null });

    React.useEffect(() => {
        setStartPos(0);
        setGames([]);
        fetchGames(startPos, tableControls, setFetchState, setGames);
    }, [tableControls])

    /*React.useEffect(() => {
        fetchGames(startPos, tableControls, setFetchState, setGames)
    }, [startPos])*/



    const observer = React.useRef();
    const trigger = React.useCallback(node => {
        if (fetchState.loading) return;
        if (observer.current) observer.current.disconnect()
        observer.current = new IntersectionObserver(entries => {
            if (entries[0].isIntersecting && fetchState.hasMore) {
                setStartPos(p => p + 25)
            }
        })
        if (node) observer.current.observe(node)
    }, [fetchState.loading, fetchState.hasMore])






    return (

        <Layout>

            <div className='game-table-control-container'>

                <div className='games-table-control'>

                    <div className='games-table-control__buttons'>
                        <button onClick={() => setTableControls(p => ({ ...p, newGames: "new" }))}>Новое</button>
                        <button onClick={() => setTableControls(p => ({ ...p, free: "free" }))}>Бесплатные</button>

                        <li className="dropdown">
                            <a href="javascript:void(0)" className="dropbtn" >Цена</a>
                            <div className="dropdown-content">
                                <button className='pricebtn' onClick={() => setTableControls(p => ({ ...p, price: "min" }))}>По возрастанию</button>
                                <button className='pricebtn' onClick={() => setTableControls(p => ({ ...p, price: "max" }))}>По убыванию</button>
                            </div>
                        </li>
                    </div>
                    <div className='games-table-control__list'>

                    </div>
                </div>
            </div>
            <div  className='games-table'>

                {games.map((item, index) => (
                    <>
                        {index === games.length  ?
                            <div className='games-table-item' key={'game-' + index} ref={trigger}>
                                <GameTableItem item={item} />
                            </div>
                            :
                            <div id="game" onClick={(event)=>{id = event.target.alt;navigateTo()}} className='games-table-item' key={'game-' + index}>

                                <GameTableItem item={item} />
                            </div>
                        }
                    </>
                ))}
                {fetchState.loading ? <h3>Loadings...</h3> : <></>}
            </div>
        </Layout>
    )

}


export default {Home, getId}
