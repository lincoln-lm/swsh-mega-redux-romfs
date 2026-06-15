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


layout (location = 0) in vec4 sysPosAttr;
layout (location = 1) in vec4 sysNormalAttr;
layout (location = 2) in vec4 sysVertexColor0Attr;
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;

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
    bool temp_13;
    bool temp_14;
    bool temp_15;
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
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
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
    precise float temp_70;
    precise float temp_71;
    precise float temp_72;
    precise float temp_73;
    precise float temp_74;
    precise float temp_75;
    precise float temp_76;
    precise float temp_77;
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    precise float temp_83;
    precise float temp_84;
    precise float temp_85;
    precise float temp_86;
    precise float temp_87;
    precise float temp_88;
    precise float temp_89;
    precise float temp_90;
    precise float temp_91;
    precise float temp_92;
    precise float temp_93;
    precise float temp_94;
    precise float temp_95;
    precise float temp_96;
    precise float temp_97;
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
    temp_6 = float(int(trunc(sysLocalPosAttr.w)));
    temp_7 = temp_5 >= temp_6;
    if (temp_7)
    {
        out_attr2.x = 0.0;
    }
    temp_8 = intBitsToFloat(undef);
    if (temp_7)
    {
        temp_8 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_7)
    {
        temp_4 = floatBitsToInt(temp_8 * 5.0);
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
    temp_9 = sysRandomAttr.x;
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_10) > 0.0;
    temp_14 = sqrt(temp_11) > 0.0;
    temp_15 = sqrt(temp_12) > 0.0;
    temp_16 = intBitsToFloat(undef);
    temp_17 = _sysEmitterDynamicUniformBlock.data[10].z;
    if (temp_13)
    {
        temp_16 = inversesqrt(temp_10);
    }
    temp_18 = temp_16;
    if (!temp_13)
    {
        temp_18 = 0.0;
    }
    temp_19 = intBitsToFloat(undef);
    temp_20 = temp_18;
    if (temp_14)
    {
        temp_19 = inversesqrt(temp_11);
    }
    temp_21 = intBitsToFloat(undef);
    temp_22 = temp_19;
    if (!temp_13)
    {
        temp_21 = 0.0;
    }
    temp_23 = intBitsToFloat(undef);
    temp_24 = temp_21;
    if (temp_15)
    {
        temp_23 = inversesqrt(temp_12);
    }
    temp_25 = intBitsToFloat(undef);
    temp_26 = temp_23;
    if (!temp_13)
    {
        temp_25 = 0.0;
    }
    temp_27 = temp_25;
    if (!temp_14)
    {
        temp_22 = 0.0;
    }
    temp_28 = intBitsToFloat(undef);
    temp_29 = temp_22;
    if (!temp_14)
    {
        temp_28 = 0.0;
    }
    temp_30 = intBitsToFloat(undef);
    temp_31 = temp_28;
    if (!temp_14)
    {
        temp_30 = 0.0;
    }
    temp_32 = temp_30;
    if (!temp_15)
    {
        temp_26 = 0.0;
    }
    temp_33 = temp_26;
    if (!temp_15)
    {
        temp_17 = 0.0;
    }
    temp_34 = temp_17;
    if (temp_13)
    {
        temp_27 = temp_18 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    if (temp_13)
    {
        temp_24 = temp_18 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    if (temp_14)
    {
        temp_32 = temp_22 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    if (temp_14)
    {
        temp_31 = temp_22 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_35 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_35 = temp_26 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_36 = temp_35;
    if (temp_15)
    {
        temp_34 = temp_26 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    if (temp_13)
    {
        temp_20 = temp_18 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    if (temp_14)
    {
        temp_29 = temp_22 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    if (temp_15)
    {
        temp_33 = temp_26 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    if (!temp_15)
    {
        temp_36 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_37 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_38 = temp_37 + 0.0 - floor(temp_37);
    }
    else
    {
        temp_38 = temp_5 * (1.0 / temp_6);
    }
    temp_39 = temp_38 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_40 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_41 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_42 = temp_38 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_43 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_44 = fma(temp_39, 0.0 - temp_42, temp_39);
    temp_45 = temp_38 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_46 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_47 = fma(temp_42, 0.0 - temp_45, temp_42);
    temp_48 = sysLocalPosAttr.x;
    temp_49 = sysLocalPosAttr.y;
    temp_50 = sysLocalPosAttr.z;
    temp_51 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_45, _sysEmitterStaticUniformBlock.data[98].x, fma(fma(temp_46, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_41, _sysEmitterStaticUniformBlock.data[97].x), temp_47, fma(fma(temp_43, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_40, _sysEmitterStaticUniformBlock.data[96].x), temp_44, fma(temp_39, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_52 = fma(temp_45, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_46, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_41, _sysEmitterStaticUniformBlock.data[97].y), temp_47, fma(fma(temp_43, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_40, _sysEmitterStaticUniformBlock.data[96].y), temp_44, fma(temp_39, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_53 = fma(temp_45, _sysEmitterStaticUniformBlock.data[98].z, fma(fma(temp_46, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_41, _sysEmitterStaticUniformBlock.data[97].z), temp_47, fma(fma(temp_43, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_40, _sysEmitterStaticUniformBlock.data[96].z), temp_44, fma(temp_39, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_54 = fma(temp_50, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_49, _sysEmitterDynamicUniformBlock.data[4].y, temp_48 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_55 = fma(temp_50, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_49, _sysEmitterDynamicUniformBlock.data[5].y, temp_48 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_56 = temp_54 + fma(temp_53, temp_36, fma(temp_52, temp_32, temp_51 * temp_27));
    temp_57 = fma(temp_50, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_49, _sysEmitterDynamicUniformBlock.data[6].y, temp_48 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_58 = temp_55 + fma(temp_53, temp_34, fma(temp_52, temp_31, temp_51 * temp_24));
    temp_59 = temp_57 + fma(temp_53, temp_33, fma(temp_52, temp_29, temp_51 * temp_20));
    temp_60 = sysNormalAttr.x;
    temp_61 = sysNormalAttr.y;
    temp_62 = sysNormalAttr.z;
    out_attr4.x = temp_56;
    out_attr4.y = temp_58;
    out_attr4.z = temp_59;
    temp_63 = fma(temp_59, _sysViewUniformBlock.data[0].z, fma(temp_58, _sysViewUniformBlock.data[0].y, temp_56 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_64 = fma(temp_59, _sysViewUniformBlock.data[2].z, fma(temp_58, _sysViewUniformBlock.data[2].y, temp_56 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_65 = fma(temp_59, _sysViewUniformBlock.data[1].z, fma(temp_58, _sysViewUniformBlock.data[1].y, temp_56 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_66 = temp_64 + _sysEmitterStaticUniformBlock.data[13].z;
    temp_67 = fma(temp_59, _sysViewUniformBlock.data[3].z, fma(temp_58, _sysViewUniformBlock.data[3].y, temp_56 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_68 = fma(temp_59, _sysViewUniformBlock.data[11].z, fma(temp_58, _sysViewUniformBlock.data[11].y, temp_56 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_69 = fma(0.0, temp_57, fma(temp_33, temp_62, fma(temp_29, temp_61, temp_20 * temp_60)));
    temp_70 = fma(0.0, temp_54, fma(temp_36, temp_62, fma(temp_32, temp_61, temp_27 * temp_60)));
    temp_71 = fma(0.0, temp_55, fma(temp_34, temp_62, fma(temp_31, temp_61, temp_24 * temp_60)));
    gl_Position.x = fma(temp_59, _sysViewUniformBlock.data[8].z, fma(temp_58, _sysViewUniformBlock.data[8].y, temp_56 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_59, _sysViewUniformBlock.data[9].z, fma(temp_58, _sysViewUniformBlock.data[9].y, temp_56 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_67, _sysViewUniformBlock.data[6].w, fma(temp_66, _sysViewUniformBlock.data[6].z, fma(temp_65, _sysViewUniformBlock.data[6].y, temp_63 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_67, _sysViewUniformBlock.data[7].w, fma(temp_66, _sysViewUniformBlock.data[7].z, fma(temp_65, _sysViewUniformBlock.data[7].y, temp_63 * _sysViewUniformBlock.data[7].x)))) * temp_68;
    gl_Position.w = temp_68;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_72 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_73 = temp_72 + 0.0 - floor(temp_72);
    }
    else
    {
        temp_73 = temp_5 * (1.0 / temp_6);
    }
    temp_74 = temp_73 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_75 = inversesqrt(fma(temp_64, temp_64, fma(temp_65, temp_65, temp_63 * temp_63)));
    temp_76 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_69, _sysViewUniformBlock.data[0].z, fma(temp_71, _sysViewUniformBlock.data[0].y, temp_70 * _sysViewUniformBlock.data[0].x)));
    temp_77 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_69, _sysViewUniformBlock.data[1].z, fma(temp_71, _sysViewUniformBlock.data[1].y, temp_70 * _sysViewUniformBlock.data[1].x)));
    temp_78 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_69, _sysViewUniformBlock.data[2].z, fma(temp_71, _sysViewUniformBlock.data[2].y, temp_70 * _sysViewUniformBlock.data[2].x)));
    temp_79 = temp_63 * temp_75;
    temp_80 = temp_65 * temp_75;
    temp_81 = temp_64 * temp_75;
    temp_82 = inversesqrt(fma(temp_78, temp_78, fma(temp_77, temp_77, temp_76 * temp_76)));
    temp_83 = temp_76 * temp_82;
    temp_84 = temp_77 * temp_82;
    temp_85 = clamp(max(temp_78 * temp_82, 0.2) + -0.0, 0.0, 1.0);
    temp_86 = fma(temp_81, temp_85, fma(temp_84, temp_80, temp_83 * temp_79));
    temp_87 = fma(temp_83 * temp_86, -2.0, temp_79);
    temp_88 = fma(temp_84 * temp_86, -2.0, temp_80);
    temp_89 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_90 = temp_73 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_91 = temp_73 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_92 = 1.0 / (sqrt(fma(fma(temp_85 * temp_86, -2.0, temp_81) + 1.0, fma(temp_85 * temp_86, -2.0, temp_81) + 1.0, fma(0.0 + temp_88, 0.0 + temp_88, (0.0 + temp_87) * (0.0 + temp_87)))) * 2.0);
    out_attr3.y = sysVertexColor0Attr.y;
    temp_93 = fma(temp_74, 0.0 - temp_90, temp_74);
    out_attr3.x = sysVertexColor0Attr.x;
    out_attr3.z = sysVertexColor0Attr.z;
    out_attr3.w = sysVertexColor0Attr.w;
    temp_94 = fma(temp_87, temp_92, 0.5);
    temp_95 = fma(temp_88, 0.0 - temp_92, 0.5);
    temp_96 = temp_94;
    temp_97 = temp_95;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_96 = 0.0 - temp_94 + 1.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_97 = 0.0 - temp_95 + 1.0;
    }
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = fma(temp_90, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_91, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_89, _sysEmitterStaticUniformBlock.data[60].x), temp_93, fma(temp_74, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_90, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_91, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_89, _sysEmitterStaticUniformBlock.data[60].y), temp_93, fma(temp_74, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_90, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_91, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_89, _sysEmitterStaticUniformBlock.data[60].z), temp_93, fma(temp_74, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr1.x = temp_96 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = temp_97 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
