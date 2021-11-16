import React from 'react'
import './HeaderInput.css'

function HeaderInput() {
    const [value, setValue] = React.useState('')
    return (
        <input value={value} onChange={e => setValue(e.target.value)} placeholder='Введите название игры...'/>
    )
}

export default HeaderInput
