extends Node

func _ready() -> void:
	print("🏁 Boot._ready(), GameState.state =", GameState.state)

	# figure out what to load
	var target := ""
	match GameState.state:
		GameState.State.MENU:
			target = "res://Stages/Menu/StartScreen.tscn"
		GameState.State.VN:
			target = "res://Stages/VN/Main.tscn"
		GameState.State.GAMEPLAY:
			target = "res://Stages/Gameplay/Prototype.tscn"
		_:
			push_error("Unknown GameState: %s" % GameState.state)
			return
			
	get_tree().call_deferred("change_scene_to_file", target)
