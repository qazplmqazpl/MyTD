extends BlockDocker
@onready
var ourtilemaplayer :TileMapLayer = $"../../../TileMapLayerPosReference"
@onready
var ourdockertilemaplayer :CustomTileMap = $"../../../../CustomTileMap"

func dockedblock_set(value):
	print("PlayAreaDocker", ourtilemaplayer.local_to_map(get_local_mouse_position()))
	var tile = ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))
	if tile != null: tile.dockedblock_set(value)
	


func _get_drag_data(_pos):
	var tile = ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))
	if tile != null: return tile._get_drag_data(_pos-ourdockertilemaplayer.tilepos(ourtilemaplayer.local_to_map(get_local_mouse_position())))
	
func _can_drop_data(_pos, data):
	var tile = ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))
	if tile != null: return tile._can_drop_data(_pos-ourdockertilemaplayer.tilepos(ourtilemaplayer.local_to_map(get_local_mouse_position())), data)
	
func _drop_data(_pos, data):
	var tile = ourdockertilemaplayer.get_tile_at_pos(ourtilemaplayer.local_to_map(get_local_mouse_position()))
	if tile != null: return tile._drop_data(_pos-ourdockertilemaplayer.tilepos(ourtilemaplayer.local_to_map(get_local_mouse_position())), data)
	
