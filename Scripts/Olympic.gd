extends Node3D

@export var sink : bool

@export var sink_rate : float
@export var sink_pitch_rate : float
@export var sink_roll_rate : float

@onready var model : Node3D = $Sketchfab_model

func _process(delta):
	if sink:
		position.y -= delta * sink_rate
		rotation.z += delta * sink_pitch_rate
		model.rotation.x += delta * sink_roll_rate
