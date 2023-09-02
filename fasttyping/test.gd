extends Node2D

var active_enemy = null
var currCH:int = 1

func findNE(type_ch :String):
	var promt = get_node("/root/Node2D/CharacterBody2D/Enemy")
	var promt_text =promt.get_promt()
	print(type_ch)
	if promt_text.substr(0,1) == type_ch:
		active_enemy = promt
		print("new Enemy")
		active_enemy.set_next_chr(currCH)
		return

func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		var type_event = event as InputEvent
		var key_type = PackedByteArray([type_event.keycode]).get_string_from_utf8()
		if active_enemy == null:
			findNE(key_type)
		else:
			var pp = active_enemy.get_promt()
			var next_chr = pp.substr(currCH,1)
			print(pp)
			if key_type == next_chr:
				print("success ",currCH)
				currCH +=1
				if currCH ==pp.length():
					print("clear")
					currCH-=1
					active_enemy.queue_free()
					active_enemy == null
				active_enemy.set_next_chr(currCH)
			else:
				print("wrong ", next_chr)
