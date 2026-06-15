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

layout (binding = 4) uniform sampler2D sysDepthBufferTexture;
layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (binding = 3) uniform sampler2D sysFrameBufferTexture;
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
    precise float temp_6;
    precise float temp_7;
    precise float temp_8;
    bool temp_9;
    precise vec3 temp_10;
    precise float temp_11;
    precise float temp_12;
    precise vec3 temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    int temp_18;
    int temp_19;
    int temp_20;
    int temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    temp_0 = in_attr2.x;
    temp_1 = in_attr2.y;
    temp_2 = 1.0 / in_attr2.w;
    temp_3 = in_attr6.x;
    temp_4 = in_attr6.y;
    temp_5 = in_attr6.z;
    temp_6 = inversesqrt(fma(temp_5, temp_5, fma(temp_4, temp_4, temp_3 * temp_3)));
    temp_7 = clamp((abs(fma(temp_5 * temp_6, in_attr5.z, fma(temp_4 * temp_6, in_attr5.y, temp_3 * temp_6 * in_attr5.x))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_8 = fma(temp_7, -2.0, 3.0) * temp_7 * temp_7 * clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(temp_0 * _sysCustomShaderUniformBlock1.data[1].x * temp_2, temp_1 * _sysCustomShaderUniformBlock1.data[1].y * temp_2)).x, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr2.z * temp_2, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y) * 0.0 - _sysViewUniformBlock.data[18].z) * (1.0 / _sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(in_attr4.w * in_attr0.w, 0.0, 1.0) * in_attr3.x;
    temp_9 = temp_8 <= _sysEmitterStaticUniformBlock.data[94].z;
    if (temp_9)
    {
        discard;
    }
    temp_10 = texture(sysTextureSampler0, vec2(in_attr1.x, in_attr1.y)).xyw;
    temp_11 = temp_10.z;
    temp_12 = in_attr3.y;
    temp_13 = texture(sysFrameBufferTexture, vec2(max(0.0, min(fma(temp_11, temp_12 * _sysEmitterStaticUniformBlock.data[16].x * fma(temp_10.x, -2.0, 1.0) * 25.0, temp_0) * _sysCustomShaderUniformBlock1.data[1].x * temp_2, -0.00100000005 + _sysCustomShaderUniformBlock1.data[1].x)), max(0.0, min(fma(temp_11, temp_12 * _sysEmitterStaticUniformBlock.data[16].y * fma(temp_10.y, -2.0, 1.0) * 25.0, temp_1) * _sysCustomShaderUniformBlock1.data[1].y * temp_2, -0.00100000005 + _sysCustomShaderUniformBlock1.data[1].y)))).xyz;
    temp_14 = temp_13.x;
    temp_15 = temp_13.y;
    temp_16 = temp_13.z;
    temp_17 = temp_14 * in_attr0.x;
    temp_18 = floatBitsToInt(temp_14);
    temp_19 = floatBitsToInt(temp_15);
    temp_20 = floatBitsToInt(temp_16);
    temp_21 = floatBitsToInt(temp_17);
    if (temp_9)
    {
        temp_18 = 0;
    }
    if (temp_9)
    {
        temp_19 = 0;
    }
    if (temp_9)
    {
        temp_20 = 0;
    }
    temp_22 = temp_17 * in_attr4.x;
    temp_23 = temp_15 * in_attr0.y * in_attr4.y;
    if (temp_9)
    {
        temp_21 = 0;
    }
    if (temp_9)
    {
        sysOutputColor0.x = intBitsToFloat(temp_18);
        sysOutputColor0.y = intBitsToFloat(temp_19);
        sysOutputColor0.z = intBitsToFloat(temp_20);
        sysOutputColor0.w = intBitsToFloat(temp_21);
        break;
    }
    temp_24 = temp_16 * in_attr0.z * in_attr4.z;
    sysOutputColor0 = vec4(temp_22, temp_23, temp_24, temp_8);
} while (false);
}
