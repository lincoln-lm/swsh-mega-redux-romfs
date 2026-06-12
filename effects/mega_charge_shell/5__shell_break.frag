#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_fragment_shader_interlock : enable
#extension GL_NV_viewport_array2 : enable
#pragma optionNV(fastmath off)

const vec4 constants[] = vec4[](vec4(0, 0, 0, 0), vec4(2, 0, 0, 0), vec4(3, 0, 0, 0), vec4(1, 0, 0, 0), vec4(0.01, 0.587, 0.114, -0.419), vec4(-0.081, -0.331, 1.402, -0.344), vec4(-0.714, 1.772, 2.99, 1.99), vec4(0.99, 0.0038910506, 0.0, 0.0));
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

layout (binding = 10, std140) uniform _sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} sysCustomShaderReservedUniformBlockParam;

layout (binding = 5, std140) uniform _sysViewUniformBlock
{
    precise vec4 data[4096];
} sysViewUniformBlock;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise float temp_0;
    bool temp_1;
    precise vec3 temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    int temp_7;
    int temp_8;
    int temp_9;
    int temp_10;
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
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    bool temp_28;
    bool temp_29;
    precise float temp_30;
    precise float temp_31;
    bool temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    uint temp_38;
    uint temp_39;
    uint temp_40;
    uint temp_41;
    temp_0 = clamp(in_attr3.w * in_attr0.w, 0.0, 1.0) * in_attr2.x;
    temp_1 = temp_0 <= sysEmitterStaticUniformBlock.data[94].z;
    if (temp_1)
    {
        discard;
    }
    temp_2 = texture(sysTextureSampler0, vec2(in_attr1.x, in_attr1.y)).xyz;
    temp_3 = temp_2.x;
    temp_4 = temp_2.y;
    temp_5 = temp_3 * in_attr0.x;
    temp_6 = temp_4 * in_attr0.y;
    temp_7 = floatBitsToInt(temp_3);
    temp_8 = floatBitsToInt(temp_4);
    temp_9 = floatBitsToInt(temp_5);
    temp_10 = floatBitsToInt(temp_6);
    if (temp_1)
    {
        temp_7 = 0;
    }
    if (temp_1)
    {
        temp_8 = 0;
    }
    temp_11 = temp_5 * in_attr3.x;
    temp_12 = temp_6 * in_attr3.y;
    if (temp_1)
    {
        temp_9 = 0;
    }
    if (temp_1)
    {
        temp_10 = 0;
    }
    if (temp_1)
    {
        sysOutputColor0.x = intBitsToFloat(temp_7);
        sysOutputColor0.y = intBitsToFloat(temp_8);
        sysOutputColor0.z = intBitsToFloat(temp_9);
        sysOutputColor0.w = intBitsToFloat(temp_10);
        break;
    }
    temp_13 = temp_2.z * in_attr0.z * in_attr3.z;
    sysOutputColor0.x = temp_11;
    sysOutputColor0.y = temp_12;
    sysOutputColor0.z = temp_13;
    sysOutputColor0.w = temp_0;
    break;
} while (false);
}
