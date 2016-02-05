//Exibe o comprimento da string.
var teste = "Teste".length;

//Interação
confirm('Preparado para aprender JavaScript? Pressione OK para prosseguir!');

//Pergunta
var nome = prompt('Qual é o seu nome?');

//Console
console.log('Este texto irá aparecer no seu console, logo abaixo do seu código.');

/*
Comparações:
> Maior
< Menor
<= Menor ou igual
>= Maior ou igual
=== Igual
!== Diferente
*/
console.log(2 > 1);
console.log("Teste".length < 10);
console.log("Teste".length * 2 <= 10);
console.log(3 / 3 >= 5);
console.log(5 * 5 === 25);
console.log(1 !== 1);

//Condições
//IF
if(2 > 1) {
	console.log('Como a condição acima é verdadeira, essa frase será exibida.');
}

//IF / ELSE
if(1 !== 1) {
	console.log('Este texto não será exibido, pois a condição acima é falsa.');
}
else {
	console.log('Este texto somente será exibido porque a condição acima é falsa.');
}

//IF / ELSE IF / ELSE
var resposta = prompt('Digite um número: ');

if(isNaN(resposta)) { //isNaN (is not a number) verifica se a variável não é um número.
      return "Você não informou um número.";
  } else if (resposta % 2 === 0) {
      return true;
  } else {
      return false;
  }

//Retorna somente uma parte de uma string.
//<variável>.substring(<posição inicial>, <posição final>);
//Sendo que a primeira posição da variável é zero, a segunda é um, a terceira é 2, e assim sucessivamente.
"Teste Somente este texto será exibido. Teste".substring(6, 37);

//Variáveis
//Para declarar uma variável, use var <nome da variável>;
//Para atribuir um valor, use o sinal de igual.
var nome;
nome = "Seu nome";

//É possível atribuir um valor na mesma linha que você declara a variável.
var idade = 25; //Essa é uma variável global.

//Funções
//Formato: function <nome>(<parâmetros>) { <código> };
//Função sem return
function somando(num1, num2) { //num1 e num2 são chamados de parâmetros.
	var total = num1 + num2; //Essa é uma variável local.
	console.log('Função somando -> Soma = ' + total);
};

//Para chamar a função:
var soma = somaDoisNumeros(2, 3);

//Função com return
function somaDoisNumeros(numero1, numero2) {
	var numero3 = numero1 + numero2;
	return numero3;
};

//Para chamar a função:
var soma = somaDoisNumeros(2, 3);
console.log('Função somaDoisNumeros -> Soma = ' + soma);

//FOR loops
//for (<valor inicial>; <condição>; <incremento ou decremento>)
for (var cont = 0; cont < 5; cont++) {
	console.log(cont);
}

/*Incrementos/decrementos
Os incrementos e decrementos podem ser escritos de uma maneira mais eficiente, ou seja:
i + 1 pode ser escrito como i++
i + 2 pode ser escrito como i += 2
i - 3 pode ser escrito como i -= 3
i - 1 pode ser escrito como i--
*/

//ARRAYS
//Arrays armazenam listas de dados
//Sintaxe: var nomeDoArray[dado, dado, dado, dado];
var meuPrimeiroArray["Nome 1", 12, "Nome 2", 15, "Nome 3", 30];

