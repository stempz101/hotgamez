import React from 'react'
import { Link } from 'react-router-dom'
import HeaderInput from './header-components/HeaderInput/HeaderInput'
import FavoriteIcon from '../../../assets/headerFavoriteIcon.svg'
import ProfileIcon from '../../../assets/headerProfileIcon.svg'
import Logo from '../../../assets/headerLogo.png'

import Modal from 'react-modal'

import './Header.css'
import Authorization from './header-components/Authorization/Authorization'

const customStyles = {
    content : {
        top: '50%',
        left: '50%',
        right: 'auto',
        bottom: 'auto',
        marginRight: '-50%',
        transform: 'translate(-50%, -50%)',
        background: 'rgba(72, 126, 189, 1)',
        borderRadius: 50,
        width: 800,
        height: 700,
        borderWidth: 0
    },
    overlay : {
        backgroundColor: 'rgba(0, 0, 0, 0.55)',
        zIndex: '1000'
    }
};

function Header() {
    const [isOpen, setIsOpen] = React.useState(false)
    return (
        <header>
            <Link to='/'><img src={Logo} alt=''/></Link>
            <div>
                <HeaderInput />
                <Link to='/'><img src={FavoriteIcon} alt=''/></Link>
                {true ? <a href='#' onClick={() => setIsOpen(true)}><img src={ProfileIcon} alt=''/></a> : <Link to='/'><img src={ProfileIcon} alt=''/></Link>}
            </div>


            <Modal
                isOpen={isOpen}
                onRequestClose={() => setIsOpen(false)}
                style={customStyles}
            >
                <div className='modal-content__inner'>
                    <Authorization setIsOpen={setIsOpen}/>
                </div>
            </Modal>


        </header>
    )
}

export default Header
