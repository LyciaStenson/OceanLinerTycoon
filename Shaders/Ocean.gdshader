shader_type spatial;

uniform vec3 water_color : source_color;

uniform sampler2D water_normal_noise1;
uniform sampler2D water_normal_noise2;

varying vec3 world_pos;

void vertex() {
	
}

void fragment() {
	ALBEDO = water_color;
	vec3 normal_map_1 = texture(water_normal_noise1, UV + TIME * 0.0005).rgb;
	vec3 normal_map_2 = texture(water_normal_noise2, UV + TIME * 0.0015).rgb;
	NORMAL_MAP = mix(normal_map_1, normal_map_2, 0.5);
	ALPHA = 0.85;
	ROUGHNESS = 0.2;
	METALLIC = 0.5;
}
