extends Area

class_name SpeedArea

export var max_speed: float

func _on_body_entered(body):
	if body.name == "player_car_collisions":
		GlobalData.max_speed = max_speed


func _on_body_exited(body):
	if body.name == "player_car_collisions":
		GlobalData.max_speed = GlobalData.global_max_speed
