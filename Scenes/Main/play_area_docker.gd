extends BlockDocker
@onready
var ourtilemaplayer :TileMapLayer = $"../../../TileMapLayerPosReference"
@onready
var ourdockertilemaplayer :CustomTileMap = $"../../../../CustomTileMap"

func dockedblock_set(value):
	print("PlayAreaDocker", ourtilemaplayer.local_to_map(get_local_mouse_position()))
	ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position())).dockedblock_set(value)
	#super(value)
	


func _get_drag_data(_pos):
	return ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))._get_drag_data(_pos-ourdockertilemaplayer.tilepos(ourtilemaplayer.local_to_map(get_local_mouse_position())))
	
func _can_drop_data(_pos, data):
	return ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))._can_drop_data(_pos-ourdockertilemaplayer.tilepos(ourtilemaplayer.local_to_map(get_local_mouse_position())), data)
	
	
func _drop_data(_pos, data):
	return ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))._drop_data(_pos-ourdockertilemaplayer.tilepos(ourtilemaplayer.local_to_map(get_local_mouse_position())), data)
