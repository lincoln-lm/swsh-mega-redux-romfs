#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_fragment_shader_interlock : enable
#extension GL_NV_viewport_array2 : enable
#pragma optionNV(fastmath off)

const int undef = 0;

layout (binding = 0, std140) uniform _support_buffer
{
    uint alpha_test;
    uint is_bgra[8];
    precise vec4 viewport_inverse;
    precise vec4 viewport_size;
    int frag_scale_count;
    precise float render_scale[73];
    ivec4 tfe_offset;
    int tfe_vertex_count;
} support_buffer;

layout (binding = 6, std140) uniform _sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} sysEmitterStaticUniformBlock;


layout (binding = 13, std140) uniform _sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} sysCustomShaderUniformBlock2;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise vec3 temp_0;
    precise float temp_1;
    precise float temp_2;
    precise float temp_3;
    bool temp_4;
    int temp_5;
    precise float temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    int temp_15;
    int temp_16;
    int temp_17;
    int temp_18;
    bool temp_19;
    bool temp_20;
    int temp_21;
    int temp_22;
    int temp_23;
    bool temp_24;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr1.x, in_attr1.y)).xyz;
    temp_1 = temp_0.x;
    temp_2 = clamp(temp_1 * in_attr0.w, 0.0, 1.0) * in_attr2.x;
    temp_3 = in_attr0.x;
    temp_4 = temp_2 <= sysEmitterStaticUniformBlock.data[94].z;
    temp_5 = floatBitsToInt(temp_3);
    if (temp_4)
    {
        discard;
    }
    temp_6 = temp_0.y * in_attr0.y;
    temp_7 = temp_0.z * in_attr0.z;
    temp_8 = temp_1 * temp_3;
    if (temp_4)
    {
        temp_5 = 0;
    }
    if (temp_4)
    {
        sysOutputColor0.x = temp_8;
        sysOutputColor0.y = temp_6;
        sysOutputColor0.z = temp_7;
        sysOutputColor0.w = intBitsToFloat(temp_5);
        break;
    }
    
    sysOutputColor0.x = temp_8;
    sysOutputColor0.y = temp_6;
    sysOutputColor0.z = temp_7;
    sysOutputColor0.w = temp_2;
    break;
} while (false);
}
