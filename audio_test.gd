extends Spatial

var effect : AudioEffectRecord
var bus_index

onready var audio_stream_player := $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	return
	bus_index = AudioServer.get_bus_index("Microphone")
	
func _process(delta):
	var volume = audio_stream_player.volume_db
	print(volume)
