import React from 'react'
import Footer from './Footer/Footer'
import Header from './Header/Header'

import './Layout.css'

function Layout(props) {
    return (
        <>
            <Header/>
            <main>
                {props.children}
            </main>
            <Footer/>
        </>
    )
}

export default Layout
