extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().get_node("Player/Camera2D/Label").text="Puntos: "+str(Puntuacion.puntuacion)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _sound():
	get_parent().get_node("sound/AudioStreamPlayer").play()

func _winsound():
	if Puntuacion.puntuacion==6:
			get_parent().get_node("win_sound/AudioStreamPlayer").play()
			return

func _on_Area2D_body_entered(body):
		if body.is_in_group("Player"):
			Puntuacion.puntuacion+=1
			get_parent().get_node("Player/Camera2D/Label").text="Puntos: "+str(Puntuacion.puntuacion)
			_sound()
			_winsound()
			self.queue_free()
			
