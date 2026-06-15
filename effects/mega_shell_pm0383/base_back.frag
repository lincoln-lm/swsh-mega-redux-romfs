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


layout (binding = 13, std140) uniform sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock2;

layout (binding = 10, std140) uniform sysCustomShaderReservedUniformBlockParam
{
    precise vec4 data[4096];
} _sysCustomShaderReservedUniformBlockParam;

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;

layout (binding = 0) uniform sampler2D sysTextureSampler0;
layout (location = 0) in vec4 in_attr0;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise vec4 temp_0;
    precise float temp_1;
    precise float temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    int temp_11;
    int temp_12;
    int temp_13;
    int temp_14;
    int temp_15;
    int temp_16;
    int temp_17;
    int temp_18;
    bool temp_19;
    bool temp_20;
    int temp_21;
    int temp_22;
    bool temp_23;
    precise float temp_24;
    precise float temp_25;
    uint temp_26;
    uint temp_27;
    uint temp_28;
    uint temp_29;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr1.x, in_attr1.y)).xyzw;
    temp_1 = temp_0.x * in_attr0.x * in_attr3.x;
    temp_2 = temp_0.y * in_attr0.y * in_attr3.y;
    temp_3 = temp_0.z * in_attr0.z * in_attr3.z;
    temp_8 = clamp(temp_0.w * in_attr0.w, 0.0, 1.0) * in_attr2.x;
    sysOutputColor0 = vec4(temp_1, temp_2, temp_3, temp_8);
} while (false);
}
