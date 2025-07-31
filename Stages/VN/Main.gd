extends Node

func _ready() -> void:
	DialogicBridge.start_dialogue("test")
	DialogicBridge.connect("dialogue_finished", Callable(self, "_on_dialogue_end"))
	
func _on_dialogue_end() -> void:
	GameState.go_to_gameplay()
