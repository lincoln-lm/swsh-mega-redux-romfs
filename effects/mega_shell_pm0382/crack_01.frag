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

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;

layout (binding = 10, std140) uniform sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} _sysCustomShaderReservedUniformBlockParam;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;
layout (location = 5) in vec4 in_attr5;
layout (location = 6) in vec4 in_attr6;
layout (location = 7) in vec4 in_attr7;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise float temp_0;
    precise float temp_1;
    precise float temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    bool temp_6;
    precise vec3 temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    int temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    int temp_22;
    int temp_23;
    int temp_24;
    precise float temp_25;
    int temp_26;
    int temp_27;
    int temp_28;
    bool temp_29;
    bool temp_30;
    int temp_31;
    int temp_32;
    bool temp_33;
    temp_0 = in_attr7.x;
    temp_1 = in_attr7.y;
    temp_2 = in_attr7.z;
    temp_3 = inversesqrt(fma(temp_2, temp_2, fma(temp_1, temp_1, temp_0 * temp_0)));
    temp_4 = clamp((abs(fma(temp_2 * temp_3, in_attr6.z, fma(temp_1 * temp_3, in_attr6.y, temp_0 * temp_3 * in_attr6.x))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_5 = fma(temp_4, -2.0, 3.0) * temp_4 * temp_4 * clamp(in_attr5.w * in_attr0.w, 0.0, 1.0) * in_attr4.x;
    temp_6 = temp_5 <= _sysEmitterStaticUniformBlock.data[94].z;
    if (temp_6)
    {
        discard;
    }
    temp_7 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyz;
    temp_8 = in_attr1.x;
    temp_9 = in_attr1.y;
    temp_10 = in_attr1.z;
    temp_11 = floatBitsToInt(temp_10);
    if (temp_6)
    {
        temp_11 = 0;
    }
    temp_12 = fma(temp_7.x * temp_7.x, 0.0 - temp_8 + in_attr0.x, temp_8) * in_attr5.x;
    temp_13 = fma(temp_7.y * temp_7.y, 0.0 - temp_9 + in_attr0.y, temp_9) * in_attr5.y;
    temp_14 = fma(temp_7.z * temp_7.z, 0.0 - temp_10 + in_attr0.z, temp_10) * in_attr5.z;
    if (temp_6)
    {
        sysOutputColor0.x = temp_12;
        sysOutputColor0.y = temp_13;
        sysOutputColor0.z = temp_14;
        sysOutputColor0.w = intBitsToFloat(temp_11);
        break;
    }
    sysOutputColor0 = vec4(temp_12, temp_13, temp_14, temp_5);
} while (false);
}
