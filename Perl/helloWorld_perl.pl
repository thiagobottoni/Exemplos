#!/usr/bin/perl
use strict;
use warnings;


#######################################################
###############     USAR MÓDULOS CPAN     #############
#######################################################

# CPAN é uma biblioteca de scripts Perl, a qual contém algumas funções já desenvolvidas. Você pode encontrar qualquer módulo disponível, no endereço http://search.cpan.org
# Para instalar um módulo, digite 'cpan' no prompt de comando e depois digite 'install <módulo>'

# Exemplos:
use Date::Calc qw(This_Year); # Se você precisa usar todas as funções de um módulo, use qw(:all) ao invés do nome da função (neste caso: 'This Year').
use Scalar::Util::Numeric qw(isnum);


#######################################################
################     HELLO WORLD :)     ###############
#######################################################

print "Hello World! \n";


#######################################################
###################     ESCRITA     ###################
#######################################################

# Exemplo:
print "Digite um número: ";


#######################################################
####################     LEITURA     ##################
#######################################################

# Exemplo:
my $primeira_variavel = <>;


#######################################################
###################     NÚMEROS     ###################
#######################################################

# Exemplo:
my $num = 5;
my $num2 = 3.5;
print $num + $num2 . " [Números]\n";

# Operadores:
# + Adição
# - Subtração
# * Multiplicação
# / Divisão
# % Resto da divisão
# ** exponenciação
# . concatenação
# x replicação (scalar/array) Ex.: 23 (1x), 2323 (2x), 232323 (3x), 23232323 (4x), etc
# ++ +1
# -- -1
# += operação e atribuição (pode ser usado nas seguintes operações: +, -, *, /, **, %, ., ||, &&)


#######################################################
##################     VARIÁVEIS     ##################
#######################################################


###############     Scalar      ##############

# Exemplo 1:
my $fruta = "Banana";
print $fruta , " [Scalar 1]\n";

# Exemplo 2:
my $total = 25;
print $total / 2 . " [Scalar 2]\n";


####################     ARRAY     ####################
# O índice de um array é sempre um número.

# Exemplo 1:
my @primeiro_array = ("cachorro", "peixe", "gato");
print $primeiro_array[0] . " [Array 1]\n";

