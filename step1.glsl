void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;

    // Time varying pixel color
    vec3 col = vec3(1,1,1);
    
    float sum = (fragCoord.x-(iResolution.x/2.0))*(fragCoord.x-(iResolution.x/2.0))+(fragCoord.y-(iResolution.y/2.0))*(fragCoord.y-(iResolution.y/2.0));
    if (mod(sqrt(sum),10.0)<2.0){
        col = vec3(0,0,0);
    }

    //vec3 col = 0.5 + 0.5*cos(iTime+uv.xyx+vec3(0,2,4));

    // Output to screen
    fragColor = vec4(col,1.0);
}