console.log('Hello Jose!');

const nome = 'Jose'; // Variável constante, não pode ser reatribuída
let idade = 30;  // Variável mutável, pode ser reatribuída  
var cidade = 'São Paulo'; // Variável global, pode ser reatribuída e tem escopo de função

//Função tradicional
// function multiplicar(x, y) {
//     return x * y;
// }



//Arrow function
const multiplicar = (x, y) => {
    console.log(x*y);
    return x * y;
}



const subtrair = (x, y) =>  x - y; // Retorno implícito uma vez que não tem chaves

const dividir = (x, y) =>  {
    if (y != 0) {
        return x / y;
    } else {
        return "Denominator precisa ser diferente de zero"; // Retorna Infinity para divisão por zero
    }
}; // Retorno implícito uma vez que não tem chaves


const raizQuadrada = (x) => Math.sqrt(x); // Função de um único parâmetro, sem parênteses

console.log(subtrair(10, 5)); // Retorna 5
console.log(dividir(10, 0)); // Retorna "Denominator precisa ser diferente de zero"
console.log(raizQuadrada(16)); // Retorna 4