extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	print("entre")
	
#func _on_Arma1_body_entered(body):
	#var bala = preload("res://icon.png").instance()
	#get_parent().add_child(bala)	
	#if body.is_in_group("Player"):
		#body.queue_free()
