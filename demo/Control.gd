extends Node2D
var toast

func _ready():
	if(Engine.has_singleton("GodotToast")):
		toast= Engine.get_singleton("GodotToast")

func _on_Button_pressed():
	var toSend = "toast is ready"
	if toast:
		toast.sendToast(toSend)
