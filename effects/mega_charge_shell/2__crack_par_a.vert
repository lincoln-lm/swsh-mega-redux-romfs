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

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;

layout (binding = 7, std140) uniform sysEmitterDynamicUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterDynamicUniformBlock;

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;


layout (location = 0) in vec4 sysLocalPosAttr;
layout (location = 1) in vec4 sysLocalVecAttr;
layout (location = 2) in vec4 sysLocalDiffAttr;
layout (location = 3) in vec4 sysScaleAttr;
layout (location = 4) in vec4 sysRandomAttr;
layout (location = 5) in vec4 sysInitRotateAttr;
layout (location = 6) in vec4 sysEmtMat0Attr;
layout (location = 7) in vec4 sysEmtMat1Attr;
layout (location = 8) in vec4 sysEmtMat2Attr;

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
    precise float temp_6;
    bool temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    bool temp_11;
    bool temp_12;
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
    int temp_28;
    precise float temp_29;
    precise float temp_30;
    precise float temp_31;
    int temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    bool temp_38;
    precise float temp_39;
    precise float temp_40;
    int temp_41;
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
    bool temp_110;
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
    int temp_123;
    int temp_124;
    bool temp_125;
    int temp_126;
    int temp_127;
    uint temp_128;
    int temp_129;
    int temp_130;
    int temp_131;
    int temp_132;
    precise float temp_133;
    int temp_134;
    int temp_135;
    int temp_136;
    int temp_137;
    int temp_138;
    int temp_139;
    precise float temp_140;
    int temp_141;
    int temp_142;
    int temp_143;
    int temp_144;
    int temp_145;
    int temp_146;
    int temp_147;
    int temp_148;
    int temp_149;
    int temp_150;
    int temp_151;
    int temp_152;
    int temp_153;
    int temp_154;
    int temp_155;
    int temp_156;
    int temp_157;
    int temp_158;
    int temp_159;
    int temp_160;
    uint temp_161;
    int temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    int temp_166;
    int temp_167;
    int temp_168;
    int temp_169;
    int temp_170;
    int temp_171;
    uint temp_172;
    precise float temp_173;
    int temp_174;
    precise float temp_175;
    uint temp_176;
    precise float temp_177;
    int temp_178;
    precise float temp_179;
    int temp_180;
    int temp_181;
    int temp_182;
    int temp_183;
    int temp_184;
    int temp_185;
    int temp_186;
    int temp_187;
    int temp_188;
    int temp_189;
    int temp_190;
    int temp_191;
    int temp_192;
    uint temp_193;
    uint temp_194;
    int temp_195;
    int temp_196;
    int temp_197;
    int temp_198;
    int temp_199;
    int temp_200;
    precise float temp_201;
    precise float temp_202;
    precise float temp_203;
    precise float temp_204;
    int temp_205;
    int temp_206;
    uint temp_207;
    int temp_208;
    uint temp_209;
    precise float temp_210;
    int temp_211;
    precise float temp_212;
    int temp_213;
    precise float temp_214;
    precise float temp_215;
    precise float temp_216;
    precise float temp_217;
    precise float temp_218;
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
    temp_9 = intBitsToFloat(gl_VertexID);
    temp_10 = sysRandomAttr.x;
    temp_11 = (floatBitsToInt(temp_9) & 1) != 0;
    temp_12 = (floatBitsToInt(temp_9) & 2) != 0;
    temp_13 = intBitsToFloat(undef);
    if (temp_11)
    {
        temp_13 = 0.5;
    }
    temp_14 = intBitsToFloat(undef);
    temp_15 = temp_13;
    if (temp_12)
    {
        temp_14 = 0.5;
    }
    temp_16 = temp_14;
    if (!temp_11)
    {
        temp_15 = -0.5;
    }
    temp_17 = temp_15;
    if (!temp_12)
    {
        temp_16 = -0.5;
    }
    temp_18 = temp_16;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_19 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_20 = temp_19 + 0.0 - floor(temp_19);
    }
    else
    {
        temp_20 = temp_5 * (1.0 / temp_6);
    }
    temp_21 = sysLocalPosAttr.x;
    temp_22 = sysLocalPosAttr.y;
    temp_23 = sysLocalPosAttr.z;
    temp_24 = sysEmtMat2Attr.x;
    temp_25 = sysEmtMat2Attr.y;
    temp_26 = sysEmtMat2Attr.z;
    temp_27 = floor(temp_10 * 2.0);
    temp_28 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_29 = sysEmtMat1Attr.x;
    temp_30 = sysEmtMat1Attr.y;
    temp_31 = sysEmtMat1Attr.z;
    temp_32 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_33 = sysEmtMat0Attr.x;
    temp_34 = sysEmtMat0Attr.y;
    temp_35 = sysEmtMat0Attr.z;
    temp_36 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_37 = sysRandomAttr.y;
    temp_38 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_39 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_40 = temp_20 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_41 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_42 = sysRandomAttr.z;
    temp_43 = fma(temp_35, temp_23, fma(temp_34, temp_22, temp_33 * temp_21)) + sysEmtMat0Attr.w;
    temp_44 = floor(temp_37 * 2.0);
    temp_45 = temp_20 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_46 = temp_20 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_47 = fma(temp_31, temp_23, fma(temp_30, temp_22, temp_29 * temp_21)) + sysEmtMat1Attr.w;
    temp_48 = fma(temp_26, temp_23, fma(temp_25, temp_22, temp_24 * temp_21)) + sysEmtMat2Attr.w;
    temp_49 = floor(temp_42 * 2.0);
    temp_50 = temp_20 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_51 = temp_20 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_52 = sysInitRotateAttr.x;
    temp_53 = sysInitRotateAttr.y;
    temp_54 = sysInitRotateAttr.z;
    temp_55 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_56 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_57 = temp_55;
    temp_58 = temp_26;
    if (!temp_38)
    {
        temp_56 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_59 = fma(temp_50, 0.0 - temp_40, temp_40);
    temp_60 = ((temp_27 > 0.0 ? 1.0 : 0.0) + 0.0 - (temp_27 < 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_41 > 0 ? -1 : 0) + 0 - (temp_41 >= 0 ? 0 : 1)));
    if (!temp_38)
    {
        temp_57 = 1.0 / temp_56;
    }
    temp_61 = 0.0 - temp_47 + _sysViewUniformBlock.data[17].y;
    temp_62 = fma(temp_50, 0.0 - temp_51, temp_50);
    temp_63 = temp_49 < 0.0 ? 1.0 : 0.0;
    temp_64 = 0.0 - temp_43 + _sysViewUniformBlock.data[17].x;
    temp_65 = temp_63;
    if (!temp_38)
    {
        temp_65 = fma(exp2(temp_55), 0.0 - temp_57, temp_57);
    }
    temp_66 = 0.0 - temp_48 + _sysViewUniformBlock.data[17].z;
    temp_67 = fma(fma(temp_10 + temp_37, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_68 = ((temp_49 > 0.0 ? 1.0 : 0.0) + 0.0 - temp_63) * float(abs(0 - (temp_28 > 0 ? -1 : 0) + 0 - (temp_28 >= 0 ? 0 : 1)));
    temp_69 = ((temp_44 > 0.0 ? 1.0 : 0.0) + 0.0 - (temp_44 < 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_32 > 0 ? -1 : 0) + 0 - (temp_32 >= 0 ? 0 : 1)));
    temp_70 = fma(fma(temp_37 + temp_42, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_71 = inversesqrt(fma(temp_66, temp_66, fma(temp_61, temp_61, temp_64 * temp_64)));
    temp_72 = temp_65;
    if (temp_38)
    {
        temp_72 = temp_5;
    }
    temp_73 = fma(fma(temp_10 + temp_42, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_74 = temp_66 * temp_71;
    temp_75 = fma(fma(temp_70 * temp_68, -2.0, temp_70), temp_72, fma(temp_37 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_68 * temp_53, -2.0, temp_53)));
    temp_76 = fma(fma(temp_67 * temp_69, -2.0, temp_67), temp_72, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_69 * temp_52, -2.0, temp_52)));
    temp_77 = temp_64 * temp_71;
    temp_78 = temp_61 * temp_71;
    temp_79 = fma(temp_78, 0.0 - _sysViewUniformBlock.data[1].z, 0.0 - temp_74 * 0.0 - _sysViewUniformBlock.data[1].y);
    temp_80 = fma(fma(temp_73 * temp_60, -2.0, temp_73), temp_72, fma(temp_42 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_60 * temp_54, -2.0, temp_54)));
    temp_81 = fma(temp_74, 0.0 - _sysViewUniformBlock.data[1].x, 0.0 - temp_77 * 0.0 - _sysViewUniformBlock.data[1].z);
    temp_82 = fma(temp_77, 0.0 - _sysViewUniformBlock.data[1].y, 0.0 - temp_78 * 0.0 - _sysViewUniformBlock.data[1].x);
    temp_83 = fma(temp_51, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_36, temp_46, _sysEmitterStaticUniformBlock.data[97].y), temp_62, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_39, _sysEmitterStaticUniformBlock.data[96].y), temp_59, fma(temp_40, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_16);
    temp_84 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_51, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_36, temp_46, _sysEmitterStaticUniformBlock.data[97].x), temp_62, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_39, _sysEmitterStaticUniformBlock.data[96].x), temp_59, fma(temp_40, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_15);
    temp_85 = inversesqrt(fma(temp_82, temp_82, fma(temp_81, temp_81, temp_79 * temp_79)));
    temp_86 = temp_81 * temp_85;
    temp_87 = temp_82 * temp_85;
    temp_88 = temp_79 * temp_85;
    temp_89 = 0.0 + fma(temp_84, cos(temp_80) * cos(temp_75), temp_83 * 0.0 - sin(temp_80));
    temp_90 = 0.0 + fma(temp_84, fma(sin(temp_80), cos(temp_76) * cos(temp_75), sin(temp_75) * sin(temp_76)), temp_83 * cos(temp_76) * cos(temp_80));
    temp_91 = fma(temp_78, temp_87, 0.0 - temp_74 * temp_86);
    temp_92 = 0.0 + fma(temp_84, fma(sin(temp_80), sin(temp_76) * cos(temp_75), 0.0 - sin(temp_75) * cos(temp_76)), temp_83 * sin(temp_76) * cos(temp_80));
    temp_93 = sysLocalDiffAttr.x;
    temp_94 = sysLocalDiffAttr.y;
    temp_95 = sysLocalDiffAttr.z;
    temp_96 = 0.0 + fma(temp_77, temp_92, fma(temp_91, temp_90, temp_88 * temp_89));
    temp_97 = 0.0 + fma(temp_78, temp_92, fma(fma(temp_74, temp_88, 0.0 - temp_77 * temp_87), temp_90, temp_86 * temp_89));
    temp_98 = 0.0 + fma(temp_74, temp_92, fma(fma(temp_77, temp_86, 0.0 - temp_78 * temp_88), temp_90, temp_87 * temp_89));
    temp_99 = fma(temp_98, temp_98, fma(temp_97, temp_97, temp_96 * temp_96));
    temp_100 = temp_48 + temp_98;
    temp_101 = temp_43 + temp_96;
    temp_102 = 0.0 + fma(temp_95, temp_31, fma(temp_94, temp_30, temp_93 * temp_29));
    temp_103 = 0.0 + fma(temp_95, temp_35, fma(temp_94, temp_34, temp_93 * temp_33));
    temp_104 = temp_47 + temp_97;
    temp_105 = temp_91;
    temp_106 = temp_104;
    temp_107 = temp_100;
    temp_108 = temp_101;
    if (sqrt(temp_99) > 0.0)
    {
        temp_109 = temp_103 * temp_103;
        temp_110 = 0.0 < _sysEmitterDynamicUniformBlock.data[2].w;
        temp_111 = 0.0 + fma(temp_95, temp_26, fma(temp_94, temp_25, temp_93 * temp_24)) + 9.99999997E-07;
        temp_112 = fma(temp_111, temp_111, fma(temp_102, temp_102, temp_109));
        temp_113 = sqrt(temp_112);
        temp_114 = temp_109;
        if (temp_110)
        {
            temp_105 = _sysEmitterDynamicUniformBlock.data[2].w;
        }
        temp_115 = temp_105;
        if (temp_110)
        {
            temp_115 = 1.0 / temp_105;
        }
        if (temp_110)
        {
            temp_113 = temp_103 * temp_115;
        }
        temp_116 = temp_113;
        if (temp_110)
        {
            temp_114 = temp_102 * temp_115;
        }
        temp_117 = temp_114;
        if (temp_110)
        {
            temp_58 = temp_111 * temp_115;
        }
        temp_118 = temp_58;
        if (!temp_110)
        {
            temp_119 = sysScaleAttr.w;
            temp_120 = inversesqrt(fma(temp_111, temp_111, fma(temp_102, temp_102, temp_103 * temp_103)));
            temp_121 = sqrt(fma(sysLocalVecAttr.z, sysLocalVecAttr.z, fma(sysLocalVecAttr.y, sysLocalVecAttr.y, sysLocalVecAttr.x * sysLocalVecAttr.x)));
            temp_116 = temp_103 * temp_120 * temp_121 * temp_119;
            temp_117 = temp_102 * temp_120 * temp_121 * temp_119;
            temp_118 = temp_111 * temp_120 * temp_121 * temp_119;
        }
        if (sqrt(temp_112) > 0.0)
        {
            temp_122 = fma(temp_111 * inversesqrt(temp_112), temp_98 * inversesqrt(temp_99), fma(temp_102 * inversesqrt(temp_112), temp_97 * inversesqrt(temp_99), temp_103 * inversesqrt(temp_112) * temp_96 * inversesqrt(temp_99)));
            temp_106 = fma(temp_122, temp_117 * _sysEmitterStaticUniformBlock.data[95].x, temp_104);
            temp_107 = fma(temp_122, temp_118 * _sysEmitterStaticUniformBlock.data[95].x, temp_100);
            temp_108 = fma(temp_122, temp_116 * _sysEmitterStaticUniformBlock.data[95].x, temp_101);
        }
    }
    temp_123 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 16;
    temp_124 = int(trunc(_sysEmitterStaticUniformBlock.data[17].x));
    temp_125 = temp_124 < 0 || !(temp_124 == 0);
    temp_126 = floatBitsToInt(1.0 / float(uint(temp_124))) + -2;
    temp_127 = int(trunc(temp_5 * (1.0 / float(int(trunc(_sysEmitterStaticUniformBlock.data[17].y))))));
    temp_128 = uint(max(trunc(intBitsToFloat(temp_126) * float(uint(temp_127))), 0.0));
    temp_129 = (temp_124 & 0xFFFF) * (int(temp_128 >> 16)) & 0xFFFF | int(temp_128) << 16;
    temp_130 = int(temp_128) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(temp_127 + 0 - ((int(uint(temp_124) >> 16)) * (int(uint(temp_129) >> 16)) << 16) + (temp_124 & 0xFFFF) * (int(temp_128) & 0xFFFF) + (temp_129 << 16)))), 0.0)));
    temp_131 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x2000000;
    temp_132 = (temp_124 & 0xFFFF) * (int(uint(temp_130) >> 16)) & 0xFFFF | temp_130 << 16;
    temp_133 = 1.0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_133 = 7.34548998;
    }
    temp_134 = 0 - temp_130 + ((uint(temp_127 + 0 - ((int(uint(temp_124) >> 16)) * (int(uint(temp_132) >> 16)) << 16) + (temp_124 & 0xFFFF) * (temp_130 & 0xFFFF) + (temp_132 << 16)) >= uint(temp_124) ? -1 : 0));
    temp_135 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 32;
    temp_136 = (temp_124 & 0xFFFF) * (int(uint(temp_134) >> 16)) & 0xFFFF | temp_134 << 16;
    temp_137 = abs((float(temp_127) >= float(temp_124) ? -1 : 0));
    temp_138 = 0 - temp_137 + 1;
    temp_139 = temp_125 ? temp_127 + ((int(uint(temp_124) >> 16)) * (int(uint(temp_136) >> 16)) << 16) + (temp_124 & 0xFFFF) * (temp_134 & 0xFFFF) + (temp_136 << 16) : -1;
    temp_140 = temp_133 * temp_10;
    temp_141 = (temp_138 & 0xFFFF) * (int(uint(temp_139) >> 16)) & 0xFFFF | temp_139 << 16;
    temp_142 = temp_124 + -1;
    temp_143 = abs(0 - (temp_135 > 0 ? -1 : 0) + 0 - (temp_135 >= 0 ? 0 : 1));
    temp_144 = (temp_137 & 0xFFFF) * (int(uint(temp_142) >> 16)) & 0xFFFF | temp_142 << 16;
    temp_145 = abs(0 - (temp_123 > 0 ? -1 : 0) + 0 - (temp_123 >= 0 ? 0 : 1));
    temp_146 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 64;
    temp_147 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 128;
    temp_148 = int(trunc(temp_5 * float(temp_124) * (1.0 / temp_6)));
    temp_149 = ((int(uint(temp_137) >> 16)) * (int(uint(temp_144) >> 16)) << 16) + (temp_137 & 0xFFFF) * (temp_142 & 0xFFFF) + ((int(uint(temp_138) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_138 & 0xFFFF) * (temp_139 & 0xFFFF) + (temp_141 << 16) + (temp_144 << 16);
    temp_150 = int(trunc(float(temp_124) * (temp_140 + 0.0 - floor(temp_140))));
    temp_151 = abs(0 - (temp_131 > 0 ? -1 : 0) + 0 - (temp_131 >= 0 ? 0 : 1));
    temp_152 = (temp_143 & 0xFFFF) * (int(uint(temp_149) >> 16)) & 0xFFFF | temp_149 << 16;
    temp_153 = abs(0 - (temp_146 > 0 ? -1 : 0) + 0 - (temp_146 >= 0 ? 0 : 1));
    temp_154 = (temp_151 & 0xFFFF) * (int(uint(temp_150) >> 16)) & 0xFFFF | temp_150 << 16;
    temp_155 = (temp_145 & 0xFFFF) * (int(uint(temp_148) >> 16)) & 0xFFFF | temp_148 << 16;
    temp_156 = ((int(uint(temp_151) >> 16)) * (int(uint(temp_154) >> 16)) << 16) + (temp_151 & 0xFFFF) * (temp_150 & 0xFFFF) + temp_127 + (temp_154 << 16);
    temp_157 = abs(0 - (temp_147 > 0 ? -1 : 0) + 0 - (temp_147 >= 0 ? 0 : 1));
    temp_158 = (temp_153 & 0xFFFF) * (int(uint(temp_156) >> 16)) & 0xFFFF | temp_156 << 16;
    temp_159 = (temp_157 & 0xFFFF) * (int(uint(temp_150) >> 16)) & 0xFFFF | temp_150 << 16;
    temp_160 = ((int(uint(temp_157) >> 16)) * (int(uint(temp_159) >> 16)) << 16) + (temp_157 & 0xFFFF) * (temp_150 & 0xFFFF) + ((int(uint(temp_153) >> 16)) * (int(uint(temp_158) >> 16)) << 16) + (temp_153 & 0xFFFF) * (temp_156 & 0xFFFF) + ((int(uint(temp_145) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (temp_145 & 0xFFFF) * (temp_148 & 0xFFFF) + ((int(uint(temp_143) >> 16)) * (int(uint(temp_152) >> 16)) << 16) + (temp_143 & 0xFFFF) * (temp_149 & 0xFFFF) + (temp_152 << 16) + (temp_155 << 16) + (temp_158 << 16) + (temp_159 << 16);
    temp_161 = uint(max(trunc(intBitsToFloat(temp_126) * float(uint(temp_160))), 0.0));
    temp_162 = (temp_124 & 0xFFFF) * (int(temp_161 >> 16)) & 0xFFFF | int(temp_161) << 16;
    temp_163 = int(temp_161) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(temp_160 + 0 - ((int(uint(temp_124) >> 16)) * (int(uint(temp_162) >> 16)) << 16) + (temp_124 & 0xFFFF) * (int(temp_161) & 0xFFFF) + (temp_162 << 16)))), 0.0)));
    temp_164 = (temp_124 & 0xFFFF) * (int(uint(temp_163) >> 16)) & 0xFFFF | temp_163 << 16;
    temp_165 = 0 - temp_163 + ((uint(temp_160 + 0 - ((int(uint(temp_124) >> 16)) * (int(uint(temp_164) >> 16)) << 16) + (temp_124 & 0xFFFF) * (temp_163 & 0xFFFF) + (temp_164 << 16)) >= uint(temp_124) ? -1 : 0));
    temp_166 = (temp_124 & 0xFFFF) * (int(uint(temp_165) >> 16)) & 0xFFFF | temp_165 << 16;
    temp_167 = temp_125 ? temp_160 + ((int(uint(temp_124) >> 16)) * (int(uint(temp_166) >> 16)) << 16) + (temp_124 & 0xFFFF) * (temp_165 & 0xFFFF) + (temp_166 << 16) : -1;
    temp_168 = temp_167 & 3;
    temp_169 = temp_168 + -2;
    temp_170 = temp_167 + (temp_167 >> 31 & 3) >> 2 << 4;
    temp_171 = temp_168 + -1;
    temp_172 = uint(temp_170 + 0x120) >> 2;
    temp_173 = _sysEmitterStaticUniformBlock.data[int(temp_172 >> 2)][int(temp_172) & 3];
    temp_174 = int(temp_172) + 1;
    temp_175 = _sysEmitterStaticUniformBlock.data[int(uint(temp_174) >> 2)][temp_174 & 3];
    temp_176 = uint(temp_170 + 0x128) >> 2;
    temp_177 = _sysEmitterStaticUniformBlock.data[int(temp_176 >> 2)][int(temp_176) & 3];
    temp_178 = int(temp_176) + 1;
    temp_179 = _sysEmitterStaticUniformBlock.data[int(uint(temp_178) >> 2)][temp_178 & 3];
    temp_180 = temp_168 + -3;
    temp_181 = 0 - abs(0 - (temp_171 > 0 ? -1 : 0) + 0 - (temp_171 >= 0 ? 0 : 1)) + 1;
    temp_182 = (floatBitsToInt(temp_175) & 0xFFFF) * (int(uint(temp_181) >> 16)) & 0xFFFF | temp_181 << 16;
    temp_183 = 0 - abs(0 - (temp_168 > 0 ? -1 : 0) + 0 - (temp_168 >= 0 ? 0 : 1)) + 1;
    temp_184 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_185 = (floatBitsToInt(temp_173) & 0xFFFF) * (int(uint(temp_183) >> 16)) & 0xFFFF | temp_183 << 16;
    temp_186 = 0 - abs(0 - (temp_169 > 0 ? -1 : 0) + 0 - (temp_169 >= 0 ? 0 : 1)) + 1;
    temp_187 = (floatBitsToInt(temp_177) & 0xFFFF) * (int(uint(temp_186) >> 16)) & 0xFFFF | temp_186 << 16;
    temp_188 = 0 - abs(0 - (temp_180 > 0 ? -1 : 0) + 0 - (temp_180 >= 0 ? 0 : 1)) + 1;
    temp_189 = (temp_188 & 0xFFFF) * (int(floatBitsToUint(temp_179) >> 16)) & 0xFFFF | floatBitsToInt(temp_179) << 16;
    temp_190 = ((int(uint(temp_188) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (temp_188 & 0xFFFF) * (floatBitsToInt(temp_179) & 0xFFFF) + ((int(floatBitsToUint(temp_177) >> 16)) * (int(uint(temp_187) >> 16)) << 16) + (floatBitsToInt(temp_177) & 0xFFFF) * (temp_186 & 0xFFFF) + ((int(floatBitsToUint(temp_173) >> 16)) * (int(uint(temp_185) >> 16)) << 16) + (floatBitsToInt(temp_173) & 0xFFFF) * (temp_183 & 0xFFFF) + ((int(floatBitsToUint(temp_175) >> 16)) * (int(uint(temp_182) >> 16)) << 16) + (floatBitsToInt(temp_175) & 0xFFFF) * (temp_181 & 0xFFFF) + (temp_182 << 16) + (temp_185 << 16) + (temp_187 << 16) + (temp_189 << 16);
    temp_191 = floatBitsToInt(1.0 / float(uint(temp_184))) + -2;
    temp_192 = floatBitsToInt(1.0 / float(uint(abs(temp_184)))) + -2;
    temp_193 = uint(max(trunc(intBitsToFloat(temp_191) * float(uint(temp_190))), 0.0));
    temp_194 = uint(max(trunc(intBitsToFloat(temp_192) * float(uint(abs(temp_190)))), 0.0));
    temp_195 = (temp_184 & 0xFFFF) * (int(temp_193 >> 16)) & 0xFFFF | int(temp_193) << 16;
    temp_196 = (abs(temp_184) & 0xFFFF) * (int(temp_194 >> 16)) & 0xFFFF | int(temp_194) << 16;
    temp_197 = int(temp_193) + int(uint(max(trunc(intBitsToFloat(temp_191) * float(uint(temp_190 + 0 - ((int(uint(temp_184) >> 16)) * (int(uint(temp_195) >> 16)) << 16) + (temp_184 & 0xFFFF) * (int(temp_193) & 0xFFFF) + (temp_195 << 16)))), 0.0)));
    temp_198 = (temp_184 & 0xFFFF) * (int(uint(temp_197) >> 16)) & 0xFFFF | temp_197 << 16;
    temp_199 = int(temp_194) + int(uint(max(trunc(intBitsToFloat(temp_192) * float(uint(abs(temp_190) + 0 - ((int(uint(abs(temp_184)) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (abs(temp_184) & 0xFFFF) * (int(temp_194) & 0xFFFF) + (temp_196 << 16)))), 0.0)));
    temp_200 = (abs(temp_184) & 0xFFFF) * (int(uint(temp_199) >> 16)) & 0xFFFF | temp_199 << 16;
    temp_201 = max(sqrt(fma(temp_48 + 0.0 - _sysViewUniformBlock.data[17].z, temp_48 + 0.0 - _sysViewUniformBlock.data[17].z, fma(temp_47 + 0.0 - _sysViewUniformBlock.data[17].y, temp_47 + 0.0 - _sysViewUniformBlock.data[17].y, (temp_43 + 0.0 - _sysViewUniformBlock.data[17].x) * (temp_43 + 0.0 - _sysViewUniformBlock.data[17].x)))), _sysEmitterStaticUniformBlock.data[116].y) * (1.0 / _sysEmitterStaticUniformBlock.data[116].y);
    temp_202 = fma(0.0 - temp_43 + temp_108, temp_201, temp_43);
    temp_203 = fma(0.0 - temp_47 + temp_106, temp_201, temp_47);
    temp_204 = fma(0.0 - temp_48 + temp_107, temp_201, temp_48);
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_17 = 0.0 - temp_15 + -0.0;
    }
    temp_205 = 0 - temp_197 + ((uint(temp_190 + 0 - ((int(uint(temp_184) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_184 & 0xFFFF) * (temp_197 & 0xFFFF) + (temp_198 << 16)) >= uint(temp_184) ? -1 : 0));
    temp_206 = int(trunc(float(floatBitsToInt(_sysEmitterStaticUniformBlock.data[6].x)) * temp_10)) << 4;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_37 > 0.5) ? -1 : 0)) != 0))
    {
        temp_18 = 0.0 - temp_16 + -0.0;
    }
    temp_207 = uint(temp_206 + 0x3C0) >> 2;
    temp_208 = int(temp_207) + 1;
    temp_209 = uint(temp_206 + 0x3C8) >> 2;
    temp_210 = fma(temp_204, _sysViewUniformBlock.data[0].z, fma(temp_203, _sysViewUniformBlock.data[0].y, temp_202 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_211 = (temp_184 & 0xFFFF) * (int(uint(temp_205) >> 16)) & 0xFFFF | temp_205 << 16;
    temp_212 = fma(temp_204, _sysViewUniformBlock.data[1].z, fma(temp_203, _sysViewUniformBlock.data[1].y, temp_202 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_213 = 0 - int((uint(temp_190 ^ temp_184)) >> 31);
    temp_214 = fma(temp_204, _sysViewUniformBlock.data[2].z, fma(temp_203, _sysViewUniformBlock.data[2].y, temp_202 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_215 = fma(temp_204, _sysViewUniformBlock.data[3].z, fma(temp_203, _sysViewUniformBlock.data[3].y, temp_202 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_216 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_217 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    temp_218 = fma(temp_204, _sysViewUniformBlock.data[11].z, fma(temp_203, _sysViewUniformBlock.data[11].y, temp_202 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.w = temp_218;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[int(temp_207 >> 2)][int(temp_207) & 3] * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[int(uint(temp_208) >> 2)][temp_208 & 3] * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[int(temp_209 >> 2)][int(temp_209) & 3] * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    gl_Position.x = fma(temp_204, _sysViewUniformBlock.data[8].z, fma(temp_203, _sysViewUniformBlock.data[8].y, temp_202 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_204, _sysViewUniformBlock.data[9].z, fma(temp_203, _sysViewUniformBlock.data[9].y, temp_202 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_215, _sysViewUniformBlock.data[6].w, fma(temp_214, _sysViewUniformBlock.data[6].z, fma(temp_212, _sysViewUniformBlock.data[6].y, temp_210 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_215, _sysViewUniformBlock.data[7].w, fma(temp_214, _sysViewUniformBlock.data[7].z, fma(temp_212, _sysViewUniformBlock.data[7].y, temp_210 * _sysViewUniformBlock.data[7].x)))) * temp_218;
    out_attr1.x = 0.0 - fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), 0.0 - temp_17, temp_17) + fma(temp_217, temp_17 + 0.5, fma(float(temp_184 < 0 || !(temp_184 == 0) ? temp_190 + ((int(uint(temp_184) >> 16)) * (int(uint(temp_211) >> 16)) << 16) + (temp_184 & 0xFFFF) * (temp_205 & 0xFFFF) + (temp_211 << 16) : -1), temp_217, fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z))));
    out_attr1.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_37, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - temp_18, temp_18) + fma(temp_216, 0.0 - temp_18 + -0.5, 0.0 - fma(float(temp_184 < 0 || !(temp_184 == 0) ? 0 - temp_213 + (temp_199 + 0 - (uint(abs(temp_190) + 0 - ((int(uint(abs(temp_184)) >> 16)) * (int(uint(temp_200) >> 16)) << 16) + (abs(temp_184) & 0xFFFF) * (temp_199 & 0xFFFF) + (temp_200 << 16)) >= uint(abs(temp_184)) ? -1 : 0) ^ temp_213) : -1), 0.0 - temp_216, fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_37 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w))));
    break;
} while (false);
}
