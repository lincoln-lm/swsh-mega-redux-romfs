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

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;


layout (binding = 13, std140) uniform sysCustomShaderUniformBlock2
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock2;

layout (binding = 4) uniform sampler2D sysDepthBufferTexture;
layout (binding = 0) uniform sampler2D sysTextureSampler0;
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
    precise float temp_2;
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
    temp_0 = 1.0 / in_attr3.w;
    temp_1 = texture(sysTextureSampler0, vec2(in_attr2.x, in_attr2.y)).xyz;
    temp_2 = temp_1.x * temp_1.x;
    temp_3 = in_attr1.y;
    temp_4 = in_attr1.z;
    temp_5 = clamp(fma(1.0 / fma(texture(sysDepthBufferTexture, vec2(in_attr3.x * _sysCustomShaderUniformBlock1.data[1].x * temp_0, in_attr3.y * _sysCustomShaderUniformBlock1.data[1].y * temp_0)).x, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - 1.0 / fma(in_attr3.z * temp_0, _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y) * 0.0 - _sysViewUniformBlock.data[18].z) * (1.0 / _sysEmitterStaticUniformBlock.data[95].y), 0.0, 1.0) * clamp(in_attr1.w * temp_2 * in_attr5.w * in_attr0.w, 0.0, 1.0) * in_attr4.x;
    temp_6 = in_attr1.x;
    temp_7 = temp_5 <= _sysEmitterStaticUniformBlock.data[94].z;
    temp_8 = floatBitsToInt(1.0 / gl_FragCoord.w);
    if (temp_7)
    {
        discard;
    }
    if (temp_7)
    {
        temp_8 = 0;
    }
    temp_9 = fma(temp_1.y * temp_1.y, 0.0 - temp_3 + in_attr0.y, temp_3) * in_attr5.y;
    temp_10 = fma(temp_1.z * temp_1.z, 0.0 - temp_4 + in_attr0.z, temp_4) * in_attr5.z;
    temp_11 = fma(temp_2, 0.0 - temp_6 + in_attr0.x, temp_6) * in_attr5.x;
    if (temp_7)
    {
        sysOutputColor0.x = temp_11;
        sysOutputColor0.y = temp_9;
        sysOutputColor0.z = temp_10;
        sysOutputColor0.w = intBitsToFloat(temp_8);
        break;
    }
    sysOutputColor0 = vec4(temp_11, temp_9, temp_10, temp_5);
} while (false);
}
