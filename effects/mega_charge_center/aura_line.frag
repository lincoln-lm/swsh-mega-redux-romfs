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
layout (binding = 1) uniform sampler2D sysTextureSampler1;
layout (binding = 2) uniform sampler2D sysTextureSampler2;
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
    precise vec4 temp_0;
    precise vec4 temp_1;
    precise float temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    precise float temp_7;
    bool temp_8;
    int temp_9;
    precise vec3 temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    int temp_15;
    int temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    int temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyzw;
    temp_1 = texture(sysTextureSampler1, vec2(in_attr2.z, in_attr2.w)).xyzw;
    temp_2 = in_attr7.x;
    temp_3 = in_attr7.y;
    temp_4 = in_attr7.z;
    temp_5 = inversesqrt(fma(temp_4, temp_4, fma(temp_3, temp_3, temp_2 * temp_2)));
    temp_6 = clamp((abs(fma(temp_4 * temp_5, in_attr6.z, fma(temp_3 * temp_5, in_attr6.y, temp_2 * temp_5 * in_attr6.x))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (_sysEmitterStaticUniformBlock.data[92].w + 0.0 - _sysEmitterStaticUniformBlock.data[92].z)), 0.0, 1.0);
    temp_7 = fma(temp_6, -2.0, 3.0) * temp_6 * temp_6 * clamp(in_attr1.w * clamp(fma(temp_0.w * temp_1.w, in_attr5.w, 0.0 - in_attr0.w) * 4.0, 0.0, 1.0), 0.0, 1.0) * in_attr4.x;
    temp_8 = temp_7 <= _sysEmitterStaticUniformBlock.data[94].z;
    temp_9 = floatBitsToInt(1.0 / gl_FragCoord.w);
    if (temp_8)
    {
        discard;
    }
    temp_10 = texture(sysTextureSampler2, vec2(in_attr3.x, in_attr3.y)).xyz;
    temp_11 = in_attr1.x;
    temp_12 = in_attr1.y;
    temp_13 = in_attr1.z;
    temp_14 = temp_0.z * temp_1.z * temp_10.z;
    temp_15 = floatBitsToInt(temp_12);
    temp_16 = floatBitsToInt(temp_14);
    if (temp_8)
    {
        temp_15 = 0;
    }
    if (temp_8)
    {
        temp_9 = 0;
    }
    temp_17 = 0.0 - temp_13 + in_attr0.z;
    temp_18 = fma(temp_0.x * temp_1.x * temp_10.x, 0.0 - temp_11 + in_attr0.x, temp_11) * in_attr5.x;
    temp_19 = fma(temp_0.y * temp_1.y * temp_10.y, 0.0 - temp_12 + in_attr0.y, temp_12) * in_attr5.y;
    temp_20 = floatBitsToInt(temp_17);
    if (temp_8)
    {
        temp_16 = 0;
    }
    if (temp_8)
    {
        temp_20 = 0;
    }
    if (temp_8)
    {
        sysOutputColor0.x = intBitsToFloat(temp_15);
        sysOutputColor0.y = intBitsToFloat(temp_16);
        sysOutputColor0.z = intBitsToFloat(temp_9);
        sysOutputColor0.w = intBitsToFloat(temp_20);
        break;
    }
    temp_21 = fma(temp_14, temp_17, temp_13) * in_attr5.z;
    sysOutputColor0 = vec4(temp_18, temp_19, temp_21, temp_7);
} while (false);
}
