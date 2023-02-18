extends Node2D

var lista = []

func _on_lista_auto_pressed():
	var todos = "Ballet Jazz Salsa Funk"
	var item_corta = todos.split(" ")
	for item in item_corta:
		$ColorRect/RichTextLabel.text += (item + "\n")
		
func _on_lista_geradora_pressed():
	var todos = $LineEdit.text
	var item_corta = todos.split(" ")
	for item in item_corta:
		$ColorRect/RichTextLabel.text += (item + "\n")

func _on_apagar_pressed():
		$ColorRect/RichTextLabel.text = ""


func retornar_texto(texto_do_usuario):
	$ColorRect/RichTextLabel.text = texto_do_usuario
	$LineEdit.text = ""


func _on_texto_pressed():
	retornar_texto($LineEdit.text)
	pass # Replace with function body.
