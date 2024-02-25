extends Node2D


func _on_play_pressed():
	get_tree().change_scene_to_file("res://World/world.tscn")

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Settings Menu/settings_menu.tscn")	

func _on_quit_pressed():
	get_tree().quit()
