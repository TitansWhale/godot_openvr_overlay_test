extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _init():
	# Get configuration object
	var OpenVRConfig = preload("res://addons/godot-openvr/OpenVRConfig.gdns").new()
	OpenVRConfig.set_application_type(2) # Set to OVERLAY MODE = 2, NORMAL MODE = 1
	OpenVRConfig.set_tracking_universe(1) # Set to SEATED MODE = 0, STANDING MODE = 1, RAW MODE = 2
	
			# Find the OpenVR interface and initialise it
	var arvr_interface : ARVRInterface = ARVRServer.find_interface("OpenVR")
	if arvr_interface and arvr_interface.initialize():
		print(arvr_interface.get_render_targetsize())
		#  $viewport is null in _init(), so I set it in the sense
		#$Viewport.size = arvr_interface.get_render_targetsize()


# Called when the node enters the scene tree for the first time.
func _ready():


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
