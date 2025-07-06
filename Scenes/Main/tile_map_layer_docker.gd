extends TileMapLayer

var childarray := []
var lambda = func(pos):
	get_parent.call()
	
func _ready() -> void:

	for i in range(10):
		for j in range(10):
			set_cell(Vector2i(i,j),0,Vector2i(0,0),2)
			childarray.append([])
