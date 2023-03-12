extends Node

@export var sword_abillity: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.timeout.connect(on_timer_timeout)


func on_timer_timeout():
	var player = get_tree().get_first_node_in_group("player") as Node2D
	if player == null:
		return
	
	var sword_instance = sword_abillity.instantiate() as Node2D
	player.get_parent().add_child(sword_instance)
	sword_instance.global_position = player.global_position
	
	
