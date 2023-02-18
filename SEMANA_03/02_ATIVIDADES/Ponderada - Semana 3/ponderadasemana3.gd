extends Node2D

var lista = []
var itens = ['samba', 'rock', 'pop', 'funk']

func _ready():
	for i in itens:
		$Texto.text = $Texto.text + i + '\n'
	$Texto.visible = false
	
func _on_Button_pressed():
	$Texto.visible = true
	$Label.visible = false
	pass # Replace with function body.

func show_list():
	$Label.text = ''
	for i in lista:
		$Label.text = $Label.text + i + '\n'

func _on_Button2_pressed():
	lista.append($LineEdit.text)
	$Texto.visible = false
	$Label.visible = true
	show_list()
	pass # Replace with function body

func show_frase():
	$Frase.text = 'Se enxerguei mais longe foi por estar sob os ombros de gigantes!'

func _on_Button3_pressed():
	show_frase()
	pass # Replace with function body.
