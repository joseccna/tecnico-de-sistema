function Navbar() {

    return(
        <nav className="navbar">
            <div className="container">
                <a href="#" className="logo">EduTrack</a>

                <ul className="nav-links">

                    <li><a href="#">Sobre</a></li>
                    <li><a href="#">Funcionalidades</a></li>
                    <li><a href="#">Equipe</a></li>
                    <li><a href="#">Contato</a></li>

                </ul>

                <div className="nav-botoes">
                    <a href="#" className="link-login">Login</a>
                    <button className="btn-comecar">Começar agora</button>
                </div>
                
            </div>
        </nav>
    )

}

export default Navbar;