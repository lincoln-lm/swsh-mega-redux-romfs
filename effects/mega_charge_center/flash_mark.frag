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
layout (binding = 1) uniform sampler2D sysTextureSampler1;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;
layout (location = 5) in vec4 in_attr5;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise float temp_0;
    precise vec3 temp_1;
    precise vec4 temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    bool temp_7;
    precise float temp_8;
    int temp_9;
    precise float temp_10;
    precise float temp_11;
    int temp_12;
    int temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    int temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    temp_0 = 1.0 / in_attr3.w;
    temp_1 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyz;
    temp_2 = texture(sysTextureSampler1, vec2(in_attr2.z, in_attr2.w)).xyzw;
    temp_3 = temp_1.x * temp_1.x;
    temp_4 = in_attr1.x;
    temp_5 = clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(in_attr3.x * _sysCustomShaderUniformBlock1.data[1].x * temp_0, in_attr3.y * _sysCustomShaderUniformBlock1.data[1].y * temp_0)).x, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr3.z * temp_0, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y) * 0.0 - _sysViewUniformBlock.data[18].z) * (1.0 / _sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(temp_3 * temp_2.w * in_attr5.w * in_attr0.w, 0.0, 1.0) * in_attr4.x;
    temp_6 = in_attr1.y;
    temp_7 = temp_5 <= _sysEmitterStaticUniformBlock.data[94].z;
    temp_8 = in_attr1.z;
    temp_9 = floatBitsToInt(1.0 / gl_FragCoord.w);
    if (temp_7)
    {
        discard;
    }
    temp_10 = in_attr5.x;
    temp_11 = temp_1.z * temp_1.z * temp_2.z;
    temp_12 = floatBitsToInt(temp_11);
    temp_13 = floatBitsToInt(temp_10);
    if (temp_7)
    {
        temp_9 = 0;
    }
    temp_14 = 0.0 - temp_8 + in_attr0.z;
    temp_15 = fma(temp_3 * temp_2.x, 0.0 - temp_4 + in_attr0.x, temp_4) * temp_10;
    temp_16 = fma(temp_1.y * temp_1.y * temp_2.y, 0.0 - temp_6 + in_attr0.y, temp_6) * in_attr5.y;
    temp_17 = floatBitsToInt(temp_14);
    if (temp_7)
    {
        temp_12 = 0;
    }
    if (temp_7)
    {
        temp_13 = 0;
    }
    if (temp_7)
    {
        temp_17 = 0;
    }
    if (temp_7)
    {
        sysOutputColor0.x = intBitsToFloat(temp_12);
        sysOutputColor0.y = intBitsToFloat(temp_9);
        sysOutputColor0.z = intBitsToFloat(temp_13);
        sysOutputColor0.w = intBitsToFloat(temp_17);
        break;
    }
    temp_18 = fma(temp_11, temp_14, temp_8) * in_attr5.z;
    sysOutputColor0 = vec4(temp_15, temp_16, temp_18, temp_5);
} while (false);
}
