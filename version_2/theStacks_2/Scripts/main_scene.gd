extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.signal_event.connect(dialogic_signal)
	Dialogic.timeline_ended.connect(prologue_ended)
	Dialogic.start("timeline")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func prologue_ended():
	Dialogic.timeline_ended.disconnect(prologue_ended)
	Dialogic.timeline_ended.connect(scene1_ended)
	Dialogic.start("scene1")
	
func scene1_ended():
	Dialogic.timeline_ended.disconnect(scene1_ended)
	get_tree().quit()
	
func dialogic_signal(argument:String):
	if argument == "end_game":
		get_tree().quit() 
