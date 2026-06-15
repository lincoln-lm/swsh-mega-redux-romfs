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


layout (binding = 11, std140) uniform sysCustomShaderUniformBlock0
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock0;

layout (location = 0) in vec4 sysPosAttr;
layout (location = 1) in vec4 sysNormalAttr;
layout (location = 2) in vec4 sysVertexColor0Attr;
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysLocalDiffAttr;
layout (location = 6) in vec4 sysScaleAttr;
layout (location = 7) in vec4 sysRandomAttr;
layout (location = 8) in vec4 sysInitRotateAttr;
layout (location = 9) in vec4 sysEmtMat0Attr;
layout (location = 10) in vec4 sysEmtMat1Attr;
layout (location = 11) in vec4 sysEmtMat2Attr;

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
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    int temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    int temp_27;
    precise float temp_28;
    precise float temp_29;
    precise float temp_30;
    precise float temp_31;
    precise float temp_32;
    int temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    bool temp_39;
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
    bool temp_117;
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
    precise float temp_132;
    precise float temp_133;
    precise float temp_134;
    precise float temp_135;
    precise float temp_136;
    precise float temp_137;
    precise float temp_138;
    precise float temp_139;
    precise float temp_140;
    precise float temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    precise float temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    precise float temp_151;
    precise float temp_152;
    precise float temp_153;
    precise float temp_154;
    precise float temp_155;
    precise float temp_156;
    precise float temp_157;
    precise float temp_158;
    precise float temp_159;
    precise float temp_160;
    precise float temp_161;
    precise float temp_162;
    precise float temp_163;
    precise float temp_164;
    precise float temp_165;
    precise float temp_166;
    precise float temp_167;
    precise float temp_168;
    precise float temp_169;
    precise float temp_170;
    precise float temp_171;
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
    temp_8 = temp_5;
    if (temp_7)
    {
        out_attr2.x = 0.0;
    }
    temp_9 = intBitsToFloat(undef);
    if (temp_7)
    {
        temp_9 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_7)
    {
        temp_4 = floatBitsToInt(temp_9 * 5.0);
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
    temp_10 = sysRandomAttr.x;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_11 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_12 = temp_11 + 0.0 - floor(temp_11);
    }
    else
    {
        temp_12 = temp_5 * (1.0 / temp_6);
    }
    temp_13 = sysLocalPosAttr.x;
    temp_14 = sysLocalPosAttr.y;
    temp_15 = sysLocalPosAttr.z;
    temp_16 = sysEmtMat2Attr.x;
    temp_17 = sysEmtMat2Attr.y;
    temp_18 = sysEmtMat2Attr.z;
    temp_19 = temp_12 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_20 = sysEmtMat1Attr.x;
    temp_21 = sysEmtMat1Attr.y;
    temp_22 = sysEmtMat1Attr.z;
    temp_23 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_24 = sysEmtMat0Attr.x;
    temp_25 = sysEmtMat0Attr.y;
    temp_26 = sysEmtMat0Attr.z;
    temp_27 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_28 = sysLocalDiffAttr.x;
    temp_29 = sysLocalDiffAttr.y;
    temp_30 = sysLocalDiffAttr.z;
    temp_31 = sysRandomAttr.y;
    temp_32 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_33 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_34 = sysRandomAttr.z;
    temp_35 = floor(temp_10 * 2.0);
    temp_36 = floor(temp_31 * 2.0);
    temp_37 = fma(temp_18, temp_15, fma(temp_17, temp_14, temp_16 * temp_13)) + sysEmtMat2Attr.w;
    temp_38 = temp_12 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_39 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_40 = floor(temp_34 * 2.0);
    temp_41 = fma(temp_26, temp_15, fma(temp_25, temp_14, temp_24 * temp_13)) + sysEmtMat0Attr.w;
    temp_42 = fma(temp_22, temp_15, fma(temp_21, temp_14, temp_20 * temp_13)) + sysEmtMat1Attr.w;
    temp_43 = temp_12 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_44 = intBitsToFloat(undef);
    if (!temp_39)
    {
        temp_44 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_45 = sysInitRotateAttr.x;
    temp_46 = sysInitRotateAttr.y;
    temp_47 = sysInitRotateAttr.z;
    temp_48 = fma(temp_19, 0.0 - temp_43, temp_19);
    temp_49 = fma(fma(temp_10 + temp_31, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_50 = (0.0 - (temp_40 < 0.0 ? 1.0 : 0.0) + (temp_40 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_27 > 0 ? -1 : 0) + 0 - (temp_27 >= 0 ? 0 : 1)));
    temp_51 = 0.0 - temp_41 + _sysViewUniformBlock.data[17].x;
    temp_52 = fma(fma(temp_31 + temp_34, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_53 = fma(fma(temp_10 + temp_34, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_54 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_55 = (0.0 - (temp_36 < 0.0 ? 1.0 : 0.0) + (temp_36 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_23 > 0 ? -1 : 0) + 0 - (temp_23 >= 0 ? 0 : 1)));
    temp_56 = (0.0 - (temp_35 < 0.0 ? 1.0 : 0.0) + (temp_35 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_33 > 0 ? -1 : 0) + 0 - (temp_33 >= 0 ? 0 : 1)));
    temp_57 = 0.0 - temp_42 + _sysViewUniformBlock.data[17].y;
    temp_58 = temp_54;
    if (!temp_39)
    {
        temp_58 = 1.0 / temp_44;
    }
    temp_59 = 0.0 - temp_37 + _sysViewUniformBlock.data[17].z;
    temp_60 = inversesqrt(fma(temp_59, temp_59, fma(temp_57, temp_57, temp_51 * temp_51)));
    if (!temp_39)
    {
        temp_8 = fma(exp2(temp_54), 0.0 - temp_58, temp_58);
    }
    temp_61 = temp_51 * temp_60;
    temp_62 = fma(fma(temp_53 * temp_56, -2.0, temp_53), temp_8, fma(temp_34 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_56 * temp_47, -2.0, temp_47)));
    temp_63 = temp_59 * temp_60;
    temp_64 = fma(fma(temp_52 * temp_50, -2.0, temp_52), temp_8, fma(temp_31 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_50 * temp_46, -2.0, temp_46)));
    temp_65 = temp_57 * temp_60;
    temp_66 = fma(fma(temp_49 * temp_55, -2.0, temp_49), temp_8, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_55 * temp_45, -2.0, temp_45)));
    temp_67 = fma(temp_65, 0.0 - _sysViewUniformBlock.data[1].z, 0.0 - temp_63 * 0.0 - _sysViewUniformBlock.data[1].y);
    temp_68 = fma(temp_63, 0.0 - _sysViewUniformBlock.data[1].x, 0.0 - temp_61 * 0.0 - _sysViewUniformBlock.data[1].z);
    temp_69 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_43, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_38, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_32, _sysEmitterStaticUniformBlock.data[96].x), temp_48, fma(temp_19, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_70 = fma(temp_61, 0.0 - _sysViewUniformBlock.data[1].y, 0.0 - temp_65 * 0.0 - _sysViewUniformBlock.data[1].x);
    temp_71 = fma(temp_43, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_38, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_32, _sysEmitterStaticUniformBlock.data[96].y), temp_48, fma(temp_19, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_72 = fma(temp_43, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_38, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_32, _sysEmitterStaticUniformBlock.data[96].z), temp_48, fma(temp_19, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_73 = sin(temp_64) * sin(temp_66);
    temp_74 = cos(temp_64) * sin(temp_66);
    temp_75 = inversesqrt(fma(temp_70, temp_70, fma(temp_68, temp_68, temp_67 * temp_67)));
    temp_76 = cos(temp_64) * cos(temp_66);
    temp_77 = cos(temp_62) * cos(temp_66);
    temp_78 = cos(temp_62) * sin(temp_66);
    temp_79 = cos(temp_66) * sin(temp_64);
    temp_80 = cos(temp_62) * cos(temp_64);
    temp_81 = cos(temp_62) * sin(temp_64);
    temp_82 = fma(sin(temp_62), temp_76, temp_73);
    temp_83 = fma(sin(temp_62), temp_74, 0.0 - temp_79);
    temp_84 = temp_68 * temp_75;
    temp_85 = temp_67 * temp_75;
    temp_86 = temp_70 * temp_75;
    temp_87 = fma(sin(temp_62), temp_79, 0.0 - temp_74);
    temp_88 = fma(temp_72, temp_81, fma(temp_80, temp_69, sin(temp_62) * 0.0 - temp_71));
    temp_89 = fma(sin(temp_62), temp_73, temp_76);
    temp_90 = fma(temp_87, temp_72, fma(temp_82, temp_69, temp_77 * temp_71));
    temp_91 = fma(temp_65, temp_86, 0.0 - temp_63 * temp_84);
    temp_92 = fma(temp_61, temp_84, 0.0 - temp_65 * temp_85);
    temp_93 = fma(temp_63, temp_85, 0.0 - temp_61 * temp_86);
    temp_94 = fma(temp_89, temp_72, fma(temp_83, temp_69, temp_78 * temp_71));
    temp_95 = sysNormalAttr.x;
    temp_96 = sysNormalAttr.y;
    temp_97 = sysNormalAttr.z;
    temp_98 = 0.0 + fma(temp_61, temp_94, fma(temp_91, temp_90, temp_85 * temp_88));
    temp_99 = 0.0 + fma(temp_65, temp_94, fma(temp_93, temp_90, temp_84 * temp_88));
    temp_100 = 0.0 + fma(temp_63, temp_94, fma(temp_92, temp_90, temp_86 * temp_88));
    temp_101 = fma(temp_100, temp_100, fma(temp_99, temp_99, temp_98 * temp_98));
    temp_102 = 0.0 + fma(temp_30, temp_22, fma(temp_29, temp_21, temp_28 * temp_20));
    temp_103 = temp_41 + temp_98;
    temp_104 = 0.0 + fma(temp_30, temp_26, fma(temp_29, temp_25, temp_28 * temp_24));
    temp_105 = temp_42 + temp_99;
    temp_106 = temp_37 + temp_100;
    temp_107 = 0.0 + fma(fma(temp_61, temp_89, fma(temp_85, temp_81, temp_91 * temp_87)), temp_97, fma(fma(temp_61, temp_83, fma(temp_85, temp_80, temp_91 * temp_82)), temp_95, fma(temp_61, temp_78, fma(temp_85, 0.0 - sin(temp_62), temp_91 * temp_77)) * temp_96));
    temp_108 = 0.0 + fma(fma(temp_65, temp_89, fma(temp_84, temp_81, temp_93 * temp_87)), temp_97, fma(fma(temp_65, temp_83, fma(temp_84, temp_80, temp_93 * temp_82)), temp_95, fma(temp_65, temp_78, fma(temp_84, 0.0 - sin(temp_62), temp_93 * temp_77)) * temp_96));
    temp_109 = 0.0 + fma(fma(temp_63, temp_89, fma(temp_86, temp_81, temp_92 * temp_87)), temp_97, fma(fma(temp_63, temp_83, fma(temp_86, temp_80, temp_92 * temp_82)), temp_95, fma(temp_63, temp_78, fma(temp_86, 0.0 - sin(temp_62), temp_92 * temp_77)) * temp_96));
    temp_110 = temp_65;
    temp_111 = temp_98;
    temp_112 = temp_99;
    temp_113 = temp_103;
    temp_114 = temp_105;
    temp_115 = temp_106;
    if (sqrt(temp_101) > 0.0)
    {
        temp_116 = 0.0 + fma(temp_30, temp_18, fma(temp_29, temp_17, temp_28 * temp_16)) + 9.99999997E-07;
        temp_117 = 0.0 < _sysEmitterDynamicUniformBlock.data[2].w;
        temp_118 = fma(temp_116, temp_116, fma(temp_102, temp_102, temp_104 * temp_104));
        temp_119 = inversesqrt(temp_101);
        if (temp_117)
        {
            temp_110 = _sysEmitterDynamicUniformBlock.data[2].w;
        }
        temp_120 = temp_110;
        if (temp_117)
        {
            temp_120 = 1.0 / temp_110;
        }
        if (temp_117)
        {
            temp_111 = temp_104 * temp_120;
        }
        temp_121 = temp_111;
        if (temp_117)
        {
            temp_119 = temp_102 * temp_120;
        }
        temp_122 = temp_119;
        if (temp_117)
        {
            temp_112 = temp_116 * temp_120;
        }
        temp_123 = temp_112;
        if (!temp_117)
        {
            temp_124 = sysScaleAttr.w;
            temp_125 = inversesqrt(fma(temp_116, temp_116, fma(temp_102, temp_102, temp_104 * temp_104)));
            temp_126 = sqrt(fma(sysLocalVecAttr.z, sysLocalVecAttr.z, fma(sysLocalVecAttr.y, sysLocalVecAttr.y, sysLocalVecAttr.x * sysLocalVecAttr.x)));
            temp_121 = temp_104 * temp_125 * temp_126 * temp_124;
            temp_122 = temp_102 * temp_125 * temp_126 * temp_124;
            temp_123 = temp_116 * temp_125 * temp_126 * temp_124;
        }
        if (sqrt(temp_118) > 0.0)
        {
            temp_127 = fma(temp_116 * inversesqrt(temp_118), temp_100 * inversesqrt(temp_101), fma(temp_102 * inversesqrt(temp_118), temp_99 * inversesqrt(temp_101), temp_104 * inversesqrt(temp_118) * temp_98 * inversesqrt(temp_101)));
            temp_113 = fma(temp_127, temp_121 * _sysEmitterStaticUniformBlock.data[95].x, temp_103);
            temp_114 = fma(temp_127, temp_122 * _sysEmitterStaticUniformBlock.data[95].x, temp_105);
            temp_115 = fma(temp_127, temp_123 * _sysEmitterStaticUniformBlock.data[95].x, temp_106);
        }
    }
    temp_128 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_109, _sysViewUniformBlock.data[0].z, fma(temp_108, _sysViewUniformBlock.data[0].y, temp_107 * _sysViewUniformBlock.data[0].x)));
    temp_129 = max(sqrt(fma(temp_37 + 0.0 - _sysViewUniformBlock.data[17].z, temp_37 + 0.0 - _sysViewUniformBlock.data[17].z, fma(temp_42 + 0.0 - _sysViewUniformBlock.data[17].y, temp_42 + 0.0 - _sysViewUniformBlock.data[17].y, (temp_41 + 0.0 - _sysViewUniformBlock.data[17].x) * (temp_41 + 0.0 - _sysViewUniformBlock.data[17].x)))), _sysEmitterStaticUniformBlock.data[116].y) * (1.0 / _sysEmitterStaticUniformBlock.data[116].y);
    temp_130 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_109, _sysViewUniformBlock.data[2].z, fma(temp_108, _sysViewUniformBlock.data[2].y, temp_107 * _sysViewUniformBlock.data[2].x)));
    temp_131 = fma(0.0 - temp_41 + temp_113, temp_129, temp_41);
    temp_132 = fma(0.0 - temp_42 + temp_114, temp_129, temp_42);
    temp_133 = fma(0.0 - temp_37 + temp_115, temp_129, temp_37);
    temp_134 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_109, _sysViewUniformBlock.data[1].z, fma(temp_108, _sysViewUniformBlock.data[1].y, temp_107 * _sysViewUniformBlock.data[1].x)));
    temp_135 = fma(temp_133, _sysViewUniformBlock.data[0].z, fma(temp_132, _sysViewUniformBlock.data[0].y, temp_131 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_136 = fma(temp_133, _sysViewUniformBlock.data[1].z, fma(temp_132, _sysViewUniformBlock.data[1].y, temp_131 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_137 = fma(temp_133, _sysViewUniformBlock.data[2].z, fma(temp_132, _sysViewUniformBlock.data[2].y, temp_131 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_138 = inversesqrt(fma(temp_130, temp_130, fma(temp_134, temp_134, temp_128 * temp_128)));
    temp_139 = inversesqrt(fma(temp_137, temp_137, fma(temp_136, temp_136, temp_135 * temp_135)));
    temp_140 = temp_128 * temp_138;
    temp_141 = temp_134 * temp_138;
    temp_142 = temp_135 * temp_139;
    temp_143 = temp_136 * temp_139;
    temp_144 = temp_137 * temp_139;
    temp_145 = clamp(max(temp_130 * temp_138, 0.2) + -0.0, 0.0, 1.0);
    temp_146 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].x;
    temp_147 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].y;
    temp_148 = fma(temp_144, temp_145, fma(temp_141, temp_143, temp_140 * temp_142));
    temp_149 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].z;
    temp_150 = fma(temp_109, _sysViewUniformBlock.data[2].x, fma(temp_107, _sysViewUniformBlock.data[0].x, temp_108 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[3].x;
    temp_151 = fma(temp_140 * temp_148, -2.0, temp_142);
    temp_152 = fma(temp_141 * temp_148, -2.0, temp_143);
    temp_153 = fma(temp_109, _sysViewUniformBlock.data[2].y, fma(temp_107, _sysViewUniformBlock.data[0].y, temp_108 * _sysViewUniformBlock.data[1].y)) + _sysViewUniformBlock.data[3].y;
    temp_154 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].x, 0.0 - temp_146)));
    temp_155 = fma(temp_109, _sysViewUniformBlock.data[2].z, fma(temp_107, _sysViewUniformBlock.data[0].z, temp_108 * _sysViewUniformBlock.data[1].z)) + _sysViewUniformBlock.data[3].z;
    temp_156 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].y, 0.0 - temp_147)));
    temp_157 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].x, temp_146)));
    temp_158 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].z, 0.0 - temp_149)));
    temp_159 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].y, temp_147)));
    temp_160 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].z, temp_149)));
    temp_161 = inversesqrt(fma(temp_155, temp_155, fma(temp_153, temp_153, temp_150 * temp_150)));
    temp_162 = inversesqrt(fma(temp_158, temp_158, fma(temp_156, temp_156, temp_154 * temp_154)));
    temp_163 = inversesqrt(fma(temp_160, temp_160, fma(temp_159, temp_159, temp_157 * temp_157)));
    temp_164 = temp_150 * temp_161;
    temp_165 = 1.0 / (sqrt(fma(fma(temp_145 * temp_148, -2.0, temp_144) + 1.0, fma(temp_145 * temp_148, -2.0, temp_144) + 1.0, fma(0.0 + temp_152, 0.0 + temp_152, (0.0 + temp_151) * (0.0 + temp_151)))) * 2.0);
    temp_166 = temp_153 * temp_161;
    temp_167 = temp_155 * temp_161;
    out_attr3.x = sysVertexColor0Attr.x;
    out_attr3.y = sysVertexColor0Attr.y;
    out_attr3.z = sysVertexColor0Attr.z;
    temp_168 = fma(temp_152, 0.0 - temp_165, 0.5);
    temp_169 = fma(temp_151, temp_165, 0.5);
    temp_170 = temp_169;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_170 = 0.0 - temp_169 + 1.0;
    }
    temp_171 = temp_168;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_31 > 0.5) ? -1 : 0)) != 0))
    {
        temp_171 = 0.0 - temp_168 + 1.0;
    }
    out_attr3.w = sysVertexColor0Attr.w;
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    gl_Position.x = fma(temp_133, _sysViewUniformBlock.data[8].z, fma(temp_132, _sysViewUniformBlock.data[8].y, temp_131 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_133, _sysViewUniformBlock.data[9].z, fma(temp_132, _sysViewUniformBlock.data[9].y, temp_131 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_133, _sysViewUniformBlock.data[10].z, fma(temp_132, _sysViewUniformBlock.data[10].y, temp_131 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_133, _sysViewUniformBlock.data[11].z, fma(temp_132, _sysViewUniformBlock.data[11].y, temp_131 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr4.x = clamp(max(fma(temp_167, temp_158 * temp_162, fma(temp_166, temp_156 * temp_162, temp_164 * temp_154 * temp_162)), 0.3) + -0.0, 0.0, 1.0);
    out_attr4.y = clamp(fma(temp_167, temp_160 * temp_163, fma(temp_166, temp_159 * temp_163, temp_164 * temp_157 * temp_163)), 0.0, 1.0);
    out_attr1.x = temp_170 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = temp_171 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
