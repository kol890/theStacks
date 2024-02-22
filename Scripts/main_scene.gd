extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.timeline_ended.connect(ended)
	Dialogic.start("timeline")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func ended():
	Dialogic.timeline_ended.disconnect(ended)
	get_tree().quit()
