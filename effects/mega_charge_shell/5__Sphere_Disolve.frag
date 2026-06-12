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

layout (binding = 12, std140) uniform _sysCustomShaderUniformBlock1
{
    precise vec4 data[4096];
} sysCustomShaderUniformBlock1;

layout (binding = 6, std140) uniform _sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} sysEmitterStaticUniformBlock;

layout (binding = 10, std140) uniform _sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} sysCustomShaderReservedUniformBlockParam;

layout (binding = 5, std140) uniform _sysViewUniformBlock
{
    precise vec4 data[4096];
} sysViewUniformBlock;


layout (binding = 13, std140) uniform _sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} sysCustomShaderUniformBlock2;

layout (binding = 2) uniform sampler2D sysTextureSampler2;
layout (binding = 1) uniform sampler2D sysTextureSampler1;
layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (binding = 4) uniform sampler2D sysDepthBufferTexture;
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
    precise vec2 temp_0;
    precise float temp_1;
    precise float temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    precise float temp_7;
    precise vec4 temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    bool temp_14;
    precise float temp_15;
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
    int temp_28;
    int temp_29;
    int temp_30;
    int temp_31;
    bool temp_32;
    bool temp_33;
    int temp_34;
    int temp_35;
    int temp_36;
    bool temp_37;
    temp_0 = texture(sysTextureSampler2, vec2(in_attr3.x, in_attr3.y)).xy;
    temp_1 = in_attr5.y;
    temp_2 = in_attr6.y;
    temp_3 = in_attr4.x;
    temp_4 = in_attr4.y;
    temp_5 = 1.0 / in_attr4.w;
    temp_6 = fma(temp_0.x, 2.0, -1.0);
    temp_7 = fma(temp_0.y, 2.0, -1.0);
    temp_8 = texture(sysTextureSampler0, vec2(fma(temp_6, temp_1, in_attr2.x), fma(temp_7, temp_2, in_attr2.y))).xyzw;
    temp_9 = temp_3 * temp_5;
    temp_10 = temp_4 * temp_5;
    temp_11 = clamp(clamp(fma(in_attr0.w, 2.0, texture(sysTextureSampler1, vec2(fma(temp_6, temp_1, in_attr2.z), fma(temp_7, temp_2, in_attr2.w))).w) + -1.0, 0.0, 1.0) * temp_8.w * sysCustomShaderReservedUniformBlockParam.data[3].x, 0.0, 1.0);
    temp_12 = fma(clamp(temp_11 * in_attr1.w, 0.0, 1.0), 0.0 - in_attr6.z, clamp(temp_11 * in_attr1.w, 0.0, 1.0)) * in_attr7.w;
    temp_13 = clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(temp_3 * sysCustomShaderUniformBlock1.data[1].x * temp_5, temp_4 * sysCustomShaderUniformBlock1.data[1].y * temp_5)).x, sysViewUniformBlock.data[18].w, 0.0 - sysViewUniformBlock.data[18].y), 0.0 - sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr4.z * temp_5, sysViewUniformBlock.data[18].w, 0.0 - sysViewUniformBlock.data[18].y) * 0.0 - sysViewUniformBlock.data[18].z) * (1.0 / sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(temp_12 + -0.0, 0.0, 1.0) * in_attr5.x;
    temp_14 = temp_13 <= sysEmitterStaticUniformBlock.data[94].z;
    if (temp_14)
    {
        discard;
    }
    temp_15 = fma(temp_8.y, sysCustomShaderReservedUniformBlockParam.data[3].y, fma(fma(sysCustomShaderReservedUniformBlockParam.data[4].w, 0.0 - sysCustomShaderReservedUniformBlockParam.data[4].y, in_attr0.y), temp_11, sysCustomShaderReservedUniformBlockParam.data[4].w * sysCustomShaderReservedUniformBlockParam.data[4].y)) * in_attr1.y;
    temp_16 = fma(temp_8.z, sysCustomShaderReservedUniformBlockParam.data[3].y, fma(fma(sysCustomShaderReservedUniformBlockParam.data[4].w, 0.0 - sysCustomShaderReservedUniformBlockParam.data[4].z, in_attr0.z), temp_11, sysCustomShaderReservedUniformBlockParam.data[4].w * sysCustomShaderReservedUniformBlockParam.data[4].z)) * in_attr1.z;
    temp_17 = fma(temp_8.x, sysCustomShaderReservedUniformBlockParam.data[3].y, fma(fma(sysCustomShaderReservedUniformBlockParam.data[4].w, 0.0 - sysCustomShaderReservedUniformBlockParam.data[4].x, in_attr0.x), temp_11, sysCustomShaderReservedUniformBlockParam.data[4].w * sysCustomShaderReservedUniformBlockParam.data[4].x)) * in_attr1.x;
    temp_18 = clamp((texture(sysDepthBufferTexture, vec2(fma(sysCustomShaderReservedUniformBlockParam.data[3].z, -0.001, temp_9), temp_10)).x + texture(sysDepthBufferTexture, vec2(temp_9, fma(sysCustomShaderReservedUniformBlockParam.data[3].z, -0.001, temp_10))).x + texture(sysDepthBufferTexture, vec2(temp_9, fma(sysCustomShaderReservedUniformBlockParam.data[3].z, 0.001, temp_10))).x + texture(sysDepthBufferTexture, vec2(fma(sysCustomShaderReservedUniformBlockParam.data[3].z, 0.001, temp_9), temp_10)).x + texture(sysDepthBufferTexture, vec2(temp_9, temp_10)).x) * sysCustomShaderReservedUniformBlockParam.data[3].w * 0.200000003, 0.0, 1.0);
    temp_19 = fma(temp_18, 0.0 - temp_17, temp_17);
    temp_20 = fma(temp_18, 0.0 - temp_15, temp_15);
    temp_21 = fma(temp_18, 0.0 - temp_16, temp_16);
    if (temp_14)
    {
        sysOutputColor0.x = temp_19;
        sysOutputColor0.y = temp_20;
        sysOutputColor0.z = temp_21;
        sysOutputColor0.w = temp_12;
        break;
    }
    sysOutputColor0.x = temp_19;
    sysOutputColor0.y = temp_20;
    sysOutputColor0.z = temp_21;
    sysOutputColor0.w = temp_12;
    break;
} while (false);
}
