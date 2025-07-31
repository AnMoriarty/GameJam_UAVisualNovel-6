extends Node
signal dialogue_finished

func start_dialogue(key: String) -> void:
	# connect to the end-of-timeline signal on the Dialogic singleton
	Dialogic.timeline_ended.connect(Callable(self, "_on_dialogue_end"))
	# now actually start the timeline
	Dialogic.start(key)

func _on_dialogue_end() -> void:
	# let the rest of your game know we're done
	emit_signal("dialogue_finished")
	# disconnect so we only handle the next run once
	Dialogic.timeline_ended.disconnect(Callable(self, "_on_dialogue_end"))
