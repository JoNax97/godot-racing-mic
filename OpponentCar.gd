extends PathFollow

onready var path :Path = $".."
var length
var position = 0
export(float) var speed = 1

func _ready():
	length = path.curve.get_baked_length()
	
func _process(delta):

	var current_speed = speed 
	position += current_speed * delta
	
	var pos_normalized = position/length
	unit_offset = pos_normalized










