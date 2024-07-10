shader_type spatial;

void vertex() {
	// Called for every vertex the material is visible on.
	VERTEX.y += sin(TIME + VERTEX.x * (VERTEX.x * 20.0));
	VERTEX.x += 10.0 * VERTEX.x;
	
	//VERTEX.r += 2.0 * VERTEX.r;
}

void fragment() {
	// Called for every pixel the material is visible on.
	
	vec3 colour;
	colour.r = sin(TIME * 10.0 + VERTEX.x) + 1.0;
	colour.g = sin(-TIME * 1.0 + VERTEX.x) + 2.0;
	colour.b = sin(TIME * 5.0 + VERTEX.x) + 1.0;
	ALBEDO = colour;
	ROUGHNESS = 0.2;
	RIM = 0.1;
	
	//if (UV.x > 0.5) {
		//ALBEDO = vec3(0,0,1);
		//ROUGHNESS = 0.2;
		//RIM = 1.0;
	//} else {
		//ALBEDO = vec3(1,0.5,0.1);
		//ROUGHNESS = 0.5;
		//RIM = 10.0;
	//}
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
