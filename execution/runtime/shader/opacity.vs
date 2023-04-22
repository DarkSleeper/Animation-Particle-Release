layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec3 world_normal;
out vec4 obj_color;
out vec2 TexCoords;

uniform mat4 mat_3d_to_2d;
uniform mat4 model;

void main()
{
    gl_Position = mat_3d_to_2d * model * vec4(aPos, 1.0f); 
    world_normal = normalize(vec4(model *vec4(aNormal, 0)).xyz);
    obj_color = vec4(1.0);
    TexCoords = vec2(aTexCoords.x, 1 - aTexCoords.y);
}