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
layout (binding = 2) uniform sampler2D sysTextureSampler2;
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
    precise float temp_3;
    precise vec4 temp_4;
    precise vec4 temp_5;
    precise float temp_6;
    precise float temp_7;
    precise float temp_8;
    bool temp_9;
    precise float temp_10;
    int temp_11;
    precise float temp_12;
    int temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    int temp_23;
    int temp_24;
    int temp_25;
    int temp_26;
    bool temp_27;
    bool temp_28;
    int temp_29;
    int temp_30;
    int temp_31;
    bool temp_32;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xw;
    temp_1 = in_attr4.y;
    temp_2 = fma(fma(temp_0.x, 2.0, -1.0), temp_1 * sysEmitterStaticUniformBlock.data[16].x, in_attr2.z);
    temp_3 = fma(fma(temp_0.y, 2.0, -1.0), temp_1 * sysEmitterStaticUniformBlock.data[16].y, in_attr2.w);
    temp_4 = texture(sysTextureSampler2, vec2(in_attr3.x, in_attr3.y)).xyzw;
    temp_5 = textureLod(sysTextureSampler1, vec2(temp_2, temp_3), min(float(uint(int(textureQueryLod(sysTextureSampler1, vec2(temp_2, temp_3)).r * 256.0))) * 0.00390625, 2.0)).xyzw;
    temp_6 = in_attr1.z;
    temp_7 = clamp(in_attr1.w * clamp(fma(temp_4.w * temp_5.w, in_attr5.w, 0.0 - in_attr0.w) * 4.0, 0.0, 1.0), 0.0, 1.0) * in_attr4.x;
    temp_8 = in_attr1.x;
    temp_9 = temp_7 <= sysEmitterStaticUniformBlock.data[94].z;
    temp_10 = in_attr1.y;
    temp_11 = floatBitsToInt(1.0 / gl_FragCoord.w);
    if (temp_9)
    {
        discard;
    }
    temp_12 = 0.0 - temp_8 + in_attr0.x;
    temp_13 = floatBitsToInt(temp_12);
    if (temp_9)
    {
        temp_13 = 0;
    }
    temp_14 = fma(temp_5.y * temp_4.y * temp_4.y, 0.0 - temp_10 + in_attr0.y, temp_10) * in_attr5.y;
    temp_15 = fma(temp_5.x * temp_4.x * temp_4.x, temp_12, temp_8) * in_attr5.x;
    temp_16 = fma(temp_5.z * temp_4.z * temp_4.z, 0.0 - temp_6 + in_attr0.z, temp_6) * in_attr5.z;
    if (temp_9)
    {
        temp_11 = floatBitsToInt(temp_14);
    }
    if (temp_9)
    {
        sysOutputColor0.x = temp_15;
        sysOutputColor0.y = intBitsToFloat(temp_11);
        sysOutputColor0.z = temp_16;
        sysOutputColor0.w = intBitsToFloat(temp_13);
        break;
    }
    sysOutputColor0.x = temp_15;
    sysOutputColor0.y = temp_14;
    sysOutputColor0.z = temp_16;
    sysOutputColor0.w = temp_7;
    break;
} while (false);
}
