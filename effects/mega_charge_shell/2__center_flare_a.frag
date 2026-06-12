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

layout (binding = 5, std140) uniform _sysViewUniformBlock
{
    precise vec4 data[4096];
} sysViewUniformBlock;

layout (binding = 6, std140) uniform _sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} sysEmitterStaticUniformBlock;


layout (binding = 13, std140) uniform _sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} sysCustomShaderUniformBlock2;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (binding = 1) uniform sampler2D sysTextureSampler1;
layout (binding = 4) uniform sampler2D sysDepthBufferTexture;
layout (binding = 2) uniform sampler2D sysTextureSampler2;
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
    precise vec4 temp_1;
    precise vec4 temp_2;
    precise vec4 temp_3;
    precise float temp_4;
    precise float temp_5;
    bool temp_6;
    int temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    int temp_17;
    int temp_18;
    int temp_19;
    int temp_20;
    bool temp_21;
    bool temp_22;
    int temp_23;
    int temp_24;
    int temp_25;
    bool temp_26;
    temp_0 = 1.0 / in_attr4.w;
    temp_1 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyzw;
    temp_2 = texture(sysTextureSampler1, vec2(in_attr2.z, in_attr2.w)).xyzw;
    temp_3 = texture(sysTextureSampler2, vec2(in_attr3.x, in_attr3.y)).xyzw;
    temp_4 = clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(in_attr4.x * sysCustomShaderUniformBlock1.data[1].x * temp_0, in_attr4.y * sysCustomShaderUniformBlock1.data[1].y * temp_0)).x, sysViewUniformBlock.data[18].w, 0.0 - sysViewUniformBlock.data[18].y), 0.0 - sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr4.z * temp_0, sysViewUniformBlock.data[18].w, 0.0 - sysViewUniformBlock.data[18].y) * 0.0 - sysViewUniformBlock.data[18].z) * (1.0 / sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(temp_3.w * temp_1.w * temp_2.w * in_attr6.w * in_attr0.w * in_attr1.w, 0.0, 1.0) * in_attr5.x;
    temp_5 = in_attr6.y;
    temp_6 = temp_4 <= sysEmitterStaticUniformBlock.data[94].z;
    temp_7 = floatBitsToInt(temp_5);
    if (temp_6)
    {
        discard;
    }
    temp_8 = temp_3.y * temp_2.y * temp_1.y * temp_1.y * in_attr0.y * temp_5;
    if (temp_6)
    {
        temp_7 = 0;
    }
    temp_9 = temp_3.x * temp_2.x * temp_1.x * temp_1.x * in_attr0.x * in_attr6.x;
    temp_10 = temp_3.z * temp_2.z * temp_1.z * temp_1.z * in_attr0.z * in_attr6.z;
    if (temp_6)
    {
        sysOutputColor0.x = temp_9;
        sysOutputColor0.y = temp_8;
        sysOutputColor0.z = temp_10;
        sysOutputColor0.w = intBitsToFloat(temp_7);
        break;
    }

    sysOutputColor0.x = temp_9;
    sysOutputColor0.y = temp_8;
    sysOutputColor0.z = temp_10;
    sysOutputColor0.w = temp_4;
    break;
} while (false);
}