console.log(meuPrimeiroArray); //Imprime o array inteiro.
console.log(meuPrimeiroArray[2]; //Imprime a segunda posição do array. Lembrando que a primeira posição é a posição zero.

//Loops e Arrays
var jokenpo["Pedra", "Papel", "Tesoura"];

for(var cont = 0; cont < jokenpo.length; cont++) {
	console.log("Jokenpô >> " + jokenpo[cont]);
}

//While Loops
//While é executado somente se obedecer a condição.
//Sintaxe: while(condição)
var carro = true;

while(carro) { //Essa linha significa o mesmo que: while (carro === true)
	console.log("Eu tenho um carro.");
	carro = false;
}

//Do / While Loops
//Esse loop é executado ao menos uma vez, mesmo que não obedeça a condição.
//
var condicao = false;

do {
	console.log("Esse loop só será executado uma vez, pois a condição a seguir é falsa.");
} while(condicao);
	
//Switch / Case
var celular = prompt("Qual o seu celular?");

switch(celular) {
	case 'iPhone':
		console.log("iPhone é da Apple.");
		break; //Todo case deve terminar com um break.
	case 'Galaxy':
		console.log("Galaxy é da Samsung.");
		break;
	case 'Windows Phone':
		console.log("Windows Phone é da Microsoft.");
		break;
	default: //Essa instrução é executada caso nenhum case acima seja válido.
		console.log("Não reconheci o celular informado.");
}

//Operador AND &&
var temCarro = true;
var naoEstaBebado = true;

if(temCarro && naoEstaBebado) {
	console.log("Pode dirigir.");
}

//Operador OU ||
var voceCorre = true;
var voceMalha = false;

if(voceCorre || voceMalha) {
	console.log("Parabéns! Você leva uma vida saudável.");
}

//Operador NOT !
var noite = false;

if(!noite) { //Mesmo que: if(noite !== false)
	console.log("Hora de trabalhar.");
}

//Array multidimensional
//Cria uma matriz 2x2, 3x3, 4x4 e assim sucessivamente
var multid = [[1,2,3],[4,5,6],[7,8,9]];

//Jagged arrays
//Cria uma matriz, mas você pode ter somente um elemento na primeira linha, cinco na segunda, três na terceira, etc.
var jagged = [[1,2,[1,2]],[3,4]];

//OBJETOS

//Primeira forma para criar um objeto: Notação Literal
//Sintaxe: var <nome do objeto> = {
//				<parâmetro>: <valor>,
//				<parâmetro>: <valor>
//			};
var meuObjeto = {
	nome: "Thiago Bottoni",
	idade: 25
};

//Acessar valores de objetos
//A primeira forma para acessar um valor de um objeto, basta usar <nome do objeto>.<nome do parâmetro>
var objNome = meuObjeto.nome;

//A segunda forma para acessar um valor de um objeto, basta usar <nome do objeto>["<nome do parâmetro"];
var objIdade = meuObjeto["idade"];

//Primeira forma para criar um objeto: Construtor
var pessoa = new Object();

//Adicionar parâmetros em objetos
pessoa.nome = "Thiago";
pessoa.idade = 25;

//MÉTODOS
//Métodos são como funções dentro de objetos. Eles podem realizar operações com as informações do objeto.
pessoa.setIdade = function(novaIdade) {
	pessoa.idade = novaIdade;
};

pessoa.setIdade(30);

//THIS
//This é usado para construir um único método que será usado por vários objetos
var idadeAll = function(novaIdade) {
	this.idade = novaIdade;
};

pessoa.setIdadeAll = idadeAll; //Aqui eu informo que o método pessoa.setIdadeAll será igual a função idadeAll construída acima.

pessoa.setIdadeAll(50); //Aqui eu chamo o método e passo a nova idade.

//Construtores
//O construtor Object() cria um objeto sem nenhuma propriedade. Porém, podemos construir nossos próprios construtores para iniciar objetos já com algumas propriedades. Carro abaixo é uma CLASSE criada por mim, ela irá garantir que todo objeto do tipo Carro que for criado tenha um ano e um modelo.
function Carro(ano,modelo) {
	this.ano = ano;
	this.modelo = modelo;
}

//Aqui estou instanciando objetos com o construtor que eu mesmo criei logo acima.
var fiat = new Carro(2015, "Siena");
var ford = new Carro(2012, "Fiesta");

//Arrays de Objetos
//Também é possível criar arrays de objetos, da mesma forma que fazemos para criar um array simples.
var carros = new Array();
carros[0] = new Carro(2013, "Celta");
carros[1] = new Carro(2016, "Civic");
carros[2] = new Carro(2015, "Onix");

//É possível criar loops de arrays de objetos
for(var cont = 0; cont < carros.length; cont++) {
	console.log(carros[cont].modelo);
}

var string1 = "string";
var numero1 = 10;

//Imprime o tipo da variável
console.log(typeof string1); //Isso irá imprimir "string"
console.log(typeof numero1); //Isso irá imprimir "number"

//Descobre se o objeto tem certa propriedade
console.log(meuObjeto.hasOwnProperty('idade')); //Isso irá imprimir true, porque o objeto meuObjeto tem a propriedade idade.
console.log(meuObjeto.hasOwnProperty('profissao')); //Isso irá imprimir false, porque o objeto meuObjeto não tem a propriedade profissão.

//Imprimir as propriedades de um objeto
for(var propriedade in meuObjeto) { //"propriedade" pode ser qualquer outro nome que você preferir
	console.log(propriedade); //Isso irá imprimir nome e idade
}

//Imprimir os valores das propriedades de um objeto
for(var prop in meuObjeto) {
    console.log(meuObjeto[prop]); //Isso irá imprimir "Thiago Bottoni" e 25
}
