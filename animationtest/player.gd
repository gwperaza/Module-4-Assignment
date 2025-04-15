extends Node2D


func _ready() -> void:
	self.position.x = 550
	self.position.y = 300

func _process(delta: float) -> void:
	input()

func input():
	var run_left = Input.is_action_pressed("run_left")
	var run_right = Input.is_action_pressed("run_right")
	if run_left:
		$AnimationPlayer.play("run")
		self.scale.x = -1
	elif run_right:
		$AnimationPlayer.play("run")
		self.scale.x = 1
	else:
		$AnimationPlayer.play("idle")
