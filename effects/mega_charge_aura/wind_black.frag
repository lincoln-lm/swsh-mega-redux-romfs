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

layout (binding = 10, std140) uniform sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} _sysCustomShaderReservedUniformBlockParam;

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
layout (location = 5) in vec4 in_attr5;
layout (location = 6) in vec4 in_attr6;

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
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    int temp_21;
    int temp_22;
    int temp_23;
    int temp_24;
    bool temp_25;
    bool temp_26;
    int temp_27;
    int temp_28;
    int temp_29;
    bool temp_30;
    temp_0 = fma(clamp(in_attr4.y, 0.0, 1.0), 0.0 - _sysCustomShaderReservedUniformBlockParam.data[3].x, _sysCustomShaderReservedUniformBlockParam.data[3].x);
    temp_1 = exp2(log2(abs(fma(exp2(log2(abs(clamp(0.0 - in_attr5.z + 1.0 + in_attr6.w, 0.0, 1.0) * texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).x)) * _sysCustomShaderReservedUniformBlockParam.data[3].z), texture(sysTextureSampler2, vec2(in_attr3.x, in_attr3.y)).x, exp2(log2(abs(clamp(0.0 - in_attr5.z + 1.0 + in_attr6.w, 0.0, 1.0) * texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).x)) * _sysCustomShaderReservedUniformBlockParam.data[3].z)) * 0.5)) * 0.675000012) + 0.0 - fma(in_attr0.w, -0.5, temp_0) + -1.0;
    temp_2 = ceil(clamp(temp_1 + -0.0, 0.0, 1.0));
    temp_3 = ceil(temp_0 + temp_1 + -9.99999975E-05);
    temp_4 = in_attr1.w * fma(temp_2, _sysCustomShaderReservedUniformBlockParam.data[3].w, fma(temp_2, 0.0 - temp_3, temp_3));
    temp_5 = clamp(temp_4 + -0.0, 0.0, 1.0) * in_attr4.x;
    temp_6 = temp_5 <= _sysEmitterStaticUniformBlock.data[94].z;
    if (temp_6)
    {
        discard;
    }
    temp_7 = in_attr1.y;
    temp_8 = in_attr1.z;
    temp_9 = in_attr1.x;
    temp_10 = clamp(0.0 - in_attr5.y + 1.0, 0.0, 1.0) * _sysCustomShaderReservedUniformBlockParam.data[4].w;
    temp_11 = exp2(log2(abs(texture(sysTextureSampler1, vec2(in_attr2.z, in_attr2.w)).x)) * _sysCustomShaderReservedUniformBlockParam.data[3].y);
    temp_12 = fma(temp_2, fma(temp_10, 0.0 - _sysCustomShaderReservedUniformBlockParam.data[4].x, fma(0.0 - temp_9 + in_attr0.x, temp_11, temp_9)), temp_10 * _sysCustomShaderReservedUniformBlockParam.data[4].x);
    temp_13 = fma(temp_2, fma(temp_10, 0.0 - _sysCustomShaderReservedUniformBlockParam.data[4].y, fma(0.0 - temp_7 + in_attr0.y, temp_11, temp_7)), temp_10 * _sysCustomShaderReservedUniformBlockParam.data[4].y);
    temp_14 = fma(temp_2, fma(temp_10, 0.0 - _sysCustomShaderReservedUniformBlockParam.data[4].z, fma(0.0 - temp_8 + in_attr0.z, temp_11, temp_8)), temp_10 * _sysCustomShaderReservedUniformBlockParam.data[4].z);
    if (temp_6)
    {
        sysOutputColor0.x = temp_12;
        sysOutputColor0.y = temp_13;
        sysOutputColor0.z = temp_14;
        sysOutputColor0.w = temp_4;
        break;
    }

    sysOutputColor0 = vec4(temp_12, temp_13, temp_14, temp_5);
} while (false);
}
