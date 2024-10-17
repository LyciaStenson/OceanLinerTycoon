extends MeshInstance3D

@export var bow_length = 5.0

func _ready():
	var st = SurfaceTool.new()
	
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	
	# Prepare attributes for add_vertex.
	st.set_normal(Vector3(0, 0, 1))
	st.set_uv(Vector2(0, 0))
	# Call last for each vertex, adds the above attributes.
	st.add_vertex(Vector3(-1, -1, 0))

	st.set_normal(Vector3(0, 0, 1))
	st.set_uv(Vector2(0, 1))
	st.add_vertex(Vector3(-1, 1, 0))

	st.set_normal(Vector3(0, 0, 1))
	st.set_uv(Vector2(1, 1))
	st.add_vertex(Vector3(1, 1, 0))
	
	var generated_mesh = st.commit()
	
	set_mesh(generated_mesh)
