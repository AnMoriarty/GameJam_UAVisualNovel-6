extends Control

func _ready() -> void:
	# hook button pressed to our handler via a Callable
	$Panel/Button.connect("pressed", Callable(self, "_on_Button_pressed"))

func _on_Button_pressed() -> void:
	GameState.go_to_vn()
