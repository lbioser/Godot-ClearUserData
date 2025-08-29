@tool
extends EditorPlugin

func _enter_tree() -> void:
	add_tool_menu_item("ClearUserData", _clear_user_data)

func _clear_user_data():
	var user_data_dir = OS.get_user_data_dir()
	# 使用OS命令删除文件夹
	var output = []
	var exit_code = OS.execute("rm", ["-rf", user_data_dir],output)
	if exit_code == 0:
		print("在:",user_data_dir, " 目录的用户数据已删除!!!")
	else:
		print("删除失败：", output)

func _exit_tree() -> void:
	pass
