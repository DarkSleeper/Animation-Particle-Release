out vec4 FragColor;

in vec3 world_normal;
in vec4 obj_color;
in vec2 TexCoords;

uniform sampler2D texture_diffuse;
uniform vec3 direct_light[];

void main()
{
    float diffuse_factor = 0;
    diffuse_factor += clamp(dot(normalize(-1.0*direct_light[0]),world_normal), 0.0, 1.0);
    vec4 color = vec4(vec3(obj_color*0.5+0.5*obj_color*diffuse_factor),1.0);

    FragColor = color * texture2D(texture_diffuse, TexCoords);
}