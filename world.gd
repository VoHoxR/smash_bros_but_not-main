extends Node2D
@onready var noseenomove = $noseenomove
@onready var player = $player
@onready var label = $"Control/Panel/Ze Timer2"
@onready var timer = $Control/Panel/Timer2
@onready var hideywalls = $hideywalls
func _ready():
	timer.start()
	
func _process(delta):
		
	label.text = str(round(timer.time_left))
	if int(timer.time_left) == 6:
		noseenomove.visible = false
	


func _on_timer_2_timeout():
	for N in hideywalls.get_children():
		N.position.x = randf_range(0,950)
	noseenomove.visible = false
	if player.is_hiding == false:
		get_tree().quit
	else:
		timer.start()
		
