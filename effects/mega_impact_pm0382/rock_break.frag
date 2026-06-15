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


layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;

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
layout (location = 5) in vec4 in_attr5;
layout (location = 6) in vec4 in_attr6;
layout (location = 7) in vec4 in_attr7;

layout (location = 0) out vec4 sysOutputColor0;


void main() { do
{
    precise vec3 temp_0;
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
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    int temp_19;
    int temp_20;
    int temp_21;
    int temp_22;
    int temp_23;
    int temp_24;
    int temp_25;
    int temp_26;
    bool temp_27;
    bool temp_28;
    int temp_29;
    int temp_30;
    bool temp_31;
    precise float temp_32;
    precise float temp_33;
    uint temp_34;
    uint temp_35;
    uint temp_36;
    uint temp_37;
    temp_0 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyz;
    temp_1 = in_attr7.x;
    temp_2 = in_attr7.y;
    temp_3 = in_attr7.z;
    temp_4 = inversesqrt(fma(temp_3, temp_3, fma(temp_2, temp_2, temp_1 * temp_1)));
    temp_5 = in_attr1.x;
    temp_6 = in_attr1.y;
    temp_7 = clamp((abs(fma(temp_3 * temp_4, in_attr6.z, fma(temp_2 * temp_4, in_attr6.y, temp_1 * temp_4 * in_attr6.x))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_8 = in_attr1.z;
    temp_9 = fma(0.0 - temp_6 + in_attr0.y, temp_0.y, temp_6) * in_attr4.y;
    temp_10 = fma(0.0 - temp_5 + in_attr0.x, temp_0.x, temp_5) * in_attr4.x;
    temp_11 = fma(0.0 - temp_8 + in_attr0.z, temp_0.z, temp_8) * in_attr4.z;
    temp_12 = temp_7 * temp_7 * fma(temp_7, -2.0, 3.0) * clamp(in_attr0.w * in_attr4.w, 0.0, 1.0) * in_attr3.x;
    sysOutputColor0 = vec4(temp_10, temp_9, temp_11, temp_12);
} while (false);
}
