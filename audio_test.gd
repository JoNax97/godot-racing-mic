extends Spatial

var effect : AudioEffectRecord
var bus_index

onready var audio_stream_player := $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	bus_index = AudioServer.get_bus_index("Microphone")
	
func _process(delta):
	var volume = db2linear(AudioServer.get_bus_peak_volume_left_db(bus_index, 0))
	print(volume)
