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
layout (location = 4) in vec4 sysEmtMat0Attr;
layout (location = 5) in vec4 sysEmtMat1Attr;
layout (location = 6) in vec4 sysEmtMat2Attr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;


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
    int temp_11;
    bool temp_12;
    bool temp_13;
    precise float temp_14;
    int temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    int temp_19;
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
    bool temp_37;
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
    precise float temp_98;
    precise float temp_99;
    precise float temp_100;
    precise float temp_101;
    precise float temp_102;
    precise float temp_103;
    precise float temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    precise float temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    precise float temp_116;
    precise float temp_117;
    precise float temp_118;
    precise float temp_119;
    precise float temp_120;
    precise float temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr3.x = 0.0;
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
        out_attr3.x = 0.0;
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
    temp_10 = intBitsToFloat(gl_VertexID);
    temp_11 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 2;
    temp_12 = (floatBitsToInt(temp_10) & 1) != 0;
    temp_13 = (floatBitsToInt(temp_10) & 2) != 0;
    temp_14 = fma(temp_5 + _sysEmitterStaticUniformBlock.data[15].z, 1.0 / _sysEmitterStaticUniformBlock.data[14].z, temp_9 * _sysEmitterStaticUniformBlock.data[15].x);
    temp_15 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 1;
    temp_16 = intBitsToFloat(undef);
    if (temp_13)
    {
        temp_16 = 0.5;
    }
    temp_17 = temp_16;
    if (!temp_13)
    {
        temp_17 = -0.5;
    }
    temp_18 = temp_14 + 0.0 - floor(temp_14);
    temp_19 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 4;
    temp_20 = 1.0;
    temp_21 = temp_17;
    if (temp_12)
    {
        temp_20 = 0.5;
    }
    temp_22 = temp_20;
    if (!temp_12)
    {
        temp_22 = -0.5;
    }
    temp_23 = fma(float(abs(0 - (temp_19 > 0 ? -1 : 0) + 0 - (temp_19 >= 0 ? 0 : 1))), abs(0.0 - fma(temp_18 >= 0.5 ? 1.0 : 0.0, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, _sysEmitterStaticUniformBlock.data[14].x) + 1.0) + -0.0, fma(float(abs(0 - (temp_11 > 0 ? -1 : 0) + 0 - (temp_11 >= 0 ? 0 : 1))), abs(fma(temp_18, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0)) + -0.0, fma(fma(cos(temp_14 * 6.28318548), 0.5, 0.5), 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0) * float(abs(0 - (temp_15 > 0 ? -1 : 0) + 0 - (temp_15 >= 0 ? 0 : 1)))));
    temp_24 = temp_22;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_25 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_26 = temp_25 + 0.0 - floor(temp_25);
    }
    else
    {
        temp_26 = temp_5 * (1.0 / temp_6);
    }
    temp_27 = sysLocalVecAttr.x;
    temp_28 = sysLocalVecAttr.y;
    temp_29 = sysLocalVecAttr.z;
    temp_30 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_31 = sysEmtMat2Attr.x;
    temp_32 = sysEmtMat2Attr.y;
    temp_33 = sysEmtMat2Attr.z;
    temp_34 = sysEmtMat0Attr.x;
    temp_35 = sysEmtMat0Attr.y;
    temp_36 = sysEmtMat0Attr.z;
    temp_37 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_38 = sysEmtMat1Attr.x;
    temp_39 = sysEmtMat1Attr.y;
    temp_40 = sysEmtMat1Attr.z;
    temp_41 = intBitsToFloat(undef);
    temp_42 = temp_30;
    if (temp_37)
    {
        temp_41 = temp_30 * temp_30;
    }
    temp_43 = intBitsToFloat(undef);
    temp_44 = temp_41;
    if (temp_37)
    {
        temp_43 = temp_5 * temp_5;
    }
    temp_45 = temp_43;
    if (temp_37)
    {
        temp_44 = temp_41 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_37)
    {
        temp_45 = temp_43 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_46 = intBitsToFloat(undef);
    if (temp_37)
    {
        temp_46 = temp_44 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_47 = intBitsToFloat(undef);
    temp_48 = temp_46;
    if (temp_37)
    {
        temp_47 = temp_44 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_49 = intBitsToFloat(undef);
    temp_50 = temp_47;
    if (temp_37)
    {
        temp_49 = temp_44 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_51 = temp_49;
    temp_52 = intBitsToFloat(undef);
    if (!temp_37)
    {
        temp_53 = 0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0;
        temp_54 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_55 = (temp_30 + 0.0 - fma(temp_54, exp2(temp_30 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_54)) * (1.0 / temp_53) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_51 = temp_55 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_48 = temp_55 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_50 = temp_55 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_52 = temp_53;
    }
    temp_56 = temp_48;
    temp_57 = temp_50;
    temp_58 = temp_52;
    if (!temp_37)
    {
        temp_59 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_42 = fma(exp2(temp_30 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_59, temp_59);
    }
    temp_60 = fma(temp_42, temp_27, temp_51);
    temp_61 = fma(temp_42, temp_28, temp_48);
    temp_62 = fma(temp_42, temp_29, temp_50);
    temp_63 = temp_42;
    if (temp_37)
    {
        temp_63 = temp_5;
    }
    temp_64 = temp_63;
    if (temp_37)
    {
        temp_56 = temp_45 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_65 = temp_56;
    if (temp_37)
    {
        temp_57 = temp_45 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_66 = temp_57;
    if (temp_37)
    {
        temp_58 = temp_45 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_67 = temp_58;
    if (!temp_37)
    {
        temp_68 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_69 = (temp_5 + 0.0 - fma(temp_68, exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_68)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_65 = temp_69 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_66 = temp_69 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_67 = temp_69 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    if (!temp_37)
    {
        temp_70 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_64 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_70, temp_70);
    }
    temp_71 = fma(temp_64, temp_27, temp_67);
    temp_72 = fma(temp_64, temp_28, temp_65);
    temp_73 = fma(temp_64, temp_29, temp_66);
    if (temp_5 < 0.001)
    {
        temp_74 = inversesqrt(fma(temp_29, temp_29, fma(temp_28, temp_28, temp_27 * temp_27)));
        temp_71 = fma(temp_74 * temp_27, -0.001, temp_60);
        temp_72 = fma(temp_74 * temp_28, -0.001, temp_61);
        temp_73 = fma(temp_74 * temp_29, -0.001, temp_62);
    }
    temp_75 = temp_60 + 0.0 - temp_71;
    temp_76 = temp_61 + 0.0 - temp_72;
    temp_77 = temp_62 + 0.0 - temp_73;
    temp_78 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_79 = 0.0 + fma(temp_77, temp_36, fma(temp_76, temp_35, temp_75 * temp_34));
    temp_80 = 0.0 + fma(temp_77, temp_40, fma(temp_76, temp_39, temp_75 * temp_38));
    temp_81 = 0.0 + fma(temp_77, temp_33, fma(temp_76, temp_32, temp_75 * temp_31));
    temp_82 = temp_79;
    temp_83 = temp_80;
    temp_84 = temp_81;
    if (sqrt(fma(temp_81, temp_81, fma(temp_80, temp_80, temp_79 * temp_79))) < 0.001)
    {
        temp_82 = 0.0 + fma(temp_62, temp_36, fma(temp_61, temp_35, temp_60 * temp_34));
        temp_83 = 0.0 + fma(temp_62, temp_40, fma(temp_61, temp_39, temp_60 * temp_38));
        temp_84 = 0.0 + fma(temp_62, temp_33, fma(temp_61, temp_32, temp_60 * temp_31));
    }
    temp_85 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_86 = sysScaleAttr.w;
    temp_87 = temp_26 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_88 = temp_26 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_89 = temp_26 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_90 = inversesqrt(fma(temp_84, temp_84, fma(temp_83, temp_83, temp_82 * temp_82)));
    temp_91 = temp_26 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_92 = fma(temp_88, 0.0 - temp_89, temp_88);
    temp_93 = temp_26 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_94 = temp_90 * temp_83;
    temp_95 = temp_90 * temp_84;
    temp_96 = fma(temp_89, 0.0 - temp_93, temp_89);
    temp_97 = temp_90 * temp_82;
    temp_98 = fma(temp_95, 0.0 - _sysViewUniformBlock.data[16].y, 0.0 - temp_94 * 0.0 - _sysViewUniformBlock.data[16].z);
    temp_99 = fma(temp_97, 0.0 - _sysViewUniformBlock.data[16].z, 0.0 - temp_95 * 0.0 - _sysViewUniformBlock.data[16].x);
    temp_100 = fma(temp_60, temp_86, sysLocalPosAttr.x);
    temp_101 = fma(temp_94, 0.0 - _sysViewUniformBlock.data[16].x, 0.0 - temp_97 * 0.0 - _sysViewUniformBlock.data[16].y);
    temp_102 = fma(temp_61, temp_86, sysLocalPosAttr.y);
    temp_103 = fma(temp_62, temp_86, sysLocalPosAttr.z);
    temp_104 = inversesqrt(fma(temp_101, temp_101, fma(temp_99, temp_99, temp_98 * temp_98)));
    temp_105 = fma(temp_93, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_85, temp_91, _sysEmitterStaticUniformBlock.data[97].y), temp_96, fma(fma((_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_78, temp_87, _sysEmitterStaticUniformBlock.data[96].y), temp_92, fma(temp_88, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * temp_23 * _sysEmitterDynamicUniformBlock.data[3].z * sysScaleAttr.y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_17);
    temp_106 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_93, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_85, temp_91, _sysEmitterStaticUniformBlock.data[97].x), temp_96, fma(fma((_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_78, temp_87, _sysEmitterStaticUniformBlock.data[96].x), temp_92, fma(temp_88, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * temp_23 * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_22);
    temp_107 = 0.0 + fma(temp_106, temp_98 * temp_104, temp_105 * temp_97) + fma(temp_103, temp_36, fma(temp_102, temp_35, temp_100 * temp_34)) + sysEmtMat0Attr.w;
    temp_108 = 0.0 + fma(temp_106, temp_99 * temp_104, temp_105 * temp_94) + fma(temp_103, temp_40, fma(temp_102, temp_39, temp_100 * temp_38)) + sysEmtMat1Attr.w;
    temp_109 = 0.0 + fma(temp_106, temp_101 * temp_104, temp_105 * temp_95) + fma(temp_103, temp_33, fma(temp_102, temp_32, temp_100 * temp_31)) + sysEmtMat2Attr.w;
    temp_110 = fma(temp_109, _sysViewUniformBlock.data[0].z, fma(temp_108, _sysViewUniformBlock.data[0].y, temp_107 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_111 = fma(temp_109, _sysViewUniformBlock.data[1].z, fma(temp_108, _sysViewUniformBlock.data[1].y, temp_107 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_112 = fma(temp_109, _sysViewUniformBlock.data[2].z, fma(temp_108, _sysViewUniformBlock.data[2].y, temp_107 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_113 = fma(temp_109, _sysViewUniformBlock.data[3].z, fma(temp_108, _sysViewUniformBlock.data[3].y, temp_107 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_114 = fma(temp_109, _sysViewUniformBlock.data[11].z, fma(temp_108, _sysViewUniformBlock.data[11].y, temp_107 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_109, _sysViewUniformBlock.data[8].z, fma(temp_108, _sysViewUniformBlock.data[8].y, temp_107 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_109, _sysViewUniformBlock.data[9].z, fma(temp_108, _sysViewUniformBlock.data[9].y, temp_107 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_113, _sysViewUniformBlock.data[6].w, fma(temp_112, _sysViewUniformBlock.data[6].z, fma(temp_111, _sysViewUniformBlock.data[6].y, temp_110 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_113, _sysViewUniformBlock.data[7].w, fma(temp_112, _sysViewUniformBlock.data[7].z, fma(temp_111, _sysViewUniformBlock.data[7].y, temp_110 * _sysViewUniformBlock.data[7].x)))) * temp_114;
    gl_Position.w = temp_114;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_115 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_116 = temp_115 + 0.0 - floor(temp_115);
    }
    else
    {
        temp_116 = temp_5 * (1.0 / temp_6);
    }
    temp_117 = temp_116 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_118 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_119 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_120 = temp_116 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_121 = temp_116 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_122 = temp_116 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_123 = temp_116 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_124 = fma(temp_117, 0.0 - temp_121, temp_117);
    temp_125 = fma(temp_121, 0.0 - temp_123, temp_121);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_126 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_127 = temp_126 + 0.0 - floor(temp_126);
    }
    else
    {
        temp_127 = temp_5 * (1.0 / temp_6);
    }
    temp_128 = temp_127 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_129 = temp_127 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_130 = temp_127 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_131 = temp_127 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_24 = 0.0 - temp_22 + -0.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_21 = 0.0 - temp_17 + -0.0;
    }
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr2.x = (temp_24 + 0.5) * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = (temp_21 + -0.5) * 0.0 - _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr0.x = fma(temp_123, _sysEmitterStaticUniformBlock.data[62].x, fma(fma(temp_120, (_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_119, _sysEmitterStaticUniformBlock.data[61].x), temp_125, fma(fma(temp_122, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_118, _sysEmitterStaticUniformBlock.data[60].x), temp_124, fma(temp_117, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x)))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_123, _sysEmitterStaticUniformBlock.data[62].y, fma(fma(temp_120, (_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_119, _sysEmitterStaticUniformBlock.data[61].y), temp_125, fma(fma(temp_122, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_118, _sysEmitterStaticUniformBlock.data[60].y), temp_124, fma(temp_117, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y)))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_123, _sysEmitterStaticUniformBlock.data[62].z, fma(fma(temp_120, (_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_119, _sysEmitterStaticUniformBlock.data[61].z), temp_125, fma(fma(temp_122, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_118, _sysEmitterStaticUniformBlock.data[60].z), temp_124, fma(temp_117, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z)))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_131, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_127 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_130, 0.0 - temp_131, temp_130), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_127 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_129, 0.0 - temp_130, temp_129), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_127 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_128, 0.0 - temp_129, temp_128), fma(temp_128, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    break;
} while (false);
}
