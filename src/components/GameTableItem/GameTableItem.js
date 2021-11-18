import React from 'react'

function GameTableItem(props) {
    console.log(props)
    return (
        <>
            <img src={props.item.image} alt={props.item.game} className='game-image'/>
            <div className='game-info'>
                <span className='game-title'>{props.item.game}</span>
                <div className='game-price-box'>
                    <span className='game-price-from'>От </span>
                    <span className='game-price'>{props.item["min_price"].price}₴</span>
                </div>
            </div>
        </>
    )
}

export default GameTableItem
