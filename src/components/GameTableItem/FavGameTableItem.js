import React from 'react'

function FavGameTableItem(props) {
    console.log(props)
    return (
        <>
            <img src={props.item.image} alt={props.item.game} className='favgame-image'/>
            <div className='favgame-info'>
                <span className='favgame-title'>{props.item.game}</span>
                <div className='favgame-price-box'>
                    <span className='favgame-price-from'>От </span>
                    <span className='favgame-price'>{props.item["min_price"].price}₴</span>

                </div>
            </div>
        </>
    )
}

export default FavGameTableItem
