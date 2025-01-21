extends Area2D

@onready var timer: Timer = $Timer
@onready var hurtsound: AudioStreamPlayer = $hurtsound

func _on_body_entered(_body: Node2D) -> void:
	print("you have died!")
	hurtsound.play()
	timer.start()
	
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
