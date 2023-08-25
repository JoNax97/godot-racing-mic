extends PathFollow

onready var path :Path = $".."
var length
var position = 0
export(float) var speed = 1
var effect : AudioEffectRecord
var bus_index

onready var audio_stream_player := $AudioStreamPlayer
onready var label_3d = $Camera/Label3D

func _ready():
	length = path.curve.get_baked_length()
	
	bus_index = AudioServer.get_bus_index("Microphone")
	
func _process(delta):
	
	var pos_normalized = position/length
	
	unit_offset = pos_normalized
	
	var volume = db2linear(AudioServer.get_bus_peak_volume_left_db(bus_index, 0))
	
	position = volume * speed * delta
	
	Label.text
	
	










