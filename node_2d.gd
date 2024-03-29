extends Node2D
@onready var moon = $moon
@onready var duckSound = $AudioStreamPlayer

func _ready():
	moon.visible = false

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		moon.visible = true


func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		moon.visible = false


func _on_duck_body_entered(body):
	if body.has_method("player"):
		duckSound.play()
