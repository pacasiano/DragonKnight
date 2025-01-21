extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer
@onready var coinsfx: AudioStreamPlayer = $coinsfx

func _on_body_entered(_body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup")
	coinsfx.play()
	timer.start()
	
func _on_timer_timeout() -> void:
	queue_free()
