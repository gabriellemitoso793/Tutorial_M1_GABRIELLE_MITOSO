extends Node2D

var teste = false
var valor = 0
var numero = 1 #aqui precisei retirar o acento pois no restante do código 
var lista = [] #faltava declarar a lista como variavel
var nome 

func _on_Button_pressed(): #aqui precisei conectar o botão 
	#Coletando dados inseridos pelo usuário
	var dados = $LineEdit.text #Criei uma variável para separar a resposta em 2 partes
	dados = dados.split(" ") # aqui separei a resposta com espaço
	nome = (dados[0]) 
	numero = int(dados[1]) 

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+= i #aqui ajeitei a variavel 
		lista.append(numero) #aqui ajeitei novamente a variavel
	$ColorRect/RichTextLabel.text= String(numero) #Alterei o Label para ColorRect/
	#RichTextLabel para ficar mais organizado na tela e adicionei uma string para 
	#chamar a variavel numero

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0 
	var i = 0
	i = 0
	cont = 0
	while len(lista) > i: #corrigi o i para que o loop possa ocorrer qnquanto o mesmo for menor que a lista
		if(lista[i]%2==1):
			cont+= 1 
		if(cont==0): #alterei para == para que o nome baldo apareça só uma vez
			nome = nome+" baldo \n"  #Adicionei uma quebra de linha
		i += 1 #limitei o loop
		$ColorRect2/RichTextLabel2.text = nome
