import React, { useState } from 'react'
import Layout from '../../components/Layout/Layout'
import styled from "styled-components";
import './Home.css'
import GameTableItem from '../../components/GameTableItem/GameTableItem';
import fetchGames from '../../api/fetchGames';
let hidden = true;

function click() {
    let cont = document.getElementById("cont")
    if (hidden) {
        cont.style.display = "block"
        hidden = false;
    }
    else {
        cont.style.display = "none"
        hidden = true;
    }
}

function Home() {
 
    const [startPos, setStartPos] = React.useState(0)
    const [games, setGames] = React.useState([])
    const [fetchState, setFetchState] = React.useState({loading : false, hasMore : true})

    const [tableControls, setTableControls] = React.useState({popular: false, newGames: false, free: false, price: null, genre: [], releaseDate: null});

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
        if(fetchState.loading) return;
        if(observer.current) observer.current.disconnect()
        observer.current = new IntersectionObserver(entries => {
            if(entries[0].isIntersecting && fetchState.hasMore){
                setStartPos(p => p + 25)
            }
        })
        if(node) observer.current.observe(node)
    }, [fetchState.loading, fetchState.hasMore])


   
    return (
        <Layout>
          
            <div className='game-table-control-container'>
               
                <div className='games-table-control'>
                   
                    <div className='games-table-control__buttons'>
                        <button onClick={() => setTableControls(p => ({...p, popular: !p.popular}))}>Популярное</button>
                        <button onClick={() => setTableControls(p => ({...p, newGames: !p.newGames}))}>Новое</button>
                        <button onClick={() => setTableControls(p => ({ ...p, free: !p.free }))}>Бесплатные</button>
                        <button onClick={click}>Цена </button>
                    
                    </div>
                    <div className='games-table-control__list'>

                </div>
            </div>
            <div className='games-table'>
                <div className="content" id="cont">
                    
                    <button style={{ zIndex: "1000", color: "black", backgroundColor: "white", borderRadius: "5px", padding: "2px" }}>По убыванию</button>
                    <button style={{ zIndex: "1000", color: "black", backgroundColor: "white", borderRadius: "5px", padding: "2px" }}>По возрастанию</button>
                </div>
                {games.map((item, index) => (
                    <>
                        {index === games.length - 15 ? 
                            <div className='games-table-item' key={'game-' + index} ref={trigger}>
                                <GameTableItem item={item}/> 
                            </div>
                            :
                            <div className='games-table-item' key={'game-' + index}>
                                <GameTableItem item={item}/> 
                            </div>
                        }
                    </>
                ))}
                {fetchState.loading ? <h3>Loadings...</h3> : <></>}
            </div>            
        </Layout>
    )
}


export default Home
