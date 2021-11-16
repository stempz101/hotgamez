import React from 'react'
import { Link } from 'react-router-dom'
import './Footer.css'

function Footer() {
    return (
        <footer>
            <Link to='/profile'><h3 id="settingsButton">Настройки</h3></Link>
            <h3 id="ctext">© 2021 HotGamez</h3>
            <div>
                <h3 id="languageButton">Русский</h3>
                <Link to="/about"><h3 id="usButton">О нас</h3></Link>
            </div>
            
        </footer>
    )
}

export default Footer
