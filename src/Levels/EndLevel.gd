extends Node2D

onready var correct = get_node("Correct")
onready var incorrect = get_node("Incorrect")

func _ready():
	correct.set_text(str("Correctas: ", Global.current_correct))
	incorrect.set_text(str("Incorrectas: ", Global.current_incorrect))
	
	if Global.num_table == GlobalSave.all_data["MaxLevel"]:
		GlobalSave.all_data["MaxLevel"] += 1

func _on_Back_pressed():
	get_tree().change_scene("res://src/MainScreens/Levels.tscn")

func _on_Resume_pressed():
	get_tree().change_scene("res://src/Levels/Level"
		+ str(Global.current_level) + ".tscn")
