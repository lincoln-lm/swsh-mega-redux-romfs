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
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise float temp_0;
    precise float temp_1;
    precise vec4 temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    bool temp_7;
    int temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
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
    temp_0 = in_attr2.x;
    temp_1 = in_attr2.y;
    temp_2 = textureLod(sysTextureSampler0, vec2(temp_0, temp_1), min(float(uint(int(textureQueryLod(sysTextureSampler0, vec2(temp_0, temp_1)).r * 256.0))) * 0.00390625, 2.0)).xyzw;
    temp_3 = in_attr1.y;
    temp_4 = in_attr1.z;
    temp_5 = in_attr1.x;
    temp_6 = clamp(temp_2.w * in_attr0.w, 0.0, 1.0) * in_attr3.x;
    temp_7 = temp_6 <= _sysEmitterStaticUniformBlock.data[94].z;
    temp_8 = floatBitsToInt(temp_5);
    if (temp_7)
    {
        discard;
    }
    temp_9 = fma(temp_2.y, 0.0 - temp_3 + in_attr0.y, temp_3);
    temp_10 = fma(temp_2.z, 0.0 - temp_4 + in_attr0.z, temp_4);
    temp_11 = fma(temp_2.x, 0.0 - temp_5 + in_attr0.x, temp_5);
    if (temp_7)
    {
        temp_8 = 0;
    }
    if (temp_7)
    {
        sysOutputColor0.x = temp_11;
        sysOutputColor0.y = temp_9;
        sysOutputColor0.z = temp_10;
        sysOutputColor0.w = intBitsToFloat(temp_8);
        break;
    }
    sysOutputColor0 = vec4(temp_11, temp_9, temp_10, temp_6);
} while (false);
}
