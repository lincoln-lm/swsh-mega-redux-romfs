#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_shader_draw_parameters : enable
#extension GL_ARB_shader_viewport_layer_array : enable
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

layout (binding = 7, std140) uniform sysEmitterDynamicUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterDynamicUniformBlock;

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;


layout (location = 0) in vec4 sysLocalPosAttr;
layout (location = 1) in vec4 sysLocalVecAttr;
layout (location = 2) in vec4 sysScaleAttr;
layout (location = 3) in vec4 sysRandomAttr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;


void main() { do
{
    precise float temp_0;
    bool temp_1;
    precise float temp_2;
    int temp_3;
    int temp_4;
    precise float temp_5;
    bool temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    bool temp_12;
    bool temp_13;
    bool temp_14;
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
    precise float temp_28;
    precise float temp_29;
    precise float temp_30;
    precise float temp_31;
    precise float temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    precise float temp_39;
    precise float temp_40;
    precise float temp_41;
    precise float temp_42;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr2.x = 0.0;
    }
    temp_2 = intBitsToFloat(undef);
    if (temp_1)
    {
        temp_2 = _sysViewUniformBlock.data[18].y;
    }
    temp_3 = undef;
    if (temp_1)
    {
        temp_3 = floatBitsToInt(temp_2 * 5.0);
    }
    temp_4 = temp_3;
    if (temp_1)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_3);
    }
    if (!(!temp_1))
    {
        break;
    }
    temp_5 = 0.0 - temp_0 + _sysEmitterDynamicUniformBlock.data[2].x;
    temp_6 = temp_5 >= float(int(trunc(sysLocalPosAttr.w)));
    if (temp_6)
    {
        out_attr2.x = 0.0;
    }
    temp_7 = intBitsToFloat(undef);
    if (temp_6)
    {
        temp_7 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_6)
    {
        temp_4 = floatBitsToInt(temp_7 * 5.0);
    }
    if (temp_6)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_4);
    }
    if (!(!temp_6))
    {
        break;
    }
    temp_8 = sysRandomAttr.x;
    temp_9 = intBitsToFloat(gl_VertexID);
    temp_10 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_11 = sysScaleAttr.w;
    temp_12 = (floatBitsToInt(temp_9) & 1) != 0;
    temp_13 = (floatBitsToInt(temp_9) & 2) != 0;
    temp_14 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_15 = intBitsToFloat(undef);
    temp_16 = temp_10;
    if (temp_12)
    {
        temp_15 = 0.5;
    }
    temp_17 = temp_15;
    if (!temp_12)
    {
        temp_17 = -0.5;
    }
    temp_18 = (clamp(min(0.0, temp_8) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x;
    temp_19 = intBitsToFloat(undef);
    temp_20 = temp_18;
    temp_21 = temp_17;
    if (temp_14)
    {
        temp_19 = temp_10 * temp_10;
    }
    temp_22 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_17);
    temp_23 = temp_22;
    if (temp_13)
    {
        temp_20 = 0.5;
    }
    temp_24 = temp_20;
    if (!temp_13)
    {
        temp_24 = -0.5;
    }
    temp_25 = temp_18 * _sysEmitterDynamicUniformBlock.data[3].y * temp_22;
    temp_26 = temp_24;
    if (temp_14)
    {
        temp_23 = temp_19 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_27 = intBitsToFloat(undef);
    if (temp_14)
    {
        temp_27 = temp_23 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_28 = intBitsToFloat(undef);
    temp_29 = temp_27;
    if (temp_14)
    {
        temp_28 = temp_23 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_30 = intBitsToFloat(undef);
    temp_31 = temp_28;
    if (temp_14)
    {
        temp_30 = temp_23 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_32 = temp_30;
    if (!temp_14)
    {
        temp_33 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_34 = (temp_10 + 0.0 - fma(temp_33, exp2(temp_10 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_33)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_29 = temp_34 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_31 = temp_34 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_32 = temp_34 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_14)
    {
        temp_35 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_16 = fma(exp2(temp_10 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_35, temp_35);
    }
    temp_36 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_24);
    temp_37 = fma(fma(temp_16, sysLocalVecAttr.x, temp_29), temp_11, sysLocalPosAttr.x);
    temp_38 = fma(fma(temp_16, sysLocalVecAttr.y, temp_31), temp_11, sysLocalPosAttr.y);
    temp_39 = fma(fma(temp_16, sysLocalVecAttr.z, temp_32), temp_11, sysLocalPosAttr.z);
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_8 > 0.5) ? -1 : 0)) != 0))
    {
        temp_21 = 0.0 - temp_17 + -0.0;
    }
    temp_40 = fma(0.0, _sysViewUniformBlock.data[12].z, fma(temp_36, _sysViewUniformBlock.data[12].y, temp_25 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w + fma(temp_39, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_38, _sysEmitterDynamicUniformBlock.data[4].y, temp_37 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_41 = fma(0.0, _sysViewUniformBlock.data[13].z, fma(temp_36, _sysViewUniformBlock.data[13].y, temp_25 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w + fma(temp_39, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_38, _sysEmitterDynamicUniformBlock.data[5].y, temp_37 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_26 = 0.0 - temp_24 + -0.0;
    }
    temp_42 = fma(0.0, _sysViewUniformBlock.data[14].z, fma(temp_36, _sysViewUniformBlock.data[14].y, temp_25 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w + fma(temp_39, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_38, _sysEmitterDynamicUniformBlock.data[6].y, temp_37 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    out_attr1.x = (temp_21 + 0.5) * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = (temp_26 + -0.5) * 0.0 - _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    gl_Position.x = fma(temp_42, _sysViewUniformBlock.data[8].z, fma(temp_41, _sysViewUniformBlock.data[8].y, temp_40 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_42, _sysViewUniformBlock.data[9].z, fma(temp_41, _sysViewUniformBlock.data[9].y, temp_40 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_42, _sysViewUniformBlock.data[10].z, fma(temp_41, _sysViewUniformBlock.data[10].y, temp_40 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_42, _sysViewUniformBlock.data[11].z, fma(temp_41, _sysViewUniformBlock.data[11].y, temp_40 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    break;
} while (false);
}
