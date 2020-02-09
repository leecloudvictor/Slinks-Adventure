# Hat.gd
extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var door = get_node("Door")
	for body in bodies:
		if body.name == "Slink":
			remove_child(door)
			hide()