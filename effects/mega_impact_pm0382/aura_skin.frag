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

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;


layout (binding = 13, std140) uniform sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock2;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (binding = 2) uniform sampler2D sysTextureSampler2;
layout (binding = 1) uniform sampler2D sysTextureSampler1;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise vec2 temp_0;
    precise float temp_1;
    precise vec4 temp_2;
    precise vec4 temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    bool temp_7;
    int temp_8;
    int temp_9;
    int temp_10;
    precise float temp_11;
    int temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr1.x, in_attr1.y)).xw;
    temp_1 = in_attr3.y;
    temp_2 = texture(sysTextureSampler2, vec2(in_attr2.x, in_attr2.y)).xyzw;
    temp_3 = texture(sysTextureSampler1, vec2(fma(temp_1 * _sysEmitterStaticUniformBlock.data[16].x, fma(temp_0.x, 2.0, -1.0), in_attr1.z), fma(temp_1 * _sysEmitterStaticUniformBlock.data[16].y, fma(temp_0.y, 2.0, -1.0), in_attr1.w))).xyzw;
    temp_4 = in_attr4.y;
    temp_5 = in_attr4.x;
    temp_6 = clamp(temp_2.w * temp_3.w * in_attr4.w * in_attr0.w, 0.0, 1.0) * in_attr3.x;
    temp_7 = temp_6 <= _sysEmitterStaticUniformBlock.data[94].z;
    temp_8 = floatBitsToInt(1.0 / gl_FragCoord.w);
    temp_9 = floatBitsToInt(temp_5);
    temp_10 = floatBitsToInt(temp_4);
    if (temp_7)
    {
        discard;
    }
    temp_11 = temp_2.z * temp_3.z;
    temp_12 = floatBitsToInt(temp_11);
    if (temp_7)
    {
        temp_8 = 0;
    }
    if (temp_7)
    {
        temp_12 = 0;
    }
    temp_13 = temp_2.x * temp_3.x * in_attr0.x * temp_5;
    temp_14 = temp_2.y * temp_3.y * in_attr0.y * temp_4;
    if (temp_7)
    {
        temp_9 = 0;
    }
    if (temp_7)
    {
        temp_10 = 0;
    }
    if (temp_7)
    {
        sysOutputColor0.x = intBitsToFloat(temp_12);
        sysOutputColor0.y = intBitsToFloat(temp_9);
        sysOutputColor0.z = intBitsToFloat(temp_8);
        sysOutputColor0.w = intBitsToFloat(temp_10);
        break;
    }
    temp_15 = temp_11 * in_attr0.z * in_attr4.z;
    sysOutputColor0 = vec4(temp_13, temp_14, temp_15, temp_6);
} while (false);
}
