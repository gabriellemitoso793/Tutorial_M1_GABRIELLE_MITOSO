extends Node2D

var teste = false
var valor = 0
var numero = 1 #aqui precisei retirar o acento pois no restante do código a var estava sem acento
var lista = [] #faltava declarar a lista como variavel
var nome 

func _on_Button_pressed(): #aqui precisei conectar o botão 
	#Coletando dados inseridos pelo usuário
	lista = []
	var dados = $LineEdit.text #Criei uma variável para separar a resposta em 2 partes
	dados = dados.split(" ") # aqui separei a resposta com espaço
	nome = (dados[0]) 
	numero = int(dados[1]) 

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #aqui ajeitei a variavel 
		lista.append(numero) #aqui ajeitei novamente a variavel
	print(lista)
	$ColorRect/RichTextLabel.text= String(numero) #Alterei o Label para ColorRect/
	#RichTextLabel para ficar mais organizado na tela e adicionei uma string para 
	#chamar a variavel numero

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for num in lista:
		if (num % 2 != 0):
			nome = nome+"baldo \n"
			break
	$ColorRect2/RichTextLabel2.text = nome
