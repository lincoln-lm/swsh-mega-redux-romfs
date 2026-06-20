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

layout (binding = 12, std140) uniform sysCustomShaderUniformBlock1
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock1;

layout (binding = 10, std140) uniform sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} _sysCustomShaderReservedUniformBlockParam;

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;


layout (binding = 13, std140) uniform sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock2;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (binding = 2) uniform sampler2D sysTextureSampler2;
layout (binding = 4) uniform sampler2D sysDepthBufferTexture;
layout (binding = 1) uniform sampler2D sysTextureSampler1;
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
    precise float temp_6;
    bool temp_7;
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
    precise float temp_21;
    int temp_22;
    int temp_23;
    int temp_24;
    int temp_25;
    bool temp_26;
    bool temp_27;
    int temp_28;
    int temp_29;
    int temp_30;
    bool temp_31;
    temp_0 = 1.0 / in_attr4.w;
    temp_1 = fma(clamp(in_attr5.y, 0.0, 1.0), 0.0 - _sysCustomShaderReservedUniformBlockParam.data[3].x, _sysCustomShaderReservedUniformBlockParam.data[3].x);
    temp_2 = exp2(log2(abs(fma(exp2(log2(abs(clamp(0.0 - in_attr6.z + 1.0 + in_attr7.w, 0.0, 1.0) * texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).x)) * _sysCustomShaderReservedUniformBlockParam.data[3].z), texture(sysTextureSampler2, vec2(in_attr3.x, in_attr3.y)).x, exp2(log2(abs(clamp(0.0 - in_attr6.z + 1.0 + in_attr7.w, 0.0, 1.0) * texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).x)) * _sysCustomShaderReservedUniformBlockParam.data[3].z)) * 0.5)) * 0.675000012) + 0.0 - fma(in_attr0.w, -0.5, temp_1) + -1.0;
    temp_3 = ceil(clamp(temp_2 + -0.0, 0.0, 1.0));
    temp_4 = ceil(temp_1 + temp_2 + -9.99999975E-05);
    temp_5 = in_attr1.w * fma(temp_3, _sysCustomShaderReservedUniformBlockParam.data[3].w, fma(temp_3, 0.0 - temp_4, temp_4));
    temp_6 = clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(in_attr4.x * _sysCustomShaderUniformBlock1.data[1].x * temp_0, in_attr4.y * _sysCustomShaderUniformBlock1.data[1].y * temp_0)).x, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr4.z * temp_0, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y) * 0.0 - _sysViewUniformBlock.data[18].z) * (1.0 / _sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(temp_5 + -0.0, 0.0, 1.0) * in_attr5.x;
    temp_7 = temp_6 <= _sysEmitterStaticUniformBlock.data[94].z;
    if (temp_7)
    {
        discard;
    }
    temp_8 = in_attr1.y;
    temp_9 = in_attr1.z;
    temp_10 = in_attr1.x;
    temp_11 = clamp(0.0 - in_attr6.y + 1.0, 0.0, 1.0) * _sysCustomShaderReservedUniformBlockParam.data[4].w;
    temp_12 = exp2(log2(abs(texture(sysTextureSampler1, vec2(in_attr2.z, in_attr2.w)).x)) * _sysCustomShaderReservedUniformBlockParam.data[3].y);
    temp_13 = fma(temp_3, fma(temp_11, 0.0 - _sysCustomShaderReservedUniformBlockParam.data[4].x, fma(0.0 - temp_10 + in_attr0.x, temp_12, temp_10)), temp_11 * _sysCustomShaderReservedUniformBlockParam.data[4].x);
    temp_14 = fma(temp_3, fma(temp_11, 0.0 - _sysCustomShaderReservedUniformBlockParam.data[4].y, fma(0.0 - temp_8 + in_attr0.y, temp_12, temp_8)), temp_11 * _sysCustomShaderReservedUniformBlockParam.data[4].y);
    temp_15 = fma(temp_3, fma(temp_11, 0.0 - _sysCustomShaderReservedUniformBlockParam.data[4].z, fma(0.0 - temp_9 + in_attr0.z, temp_12, temp_9)), temp_11 * _sysCustomShaderReservedUniformBlockParam.data[4].z);
    if (temp_7)
    {
        sysOutputColor0.x = temp_13;
        sysOutputColor0.y = temp_14;
        sysOutputColor0.z = temp_15;
        sysOutputColor0.w = temp_5;
        break;
    }
    sysOutputColor0 = vec4(temp_13, temp_14, temp_15, temp_6);
} while (false);
}