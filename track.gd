tool
extends Path


# Called when the node enters the scene tree for the first time.
func _ready():
	flatten_curve()
#	connect("curve_changed", self, "flatten_curve")
	
func flatten_curve():
	for i in range(0, curve.get_point_count()):
		var point = curve.get_point_position(i)
		point.y = 0
		curve.set_point_position(i, point)
		
	for i in range(0, curve.get_point_count()):
		var point = curve.get_point_in(i)
		point.y = 0
		curve.set_point_in(i, point)
		
	for i in range(0, curve.get_point_count()):
		var point = curve.get_point_out(i)
		point.y = 0
		curve.set_point_out(i, point)
