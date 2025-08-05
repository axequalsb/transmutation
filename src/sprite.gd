extends Node


var dragging = true
var click_radius = 32 # Size of the sprite.


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if dragging and event.pressed:
			dragging = false

	if event is InputEventMouseMotion and dragging:
		# While dragging, move the sprite with the mouse.
		$Sprite2D.position = event.position
