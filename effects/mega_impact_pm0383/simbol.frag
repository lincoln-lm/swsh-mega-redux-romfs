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

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (binding = 4) uniform sampler2D sysDepthBufferTexture;
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
    precise vec2 temp_0;
    precise float temp_1;
    precise float temp_2;
    precise vec4 temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    precise float temp_7;
    bool temp_8;
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
    int temp_20;
    int temp_21;
    int temp_22;
    int temp_23;
    bool temp_24;
    bool temp_25;
    int temp_26;
    int temp_27;
    int temp_28;
    bool temp_29;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xw;
    temp_1 = in_attr4.y;
    temp_2 = 1.0 / in_attr3.w;
    temp_3 = texture(sysTextureSampler1, vec2(fma(temp_1 * _sysEmitterStaticUniformBlock.data[16].x, fma(temp_0.x, 2.0, -1.0), in_attr2.z), fma(temp_1 * _sysEmitterStaticUniformBlock.data[16].y, fma(temp_0.y, 2.0, -1.0), in_attr2.w))).xyzw;
    temp_4 = in_attr1.y;
    temp_5 = in_attr1.z;
    temp_6 = in_attr1.x;
    temp_7 = clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(in_attr3.x * _sysCustomShaderUniformBlock1.data[1].x * temp_2, in_attr3.y * _sysCustomShaderUniformBlock1.data[1].y * temp_2)).x, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr3.z * temp_2, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y) * 0.0 - _sysViewUniformBlock.data[18].z) * (1.0 / _sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(fma(fma(temp_3.w, in_attr5.w, in_attr0.w), 2.0, -2.0), 0.0, 1.0) * in_attr4.x;
    temp_8 = temp_7 <= _sysEmitterStaticUniformBlock.data[94].z;
    if (temp_8)
    {
        discard;
    }
    temp_9 = fma(temp_3.y * temp_3.y, 0.0 - temp_4 + in_attr0.y, temp_4);
    temp_10 = temp_9 * in_attr5.y;
    temp_11 = floatBitsToInt(temp_9);
    if (temp_8)
    {
        temp_11 = 0;
    }
    temp_12 = fma(temp_3.x * temp_3.x, 0.0 - temp_6 + in_attr0.x, temp_6) * in_attr5.x;
    temp_13 = fma(temp_3.z * temp_3.z, 0.0 - temp_5 + in_attr0.z, temp_5) * in_attr5.z;
    if (temp_8)
    {
        sysOutputColor0.x = temp_12;
        sysOutputColor0.y = temp_10;
        sysOutputColor0.z = temp_13;
        sysOutputColor0.w = intBitsToFloat(temp_11);
        break;
    }
    sysOutputColor0 = vec4(temp_12, temp_10, temp_13, temp_7);
} while (false);
}
