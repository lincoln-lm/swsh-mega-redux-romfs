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

layout (binding = 11, std140) uniform _sysCustomShaderUniformBlock0
{
    precise vec4 data[4096];
} sysCustomShaderUniformBlock0;

layout (binding = 6, std140) uniform _sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} sysEmitterStaticUniformBlock;

layout (binding = 10, std140) uniform _sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} sysCustomShaderReservedUniformBlockParam;


layout (binding = 13, std140) uniform _sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} sysCustomShaderUniformBlock2;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise float temp_0;
    precise float temp_1;
    precise float temp_2;
    bool temp_3;
    int temp_4;
    int temp_5;
    precise vec3 temp_6;
    int temp_7;
    int temp_8;
    precise float temp_9;
    int temp_10;
    precise float temp_11;
    precise float temp_12;
    uint temp_13;
    int temp_14;
    uint temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    int temp_30;
    int temp_31;
    int temp_32;
    int temp_33;
    bool temp_34;
    bool temp_35;
    int temp_36;
    int temp_37;
    int temp_38;
    bool temp_39;
    temp_0 = in_attr0.w;
    temp_1 = clamp(in_attr3.w * temp_0, 0.0, 1.0);
    temp_2 = temp_1 * in_attr2.x;
    temp_3 = temp_2 <= sysEmitterStaticUniformBlock.data[94].z;
    temp_4 = floatBitsToInt(temp_1);
    temp_5 = floatBitsToInt(temp_0);
    if (temp_3)
    {
        discard;
    }
    temp_6 = texture(sysTextureSampler0, vec2(in_attr1.x, in_attr1.y)).xyz;
    if (temp_3)
    {
        temp_4 = 0;
    }
    if (temp_3)
    {
        temp_5 = 0;
    }
    temp_7 = undef;
    if (temp_3)
    {
        temp_7 = 0;
    }
    temp_8 = undef;
    if (temp_3)
    {
        temp_8 = 0;
    }
    if (temp_3)
    {
        sysOutputColor0.x = intBitsToFloat(temp_4);
        sysOutputColor0.y = intBitsToFloat(temp_5);
        sysOutputColor0.z = intBitsToFloat(temp_7);
        sysOutputColor0.w = intBitsToFloat(temp_8);
        break;
    }
    temp_9 = in_attr4.x;
    temp_10 = int(trunc(sysCustomShaderReservedUniformBlockParam.data[6].z + 0.5)) << 4;
    temp_11 = in_attr4.y;
    temp_12 = temp_6.x * in_attr0.x * in_attr3.x;
    temp_13 = uint(temp_10 + 160) >> 2;
    temp_14 = int(temp_13) + 1;
    temp_15 = uint(temp_10 + 168) >> 2;
    temp_16 = temp_6.y * in_attr0.y * in_attr3.y;
    temp_17 = temp_6.z * in_attr0.z * in_attr3.z;
    temp_18 = fma(fma(temp_12, 1, 0.0 - temp_12), sysCustomShaderReservedUniformBlockParam.data[6].x, temp_12);
    temp_19 = fma(fma(temp_16, 1, 0.0 - temp_16), sysCustomShaderReservedUniformBlockParam.data[6].x, temp_16);
    temp_20 = fma(fma(temp_17, 1, 0.0 - temp_17), sysCustomShaderReservedUniformBlockParam.data[6].x, temp_17);
    temp_21 = fma(fma(temp_18, 0.0 - temp_9, sysCustomShaderReservedUniformBlockParam.data[9].x), temp_11, temp_18 * temp_9);
    temp_22 = fma(fma(temp_19, 0.0 - temp_9, sysCustomShaderReservedUniformBlockParam.data[9].y), temp_11, temp_19 * temp_9);
    temp_23 = fma(fma(temp_20, 0.0 - temp_9, sysCustomShaderReservedUniformBlockParam.data[9].z), temp_11, temp_20 * temp_9);
    sysOutputColor0.x = temp_21;
    sysOutputColor0.y = temp_22;
    sysOutputColor0.z = temp_23;
    sysOutputColor0.w = temp_2;
    break;
} while (false);
}
