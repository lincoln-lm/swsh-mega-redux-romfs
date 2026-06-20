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

layout (binding = 2) uniform sampler2D sysTextureSampler2;
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
    precise float temp_1;
    precise vec4 temp_2;
    precise vec4 temp_3;
    precise vec4 temp_4;
    precise float temp_5;
    bool temp_6;
    precise float temp_7;
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
    int temp_18;
    int temp_19;
    int temp_20;
    int temp_21;
    bool temp_22;
    bool temp_23;
    int temp_24;
    int temp_25;
    int temp_26;
    bool temp_27;
    temp_0 = in_attr3.x;
    temp_1 = in_attr3.y;
    temp_2 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyzw;
    temp_3 = textureLod(sysTextureSampler2, vec2(temp_0, temp_1), min(float(uint(int(textureQueryLod(sysTextureSampler2, vec2(temp_0, temp_1)).r * 256.0))) * 0.00390625, 2.0)).xyzw;
    temp_4 = texture(sysTextureSampler1, vec2(in_attr2.z, in_attr2.w)).xyzw;
    temp_5 = clamp(clamp(fma(temp_3.w * temp_2.w * temp_4.w, in_attr5.w, 0.0 - in_attr0.w) * 4.0, 0.0, 1.0) * in_attr1.w, 0.0, 1.0) * in_attr4.x;
    temp_6 = temp_5 <= _sysEmitterStaticUniformBlock.data[94].z;
    if (temp_6)
    {
        discard;
    }
    temp_7 = temp_2.y * temp_4.y * temp_3.y * temp_3.y * in_attr0.y;
    temp_8 = temp_2.x * temp_4.x * temp_3.x * temp_3.x * in_attr0.x * in_attr5.x;
    temp_9 = temp_7 * in_attr5.y;
    temp_10 = temp_2.z * temp_4.z * temp_3.z * temp_3.z * in_attr0.z * in_attr5.z;
    temp_11 = floatBitsToInt(temp_7);
    if (temp_6)
    {
        temp_11 = 0;
    }
    if (temp_6)
    {
        sysOutputColor0.x = temp_8;
        sysOutputColor0.y = temp_9;
        sysOutputColor0.z = temp_10;
        sysOutputColor0.w = intBitsToFloat(temp_11);
        break;
    }
    sysOutputColor0 = vec4(temp_8, temp_9, temp_10, temp_5);
} while (false);
}
