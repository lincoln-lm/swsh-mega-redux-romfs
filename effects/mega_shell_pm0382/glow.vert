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
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;


void main() { do
{
    precise float temp_0;
    bool temp_1;
    precise float temp_2;
    int temp_3;
    int temp_4;
    precise float temp_5;
    precise float temp_6;
    bool temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    bool temp_15;
    precise float temp_16;
    bool temp_17;
    bool temp_18;
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
    int temp_41;
    precise float temp_42;
    precise float temp_43;
    int temp_44;
    int temp_45;
    precise float temp_46;
    precise float temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    precise float temp_51;
    precise float temp_52;
    precise float temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    precise float temp_60;
    precise float temp_61;
    precise float temp_62;
    precise float temp_63;
    precise float temp_64;
    precise float temp_65;
    precise float temp_66;
    precise float temp_67;
    precise float temp_68;
    precise float temp_69;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr4.x = 0.0;
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
    temp_6 = sysLocalPosAttr.w;
    temp_7 = temp_5 >= float(int(trunc(temp_6)));
    temp_8 = 0.0;
    temp_9 = 0.0;
    temp_10 = temp_6;
    if (temp_7)
    {
        out_attr4.x = 0.0;
    }
    temp_11 = intBitsToFloat(undef);
    if (temp_7)
    {
        temp_11 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_7)
    {
        temp_4 = floatBitsToInt(temp_11 * 5.0);
    }
    if (temp_7)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_4);
    }
    if (!(!temp_7))
    {
        break;
    }
    temp_12 = intBitsToFloat(gl_VertexID);
    temp_13 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_14 = sysScaleAttr.w;
    temp_15 = 1.0 == _sysEmitterStaticUniformBlock.data[12].x;
    temp_16 = temp_13;
    if (temp_15)
    {
        temp_8 = temp_13 * temp_13;
    }
    temp_17 = (floatBitsToInt(temp_12) & 1) != 0;
    temp_18 = (floatBitsToInt(temp_12) & 2) != 0;
    temp_19 = temp_8;
    if (temp_15)
    {
        temp_19 = temp_8 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_20 = intBitsToFloat(undef);
    temp_21 = temp_19;
    if (temp_15)
    {
        temp_20 = temp_19 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_22 = intBitsToFloat(undef);
    temp_23 = temp_20;
    if (temp_15)
    {
        temp_22 = temp_19 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_24 = temp_22;
    if (temp_15)
    {
        temp_21 = temp_19 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_25 = temp_21;
    if (temp_17)
    {
        temp_9 = 0.5;
    }
    temp_26 = temp_9;
    if (temp_18)
    {
        temp_10 = 0.5;
    }
    temp_27 = temp_10;
    if (!temp_17)
    {
        temp_26 = -0.5;
    }
    temp_28 = temp_26;
    if (!temp_18)
    {
        temp_27 = -0.5;
    }
    temp_29 = temp_27;
    if (!temp_15)
    {
        temp_30 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_31 = (temp_13 + 0.0 - fma(temp_30, exp2(temp_13 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_30)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_23 = temp_31 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_24 = temp_31 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_25 = temp_31 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!(_sysEmitterStaticUniformBlock.data[12].x == 1.0))
    {
        temp_32 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_16 = fma(exp2(temp_13 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_32, temp_32);
    }
    temp_33 = sysRandomAttr.x;
    temp_34 = fma(fma(temp_16, sysLocalVecAttr.x, temp_23), temp_14, sysLocalPosAttr.x);
    temp_35 = fma(fma(temp_16, sysLocalVecAttr.y, temp_24), temp_14, sysLocalPosAttr.y);
    temp_36 = fma(fma(temp_16, sysLocalVecAttr.z, temp_25), temp_14, sysLocalPosAttr.z);
    temp_37 = fma(temp_36, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_35, _sysEmitterDynamicUniformBlock.data[4].y, temp_34 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_38 = fma(temp_36, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_35, _sysEmitterDynamicUniformBlock.data[5].y, temp_34 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_39 = fma(temp_36, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_35, _sysEmitterDynamicUniformBlock.data[6].y, temp_34 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_40 = temp_37 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_41 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 2;
    temp_42 = temp_38 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_43 = temp_39 + 0.0 - _sysViewUniformBlock.data[17].z;
    temp_44 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 4;
    temp_45 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 1;
    temp_46 = inversesqrt(fma(temp_43, temp_43, fma(temp_42, temp_42, temp_40 * temp_40)));
    temp_47 = temp_40 * 0.0 - temp_46;
    temp_48 = temp_42 * 0.0 - temp_46;
    temp_49 = temp_43 * 0.0 - temp_46;
    temp_50 = fma(temp_5 + _sysEmitterStaticUniformBlock.data[15].z, 1.0 / _sysEmitterStaticUniformBlock.data[14].z, temp_33 * _sysEmitterStaticUniformBlock.data[15].x);
    temp_51 = fma(temp_47, _sysEmitterStaticUniformBlock.data[13].z, temp_37);
    temp_52 = fma(temp_48, _sysEmitterStaticUniformBlock.data[13].z, temp_38);
    temp_53 = fma(temp_49, _sysEmitterStaticUniformBlock.data[13].z, temp_39);
    temp_54 = temp_46 * sqrt(fma(fma(temp_49, _sysEmitterStaticUniformBlock.data[13].z, temp_43), fma(temp_49, _sysEmitterStaticUniformBlock.data[13].z, temp_43), fma(fma(temp_48, _sysEmitterStaticUniformBlock.data[13].z, temp_42), fma(temp_48, _sysEmitterStaticUniformBlock.data[13].z, temp_42), fma(temp_47, _sysEmitterStaticUniformBlock.data[13].z, temp_40) * fma(temp_47, _sysEmitterStaticUniformBlock.data[13].z, temp_40))));
    temp_55 = temp_50 + 0.0 - floor(temp_50);
    temp_56 = fma(temp_53, _sysViewUniformBlock.data[10].z, fma(temp_52, _sysViewUniformBlock.data[10].y, temp_51 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_57 = fma(temp_53, _sysViewUniformBlock.data[11].z, fma(temp_52, _sysViewUniformBlock.data[11].y, temp_51 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_33 > 0.5) ? -1 : 0)) != 0))
    {
        temp_28 = 0.0 - temp_26 + -0.0;
    }
    temp_58 = (clamp(min(0.0, temp_33) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * temp_54 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_26);
    temp_59 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * temp_54 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_27);
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_29 = 0.0 - temp_27 + -0.0;
    }
    temp_60 = fma(temp_47, _sysEmitterStaticUniformBlock.data[13].z, temp_37 + fma(0.0, _sysViewUniformBlock.data[12].z, fma(temp_59, _sysViewUniformBlock.data[12].y, temp_58 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w);
    temp_61 = fma(temp_48, _sysEmitterStaticUniformBlock.data[13].z, temp_38 + fma(0.0, _sysViewUniformBlock.data[13].z, fma(temp_59, _sysViewUniformBlock.data[13].y, temp_58 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w);
    temp_62 = fma(temp_49, _sysEmitterStaticUniformBlock.data[13].z, temp_39 + fma(0.0, _sysViewUniformBlock.data[14].z, fma(temp_59, _sysViewUniformBlock.data[14].y, temp_58 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w);
    temp_63 = clamp(fma(1.0 / fma(fma(0.0, temp_57, temp_56) * (1.0 / fma(0.0, temp_56, temp_57)), _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - _sysEmitterStaticUniformBlock.data[93].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[93].x + _sysEmitterStaticUniformBlock.data[93].y)), 0.0, 1.0);
    temp_64 = fma(temp_62, _sysViewUniformBlock.data[9].z, fma(temp_61, _sysViewUniformBlock.data[9].y, temp_60 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_65 = fma(temp_62, _sysViewUniformBlock.data[8].z, fma(temp_61, _sysViewUniformBlock.data[8].y, temp_60 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_66 = 0.0 * temp_64;
    temp_67 = fma(temp_62, _sysViewUniformBlock.data[10].z, fma(temp_61, _sysViewUniformBlock.data[10].y, temp_60 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_68 = fma(0.0, temp_65, temp_66);
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_69 = fma(temp_62, _sysViewUniformBlock.data[11].z, fma(temp_61, _sysViewUniformBlock.data[11].y, temp_60 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_65;
    gl_Position.y = temp_64;
    gl_Position.z = temp_67;
    gl_Position.w = temp_69;
    out_attr2.x = (temp_28 + 0.5) * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = (temp_29 + -0.5) * 0.0 - _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr4.x = fma(float(abs(0 - (temp_44 > 0 ? -1 : 0) + 0 - temp_44 >= 0 ? 0 : 1)), abs(0.0 - fma(temp_55 >= 0.5 ? 1.0 : 0.0, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, _sysEmitterStaticUniformBlock.data[14].x) + 1.0) + -0.0, fma(float(abs(0 - (temp_41 > 0 ? -1 : 0) + 0 - temp_41 >= 0 ? 0 : 1)), abs(fma(temp_55, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0)) + -0.0, fma(fma(cos(temp_50 * 6.28318548), 0.5, 0.5), 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0) * float(abs(0 - (temp_45 > 0 ? -1 : 0) + 0 - temp_45 >= 0 ? 0 : 1)))) * temp_63 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr3.x = fma(temp_69, 0.5, fma(0.0, temp_67, fma(temp_65, 0.5, temp_66)));
    out_attr3.y = fma(temp_69, 0.5, fma(0.0, temp_67, fma(0.0, temp_65, temp_64 * -0.5)));
    out_attr3.z = fma(0.0, temp_69, temp_67 + temp_68);
    out_attr3.w = temp_69 + fma(0.0, temp_67, temp_68);
    if (!(temp_63 <= 0.0))
    {
        break;
    }
    out_attr4.x = 0.0;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = _sysViewUniformBlock.data[18].y * 5.0;
    break;
} while (false);
}
