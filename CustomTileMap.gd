class_name CustomTileMap extends Node2D
## imitates TileMapLayer but allows interacting with child scenes (easily)

## height of hex tile
var height = 128 
## width of hex tile
var width = 128

## array of tiles using [ [Vector2(posx,posy),node] , ... ] format
var tiles = [] #[ [x,y,node] , ... ]

func _ready():
	fill(0,10,0,10)

func tilepos(posxy: Vector2i):
	return Vector2(width*posxy.x+((posxy.y%2)*width*0.5),height*posxy.y*0.75)
	
func fill(startx:=0,endx:=10,starty:=0,endy:=10):
	for i in range(startx,endx):
		for j in range(starty,endy):
			add(Vector2i(i,j))
			
func add(posxy:Vector2i):
	var node2d = Node2D.new()
	var tile = HexDocker.new()
	node2d.set_position(tilepos(posxy))
	node2d.add_child(tile)
	add_child(node2d)
	#tiles.bsearch_custom(
	tiles.insert(tiles.bsearch_custom([posxy,tile],compare),[posxy,tile])
	
	var newlabel = Label.new()
	newlabel.set_text(str(posxy))
	newlabel.set_z_index(1)
	node2d.add_child(newlabel)
	
func compare(tilea,tileb):
	if tilea[0].x>tileb[0].x: return true
	if tilea[0].x<tileb[0].x: return false
	if tilea[0].y>tileb[0].y: return true
	return false
	
func get_tile_at_pos(posxy:Vector2) -> BlockDocker:
	print(posxy)
	return tiles.get(tiles.bsearch_custom([posxy,null],compare))[1]
	
	
