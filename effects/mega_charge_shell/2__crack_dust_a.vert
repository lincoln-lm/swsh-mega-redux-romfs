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
    int temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    int temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    int temp_30;
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
    bool temp_53;
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
    bool temp_119;
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
    precise float temp_172;
    precise float temp_173;
    precise float temp_174;
    precise float temp_175;
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
    temp_13 = sysLocalDiffAttr.x;
    temp_14 = sysLocalDiffAttr.y;
    temp_15 = sysLocalDiffAttr.z;
    temp_16 = sysEmtMat2Attr.x;
    temp_17 = sysEmtMat2Attr.y;
    temp_18 = sysEmtMat2Attr.z;
    temp_19 = sysLocalPosAttr.x;
    temp_20 = sysLocalPosAttr.y;
    temp_21 = sysLocalPosAttr.z;
    temp_22 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_23 = sysEmtMat1Attr.x;
    temp_24 = sysEmtMat1Attr.y;
    temp_25 = sysEmtMat1Attr.z;
    temp_26 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_27 = sysEmtMat0Attr.x;
    temp_28 = sysEmtMat0Attr.y;
    temp_29 = sysEmtMat0Attr.z;
    temp_30 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_31 = sysRandomAttr.y;
    temp_32 = sysRandomAttr.z;
    temp_33 = floor(temp_10 * 2.0);
    temp_34 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_35 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[97].w + _sysEmitterStaticUniformBlock.data[98].w);
    temp_36 = fma(temp_29, temp_21, fma(temp_28, temp_20, temp_27 * temp_19)) + sysEmtMat0Attr.w;
    temp_37 = floor(temp_31 * 2.0);
    temp_38 = floor(temp_32 * 2.0);
    temp_39 = temp_12 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_40 = temp_12 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_41 = fma(temp_18, temp_21, fma(temp_17, temp_20, temp_16 * temp_19)) + sysEmtMat2Attr.w;
    temp_42 = temp_12 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_43 = temp_12 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_44 = sysInitRotateAttr.x;
    temp_45 = sysInitRotateAttr.y;
    temp_46 = sysInitRotateAttr.z;
    temp_47 = fma(temp_43, 0.0 - temp_42, temp_42);
    temp_48 = temp_12 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_49 = fma(temp_25, temp_21, fma(temp_24, temp_20, temp_23 * temp_19)) + sysEmtMat1Attr.w;
    temp_50 = (0.0 - (temp_37 < 0.0 ? 1.0 : 0.0) + (temp_37 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_22 > 0 ? -1 : 0) + 0 - (temp_22 >= 0 ? 0 : 1)));
    temp_51 = fma(temp_43, 0.0 - temp_48, temp_43);
    temp_52 = fma(fma(temp_10 + temp_31, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_53 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_54 = (0.0 - (temp_38 < 0.0 ? 1.0 : 0.0) + (temp_38 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_26 > 0 ? -1 : 0) + 0 - (temp_26 >= 0 ? 0 : 1)));
    temp_55 = 0.0 - temp_36 + _sysViewUniformBlock.data[17].x;
    temp_56 = 0.0 - temp_49 + _sysViewUniformBlock.data[17].y;
    temp_57 = 0.0 - temp_41 + _sysViewUniformBlock.data[17].z;
    temp_58 = (0.0 - (temp_33 < 0.0 ? 1.0 : 0.0) + (temp_33 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_30 > 0 ? -1 : 0) + 0 - (temp_30 >= 0 ? 0 : 1)));
    temp_59 = _sysEmitterStaticUniformBlock.data[114].w;
    if (!temp_53)
    {
        temp_59 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_60 = temp_59;
    if (!temp_53)
    {
        temp_60 = 1.0 / temp_59;
    }
    temp_61 = fma(fma(temp_31 + temp_32, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_62 = fma(fma(temp_10 + temp_32, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_63 = inversesqrt(fma(temp_57, temp_57, fma(temp_56, temp_56, temp_55 * temp_55)));
    if (!temp_53)
    {
        temp_8 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_60, temp_60);
    }
    temp_64 = temp_57 * temp_63;
    temp_65 = temp_55 * temp_63;
    temp_66 = temp_56 * temp_63;
    temp_67 = fma(fma(temp_62 * temp_58, -2.0, temp_62), temp_8, fma(temp_32 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_58 * temp_46, -2.0, temp_46)));
    temp_68 = fma(fma(temp_61 * temp_54, -2.0, temp_61), temp_8, fma(temp_31 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_54 * temp_45, -2.0, temp_45)));
    temp_69 = fma(fma(temp_52 * temp_50, -2.0, temp_52), temp_8, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_50 * temp_44, -2.0, temp_44)));
    temp_70 = fma(temp_66, 0.0 - _sysViewUniformBlock.data[1].z, 0.0 - temp_64 * 0.0 - _sysViewUniformBlock.data[1].y);
    temp_71 = fma(temp_64, 0.0 - _sysViewUniformBlock.data[1].x, 0.0 - temp_65 * 0.0 - _sysViewUniformBlock.data[1].z);
    temp_72 = fma(temp_65, 0.0 - _sysViewUniformBlock.data[1].y, 0.0 - temp_66 * 0.0 - _sysViewUniformBlock.data[1].x);
    temp_73 = fma(temp_48, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_39, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_35, _sysEmitterStaticUniformBlock.data[97].y), temp_51, fma(fma((_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_34, temp_40, _sysEmitterStaticUniformBlock.data[96].y), temp_47, fma(temp_42, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_74 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_48, _sysEmitterStaticUniformBlock.data[98].x, fma(fma(temp_39, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_35, _sysEmitterStaticUniformBlock.data[97].x), temp_51, fma(fma((_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_34, temp_40, _sysEmitterStaticUniformBlock.data[96].x), temp_47, fma(temp_42, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_75 = fma(temp_48, _sysEmitterStaticUniformBlock.data[98].z, fma(fma(temp_39, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_35, _sysEmitterStaticUniformBlock.data[97].z), temp_51, fma(fma((_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_34, temp_40, _sysEmitterStaticUniformBlock.data[96].z), temp_47, fma(temp_42, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_76 = sin(temp_68) * sin(temp_69);
    temp_77 = cos(temp_67) * sin(temp_69);
    temp_78 = cos(temp_68) * sin(temp_69);
    temp_79 = cos(temp_68) * cos(temp_69);
    temp_80 = inversesqrt(fma(temp_72, temp_72, fma(temp_71, temp_71, temp_70 * temp_70)));
    temp_81 = cos(temp_67) * cos(temp_69);
    temp_82 = cos(temp_67) * cos(temp_68);
    temp_83 = cos(temp_69) * sin(temp_68);
    temp_84 = cos(temp_67) * sin(temp_68);
    temp_85 = fma(sin(temp_67), temp_79, temp_76);
    temp_86 = fma(sin(temp_67), temp_76, temp_79);
    temp_87 = fma(sin(temp_67), temp_78, 0.0 - temp_83);
    temp_88 = fma(sin(temp_67), temp_83, 0.0 - temp_78);
    temp_89 = temp_70 * temp_80;
    temp_90 = temp_71 * temp_80;
    temp_91 = temp_72 * temp_80;
    temp_92 = fma(temp_75, temp_84, fma(temp_82, temp_74, sin(temp_67) * 0.0 - temp_73));
    temp_93 = fma(temp_88, temp_75, fma(temp_85, temp_74, temp_81 * temp_73));
    temp_94 = fma(temp_65, temp_90, 0.0 - temp_66 * temp_89);
    temp_95 = fma(temp_66, temp_91, 0.0 - temp_64 * temp_90);
    temp_96 = fma(temp_64, temp_89, 0.0 - temp_65 * temp_91);
    temp_97 = fma(temp_86, temp_75, fma(temp_87, temp_74, temp_77 * temp_73));
    temp_98 = sysNormalAttr.x;
    temp_99 = sysNormalAttr.y;
    temp_100 = sysNormalAttr.z;
    temp_101 = 0.0 + fma(temp_65, temp_97, fma(temp_95, temp_93, temp_89 * temp_92));
    temp_102 = 0.0 + fma(temp_66, temp_97, fma(temp_96, temp_93, temp_90 * temp_92));
    temp_103 = 0.0 + fma(temp_64, temp_97, fma(temp_94, temp_93, temp_91 * temp_92));
    temp_104 = fma(temp_103, temp_103, fma(temp_102, temp_102, temp_101 * temp_101));
    temp_105 = fma(fma(temp_66, temp_87, fma(temp_90, temp_82, temp_96 * temp_85)), temp_98, fma(temp_66, temp_77, fma(temp_90, 0.0 - sin(temp_67), temp_96 * temp_81)) * temp_99);
    temp_106 = 0.0 + fma(temp_15, temp_25, fma(temp_14, temp_24, temp_13 * temp_23));
    temp_107 = 0.0 + fma(temp_15, temp_29, fma(temp_14, temp_28, temp_13 * temp_27));
    temp_108 = temp_36 + temp_101;
    temp_109 = temp_49 + temp_102;
    temp_110 = temp_41 + temp_103;
    temp_111 = 0.0 + fma(fma(temp_65, temp_86, fma(temp_89, temp_84, temp_95 * temp_88)), temp_100, fma(fma(temp_65, temp_87, fma(temp_89, temp_82, temp_95 * temp_85)), temp_98, fma(temp_65, temp_77, fma(temp_89, 0.0 - sin(temp_67), temp_95 * temp_81)) * temp_99));
    temp_112 = 0.0 + fma(fma(temp_66, temp_86, fma(temp_90, temp_84, temp_96 * temp_88)), temp_100, temp_105);
    temp_113 = 0.0 + fma(fma(temp_64, temp_86, fma(temp_91, temp_84, temp_94 * temp_88)), temp_100, fma(fma(temp_64, temp_87, fma(temp_91, temp_82, temp_94 * temp_85)), temp_98, fma(temp_64, temp_77, fma(temp_91, 0.0 - sin(temp_67), temp_94 * temp_81)) * temp_99));
    temp_114 = temp_105;
    temp_115 = temp_100;
    temp_116 = temp_108;
    temp_117 = temp_109;
    temp_118 = temp_110;
    if (sqrt(temp_104) > 0.0)
    {
        temp_119 = 0.0 < _sysEmitterDynamicUniformBlock.data[2].w;
        temp_120 = 0.0 + fma(temp_15, temp_18, fma(temp_14, temp_17, temp_13 * temp_16)) + 9.99999997E-07;
        temp_121 = fma(temp_120, temp_120, fma(temp_106, temp_106, temp_107 * temp_107));
        temp_122 = inversesqrt(temp_104);
        temp_123 = sqrt(temp_121);
        if (temp_119)
        {
            temp_114 = _sysEmitterDynamicUniformBlock.data[2].w;
        }
        temp_124 = temp_114;
        if (temp_119)
        {
            temp_124 = 1.0 / temp_114;
        }
        if (temp_119)
        {
            temp_122 = temp_107 * temp_124;
        }
        temp_125 = temp_122;
        if (temp_119)
        {
            temp_123 = temp_106 * temp_124;
        }
        temp_126 = temp_123;
        if (temp_119)
        {
            temp_115 = temp_120 * temp_124;
        }
        temp_127 = temp_115;
        if (!temp_119)
        {
            temp_128 = sysScaleAttr.w;
            temp_129 = inversesqrt(fma(temp_120, temp_120, fma(temp_106, temp_106, temp_107 * temp_107)));
            temp_130 = sqrt(fma(sysLocalVecAttr.z, sysLocalVecAttr.z, fma(sysLocalVecAttr.y, sysLocalVecAttr.y, sysLocalVecAttr.x * sysLocalVecAttr.x)));
            temp_125 = temp_107 * temp_129 * temp_130 * temp_128;
            temp_127 = temp_120 * temp_129 * temp_130 * temp_128;
            temp_126 = temp_106 * temp_129 * temp_130 * temp_128;
        }
        if (sqrt(temp_121) > 0.0)
        {
            temp_131 = fma(temp_120 * inversesqrt(temp_121), temp_103 * inversesqrt(temp_104), fma(temp_106 * inversesqrt(temp_121), temp_102 * inversesqrt(temp_104), temp_107 * inversesqrt(temp_121) * temp_101 * inversesqrt(temp_104)));
            temp_116 = fma(temp_131, temp_125 * _sysEmitterStaticUniformBlock.data[95].x, temp_108);
            temp_117 = fma(temp_131, temp_126 * _sysEmitterStaticUniformBlock.data[95].x, temp_109);
            temp_118 = fma(temp_131, temp_127 * _sysEmitterStaticUniformBlock.data[95].x, temp_110);
        }
    }
    temp_132 = max(sqrt(fma(temp_41 + 0.0 - _sysViewUniformBlock.data[17].z, temp_41 + 0.0 - _sysViewUniformBlock.data[17].z, fma(temp_49 + 0.0 - _sysViewUniformBlock.data[17].y, temp_49 + 0.0 - _sysViewUniformBlock.data[17].y, (temp_36 + 0.0 - _sysViewUniformBlock.data[17].x) * (temp_36 + 0.0 - _sysViewUniformBlock.data[17].x)))), _sysEmitterStaticUniformBlock.data[116].y) * (1.0 / _sysEmitterStaticUniformBlock.data[116].y);
    temp_133 = fma(0.0 - temp_36 + temp_116, temp_132, temp_36);
    temp_134 = fma(0.0 - temp_49 + temp_117, temp_132, temp_49);
    temp_135 = fma(0.0 - temp_41 + temp_118, temp_132, temp_41);
    temp_136 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_113, _sysViewUniformBlock.data[0].z, fma(temp_112, _sysViewUniformBlock.data[0].y, temp_111 * _sysViewUniformBlock.data[0].x)));
    temp_137 = fma(temp_135, _sysViewUniformBlock.data[0].z, fma(temp_134, _sysViewUniformBlock.data[0].y, temp_133 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_138 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_113, _sysViewUniformBlock.data[1].z, fma(temp_112, _sysViewUniformBlock.data[1].y, temp_111 * _sysViewUniformBlock.data[1].x)));
    temp_139 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_113, _sysViewUniformBlock.data[2].z, fma(temp_112, _sysViewUniformBlock.data[2].y, temp_111 * _sysViewUniformBlock.data[2].x)));
    temp_140 = fma(temp_135, _sysViewUniformBlock.data[1].z, fma(temp_134, _sysViewUniformBlock.data[1].y, temp_133 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_141 = fma(temp_135, _sysViewUniformBlock.data[2].z, fma(temp_134, _sysViewUniformBlock.data[2].y, temp_133 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_142 = inversesqrt(fma(temp_139, temp_139, fma(temp_138, temp_138, temp_136 * temp_136)));
    temp_143 = inversesqrt(fma(temp_141, temp_141, fma(temp_140, temp_140, temp_137 * temp_137)));
    temp_144 = temp_136 * temp_142;
    temp_145 = temp_138 * temp_142;
    temp_146 = temp_137 * temp_143;
    temp_147 = temp_140 * temp_143;
    temp_148 = temp_141 * temp_143;
    temp_149 = clamp(max(temp_139 * temp_142, 0.2) + -0.0, 0.0, 1.0);
    temp_150 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].z;
    temp_151 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].x;
    temp_152 = fma(temp_148, temp_149, fma(temp_145, temp_147, temp_144 * temp_146));
    temp_153 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].y;
    temp_154 = fma(temp_144 * temp_152, -2.0, temp_146);
    temp_155 = fma(temp_113, _sysViewUniformBlock.data[2].x, fma(temp_111, _sysViewUniformBlock.data[0].x, temp_112 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[3].x;
    temp_156 = fma(temp_145 * temp_152, -2.0, temp_147);
    temp_157 = fma(temp_113, _sysViewUniformBlock.data[2].y, fma(temp_111, _sysViewUniformBlock.data[0].y, temp_112 * _sysViewUniformBlock.data[1].y)) + _sysViewUniformBlock.data[3].y;
    temp_158 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].x, 0.0 - temp_151)));
    temp_159 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].x, temp_151)));
    temp_160 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].y, 0.0 - temp_153)));
    temp_161 = fma(temp_113, _sysViewUniformBlock.data[2].z, fma(temp_111, _sysViewUniformBlock.data[0].z, temp_112 * _sysViewUniformBlock.data[1].z)) + _sysViewUniformBlock.data[3].z;
    temp_162 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].z, 0.0 - temp_150)));
    temp_163 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].y, temp_153)));
    temp_164 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].z, temp_150)));
    temp_165 = inversesqrt(fma(temp_161, temp_161, fma(temp_157, temp_157, temp_155 * temp_155)));
    temp_166 = inversesqrt(fma(temp_162, temp_162, fma(temp_160, temp_160, temp_158 * temp_158)));
    temp_167 = inversesqrt(fma(temp_164, temp_164, fma(temp_163, temp_163, temp_159 * temp_159)));
    temp_168 = 1.0 / (sqrt(fma(fma(temp_149 * temp_152, -2.0, temp_148) + 1.0, fma(temp_149 * temp_152, -2.0, temp_148) + 1.0, fma(0.0 + temp_156, 0.0 + temp_156, (0.0 + temp_154) * (0.0 + temp_154)))) * 2.0);
    temp_169 = temp_155 * temp_165;
    temp_170 = temp_157 * temp_165;
    temp_171 = temp_161 * temp_165;
    out_attr3.x = sysVertexColor0Attr.x;
    out_attr3.z = sysVertexColor0Attr.z;
    out_attr3.y = sysVertexColor0Attr.y;
    temp_172 = fma(temp_156, 0.0 - temp_168, 0.5);
    temp_173 = fma(temp_154, temp_168, 0.5);
    temp_174 = temp_172;
    temp_175 = temp_173;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_31 > 0.5) ? -1 : 0)) != 0))
    {
        temp_174 = 0.0 - temp_172 + 1.0;
    }
    out_attr3.w = sysVertexColor0Attr.w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_175 = 0.0 - temp_173 + 1.0;
    }
    out_attr4.x = clamp(max(fma(temp_171, temp_162 * temp_166, fma(temp_170, temp_160 * temp_166, temp_169 * temp_158 * temp_166)), 0.3) + -0.0, 0.0, 1.0);
    out_attr4.y = clamp(fma(temp_171, temp_164 * temp_167, fma(temp_170, temp_163 * temp_167, temp_169 * temp_159 * temp_167)), 0.0, 1.0);
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    gl_Position.x = fma(temp_135, _sysViewUniformBlock.data[8].z, fma(temp_134, _sysViewUniformBlock.data[8].y, temp_133 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_135, _sysViewUniformBlock.data[9].z, fma(temp_134, _sysViewUniformBlock.data[9].y, temp_133 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_135, _sysViewUniformBlock.data[10].z, fma(temp_134, _sysViewUniformBlock.data[10].y, temp_133 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_135, _sysViewUniformBlock.data[11].z, fma(temp_134, _sysViewUniformBlock.data[11].y, temp_133 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr1.x = temp_175 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = temp_174 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
