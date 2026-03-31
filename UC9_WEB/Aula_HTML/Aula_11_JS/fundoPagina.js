let botãoVermelho = document.getElementById("btnRed");
let botãoVerde = document.getElementById("btnGreen");
let botãoBranco = document.getElementById("btnBranco");
const botaoHide = document.querySelector("#btnHide");//Pegar por id ou por classe
const titulo = document.querySelector("#titulo");

const botaoTema = document.querySelector("#btnTema");


function alterarCor(cor){
    document.body.style.backgroundColor = cor;

}

botãoVermelho.addEventListener("click", () => alterarCor("red"));
botãoVerde.addEventListener("click", () => alterarCor("green"));
botãoBranco.addEventListener("click", () => alterarCor("white"));

botaoHide.addEventListener("click", () => {

    //titulo.classList.add('invisivel');

    //toggle adiciona a classe no CSS se ela não existir, e remove se ela existir
    titulo.classList.toggle('invisivel');

    //botaoHide.textContent = titulo.classList.contains('invisivel') ? "Mostrar Título" : "Esconder Título";

    // if ternário: condição ? valor se verdadeiro : valor se falso
    botaoHide.textContent = botaoHide.textContent == "Mostrar Título" ? "Esconder Título" : "Mostrar Título";


} );

botaoTema.addEventListener("click", () => {

    document.body.classList.toggle('temaEscuro');

    if (botaoTema.textContent == "Tema Escuro") {
        botaoTema.textContent = "Tema Claro";
    } else {
        botaoTema.textContent = "Tema Escuro";
    }

} );