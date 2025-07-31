extends Node

enum State { MENU, VN, GAMEPLAY }
var state: State = State.MENU

func go_to_menu() -> void:
	state = State.MENU
	get_tree().change_scene_to_file("res://Stages/Boot.tscn")

func go_to_vn() -> void:
	state = State.VN
	get_tree().change_scene_to_file("res://Stages/Boot.tscn")

func go_to_gameplay() -> void:
	state = State.GAMEPLAY
	get_tree().change_scene_to_file("res://Stages/Boot.tscn")