# Example 2:
my @segundo_array;
$segundo_array[0] = 10;
$segundo_array[1] = 25;
$segundo_array[2] = 5;
print $segundo_array[$#segundo_array] . " [Array 2]\n"; # Essa expressão imprime o valor da última posição do array. A scalar '$#segundo_array' contém a última posição do array.


#####################     HASH     ####################
# O índice do hash pode ser um número ou uma string.

# Exemplo 1:
my %string_hash = ();
$string_hash{First} = 1;
$string_hash{Second} = 2;
print "Primeiro: $string_hash{First} / Segundo: $string_hash{Second} [Hash 1]\n";

# Exemplo 2:
my %number_hash = ();
$number_hash{1} = "John";
$number_hash{2} = "Maria";
print "$number_hash{1} foi a primeira pessoa a desenvolver um app em perl. $number_hash{2} foi a segunda. [Hash 2]\n";

# Mais exemplos:
# my %employee = ("E01", "John", "E02", "Maria");
# my %employee = ("E01" => "John", "E02" => "Maria");


#######################################################
##################     COMPARAÇÃO     #################
#######################################################


#############     Comparação Numérica     ############

# Exemplo:
if ($num == $num2) {
	print "Iguais [Comparação Numérica]\n";
}

# Operadores:
# == Igual
# != Diferente
# > Maior
# >= Maior ou igual
# < Menor
# <= Menor ou igual
# cmp binary equality (-1: less / 0: equal / 1: greater)


###############     Comparação de Texto     ###############

# Exemplo:
if ($number_hash{1} eq $number_hash{2}) {
	print "É a mesma pessoa! [Comparação de Texto]\n";
}

# Operadores:
# eq Equivalente
# ne Não equivalente
# lt Menor
# gt Maior
# le Menor ou igual
# ge Maior ou igual
# <=> binary equality (-1: less / 0: equal / 1: greater)


##############     Comparação Lógica     #############

# Exemplo:
if (($num == 5) && ($number_hash{2} eq "Peter")) {
	print "Oi, Peter! [Comparação Lógica]\n";
}

# Operadores:
# && E
# || OU
# ! NÃO


#######################################################
##################     DEVIATION     ##################
#######################################################


##############     If / Elsif / Else     ##############

# Exemplo 1:
if ($num == 5){
	print $num . " [If / Elsif / Else 1.1]\n";
	} elsif ($string_hash{First} == 2) {
		print "Error! [If / Elsif / Else 1.2]\n";
	} else {
		print "Ok! [If / Elsif / Else 1.3]\n";
}

# Exemplo 2:
print "Ok! [If / Elsif / Else 2]\n" if (($num != 2) && ($string_hash{First} == 1));


####################     UNLESS     ###################
# Forma negativa do IF.

# Exemplo:
print $total . " [Unless]\n" unless $total < 20;


#######################################################
####################     LOOPS     ####################
#######################################################


################     WHILE ou UNTIL     ###############

# Exemplo 1:
my $count = 0;
while ($count < 3){
	print "[While ou Until 1.$count ]\n";
	$count++;
}

# Exemplo 2:
# print "[While ou Until 2.$count ]\n" while ($count < 1); (NÃO execute essa linha. Isso é um loop infinito.) :P


#####################     FOR     #####################

# Exemplo:
for ($count = 0; $count < 3; $count++) {
	print $count . " [For]\n";
}


###################     FOREACH     ###################

# Exemplo:
$count = 0;
foreach $count (0..2) {
	print $count . " [Foreach]\n";
}


#############     Do/While ou Do/Until     ############

# Exemplo:
my $this_year = This_Year();
my $birth_year;
my $ver = 0;

do {
	print "Digite o ano do seu nascimento [yyyy]: ";
	$birth_year = <>; # Isso requer um input do usuário
	$ver = &VerifyInput($birth_year); # Chamando minha sub (VerifyInput). Quando uma sub é desenvolvida, fazemos a chamada com um '&' antes do seu nome.
} while ($ver == 0);

$total = &MyAge($this_year, $birth_year); # Chamando minha sub (MyAge). Quando uma sub é desenvolvida, fazemos a chamada com um '&' antes do seu nome.

print "Você tem $total anos! [Do/While ou Do/Until] através da [Subroutine 1]\n";


#######################################################
###################     ARQUIVOS     ##################
#######################################################


###################     LEITURA      ##################

# Exemplo:
open (MYFILE_READ, '<', "hello_world.txt") or die "Não existe arquivo chamado hello_world.txt! [Leitura 1.1]"; # Essa linha pode ser alterada por: open (my $file, '<', "hello_world.txt") || warn "Não é possível abrir o arquivo! [Leitura 1.1]";

# Para ler cada linha de uma vez - isso armazena o valor de cada linha na variável temporária $_ para um loop
while (<MYFILE_READ>) {
	chomp; # Limpa novas linhas ao final de cada linha
	print "$_ [Read 1.2]\n";
}

# my @lines = <MYFILE_READ>; (se o arquivo não é tão grande, você pode armazenar seu conteúdo em um array com esse comando).
    
close MYFILE_READ;

# Segundo parâmetro do comando open:
# < (ou nada) abre o arquivo como somente leitura;
# > cria um arquivo para escrita (e sobrescreve o arquivo existente com o nome especificado);
# >> abre um arquivo para escrita (e cria um novo, caso não tenha nenhum arquivo com o nome especificado);
# +> cria um arquivo como read-write (e sobrescreve o arquivo existente com o nome especificado).


####################     ESCRITA      ###################

# Exemplo:
open (MYFILE_WRITE, '>>', "C:\\temp\\you_can_delete.txt") or die "Directory not found! [Write 1.1]\n" . $!; # Esse comando ($!) imprime a mensagem de erro padrão.

print MYFILE_WRITE "Estou dentro! :) [Escrita 1.2]\n";

close MYFILE_WRITE; 


#######################################################
#################     SUBROUTINES     #################
#######################################################

# Exemplo 1:
sub MyAge {
	(my $param1, my $param2) = @_;
	my $age = $param1 - $param2;
	return($age);
}

# Exemplo 2:
sub VerifyInput {
	(my $number) = @_;
	if ((!isnum($number)) | (length($number) != 5)) {
		print "Por favor, informe um ano no formato: yyyy como 1990 [Subroutine 2]\n";
		return(0);
	} else {
		return(1);
	}
}


#######################################################
################     RECOMENDAÇÕES     ################
#######################################################
#
# [1. CPAN Official Site] >>>>>>>>>> http://search.cpan.org/ [English]
# [2. Aprendendo Perl] >>>>>>>>>>>>>>> http://www.lobo.eti.br/?g_id=60#6.1 [Portuguese]
# [3. Como desenvolver com Perl] >>>> http://www.gustavoroberto.blog.br/2007/03/22/curso-de-perl-como-programar-em-perl/ [Portuguese]
# [4. How to Pack .pl into .exe] >>> http://hexample.com/2012/01/04/packing-perl-standalone-executable/ [English]
# [5. Read Files in Perl] >>>>>>>>>> http://perl.about.com/od/perltutorials/a/readwritefiles.htm [English]
# [6. Write Files in Perl] >>>>>>>>> http://perl.about.com/od/perltutorials/a/readwritefiles_2.htm [English]
# [7. More File Functions] >>>>>>>>> http://www.perlhowto.com/working_with_files [English]
#
#######################################################
