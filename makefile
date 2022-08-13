
all:
	valac --vapidir=vapi --pkg gtk4 --pkg glesv2 --pkg gl --pkg glfw3 src/*.vala -o ep
