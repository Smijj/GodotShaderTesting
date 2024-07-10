shader_type spatial;

uniform float divider :hint_range(-1.0, 1.0, 0.1) = 1.0;
uniform sampler2D sampler;
//uniform noiseTexture2D tex;

void vertex() {
	
	if (VERTEX.y > divider*UV.y){
		vec4 pixelPos = texture(sampler, UV);
		//VERTEX += sin(VERTEX.x * pixelPos.x * TIME);
		//VERTEX += sin(VERTEX.y * pixelPos.y * TIME);
		//VERTEX += sin(VERTEX.z * pixelPos.z * TIME);
		
	}
	
}

void fragment() {
	// Called for every pixel the material is visible on.
}
