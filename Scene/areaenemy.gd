extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var frame=preload("res://sayayin.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_areaenemy_body_entered(body):
	if body.is_in_group("Player"):
		#var sprite=get_parent().get_parent().get_node("enemynode/Sprite")
		#sprite.set_texture(frame)
		var sprite=get_parent().get_parent().get_parent().get_node("AnimatedSprite")
		sprite.play("superdog")
		Puntuacion.speed=4
		print("ENTRO")


func _on_areaenemy_body_exited(body):
	if body.is_in_group("Player"):
		var sprite=get_parent().get_parent().get_parent().get_node("AnimatedSprite")
		sprite.play("walk")
		Puntuacion.speed=1
		print("SALIO")
