import Estatisticas from "./Estatisticas";
import './Hero.css';

function Hero(){
    return(
        <section className="hero">
            <div className="container">

                <span className="badge">Plataforma de aprendizado do futuro</span>

                <h1>Gestão de aprendizado inteligente para <span className="texto-azul">escolas técnicas</span></h1>

                <p className="descricao-hero">Centralize avaliações, presença e progresso dos alunos em uma interface intuitiva e potente. Desenvolvido para instituições que buscam excelência acadêmica.                    
                </p>

                <div className="botoes-hero">
                    <button className="btn-filled">Esplorar Funcionalidades</button> <button className="btn-outline">Saiba mais</button>
                </div>

                <Estatisticas titulo="=120" descricao="escolas técinicas" />
                <Estatisticas titulo="+48 mil" descricao="alunos ativas" />
                <Estatisticas titulo="=4.9 ⭐" descricao="avaliação média" />

            </div>
        </section>
    );


}

export default Hero;