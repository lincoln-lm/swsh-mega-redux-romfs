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
layout (location = 1) in vec4 sysTexCoordAttr;
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;
layout (location = 7) in vec4 sysInitRotateAttr;
layout (location = 8) in vec4 sysEmtMat0Attr;
layout (location = 9) in vec4 sysEmtMat1Attr;
layout (location = 10) in vec4 sysEmtMat2Attr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 4) out vec4 out_attr4;
layout (location = 5) out vec4 out_attr5;
layout (location = 6) out vec4 out_attr6;


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
    bool temp_22;
    bool temp_23;
    bool temp_24;
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
    int temp_51;
    precise float temp_52;
    int temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    int temp_57;
    precise float temp_58;
    precise float temp_59;
    bool temp_60;
    int temp_61;
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
    bool temp_81;
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
    int temp_147;
    int temp_148;
    int temp_149;
    int temp_150;
    precise float temp_151;
    precise float temp_152;
    uint temp_153;
    precise float temp_154;
    precise float temp_155;
    uint temp_156;
    int temp_157;
    int temp_158;
    precise float temp_159;
    int temp_160;
    int temp_161;
    uint temp_162;
    uint temp_163;
    precise float temp_164;
    precise float temp_165;
    int temp_166;
    precise float temp_167;
    precise float temp_168;
    int temp_169;
    int temp_170;
    precise float temp_171;
    precise float temp_172;
    precise float temp_173;
    bool temp_174;
    precise float temp_175;
    precise float temp_176;
    precise float temp_177;
    precise float temp_178;
    precise float temp_179;
    precise float temp_180;
    precise float temp_181;
    precise float temp_182;
    precise float temp_183;
    precise float temp_184;
    precise float temp_185;
    precise float temp_186;
    precise float temp_187;
    precise float temp_188;
    precise float temp_189;
    precise float temp_190;
    bool temp_191;
    int temp_192;
    int temp_193;
    int temp_194;
    int temp_195;
    int temp_196;
    int temp_197;
    int temp_198;
    int temp_199;
    int temp_200;
    int temp_201;
    precise float temp_202;
    precise float temp_203;
    precise float temp_204;
    int temp_205;
    int temp_206;
    int temp_207;
    precise float temp_208;
    precise float temp_209;
    int temp_210;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr5.x = 0.0;
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
        out_attr5.x = 0.0;
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
    temp_9 = sysEmtMat0Attr.x;
    temp_10 = sysEmtMat0Attr.y;
    temp_11 = sysEmtMat0Attr.z;
    temp_12 = sysEmtMat1Attr.x;
    temp_13 = sysEmtMat1Attr.y;
    temp_14 = sysEmtMat1Attr.z;
    temp_15 = sysEmtMat2Attr.x;
    temp_16 = sysEmtMat2Attr.y;
    temp_17 = sysEmtMat2Attr.z;
    temp_18 = sysRandomAttr.x;
    temp_19 = fma(temp_15, temp_15, fma(temp_12, temp_12, temp_9 * temp_9));
    temp_20 = fma(temp_16, temp_16, fma(temp_13, temp_13, temp_10 * temp_10));
    temp_21 = fma(temp_17, temp_17, fma(temp_14, temp_14, temp_11 * temp_11));
    temp_22 = sqrt(temp_19) > 0.0;
    temp_23 = sqrt(temp_20) > 0.0;
    temp_24 = sqrt(temp_21) > 0.0;
    temp_25 = temp_19;
    temp_26 = sqrt(temp_21);
    temp_27 = sqrt(temp_19);
    temp_28 = sqrt(temp_20);
    if (temp_22)
    {
        temp_25 = inversesqrt(temp_19);
    }
    temp_29 = intBitsToFloat(undef);
    if (!temp_22)
    {
        temp_29 = 0.0;
    }
    temp_30 = intBitsToFloat(undef);
    temp_31 = temp_29;
    if (temp_23)
    {
        temp_30 = inversesqrt(temp_20);
    }
    temp_32 = temp_30;
    if (!temp_22)
    {
        temp_26 = 0.0;
    }
    temp_33 = temp_26;
    if (temp_24)
    {
        temp_27 = inversesqrt(temp_21);
    }
    if (!temp_22)
    {
        temp_28 = 0.0;
    }
    temp_34 = temp_28;
    if (!temp_23)
    {
        temp_32 = 0.0;
    }
    temp_35 = intBitsToFloat(undef);
    temp_36 = temp_32;
    if (!temp_23)
    {
        temp_35 = 0.0;
    }
    temp_37 = intBitsToFloat(undef);
    temp_38 = temp_35;
    if (!temp_23)
    {
        temp_37 = 0.0;
    }
    temp_39 = intBitsToFloat(undef);
    temp_40 = temp_37;
    if (!temp_24)
    {
        temp_39 = 0.0;
    }
    temp_41 = intBitsToFloat(undef);
    temp_42 = temp_39;
    if (!temp_24)
    {
        temp_41 = 0.0;
    }
    temp_43 = temp_41;
    if (temp_22)
    {
        temp_34 = temp_25 * temp_9;
    }
    if (temp_22)
    {
        temp_33 = temp_25 * temp_12;
    }
    if (temp_23)
    {
        temp_40 = temp_32 * temp_10;
    }
    if (temp_23)
    {
        temp_38 = temp_32 * temp_13;
    }
    if (temp_22)
    {
        temp_31 = temp_25 * temp_15;
    }
    if (temp_23)
    {
        temp_36 = temp_32 * temp_16;
    }
    temp_44 = intBitsToFloat(undef);
    if (temp_24)
    {
        temp_44 = temp_27 * temp_11;
    }
    temp_45 = temp_44;
    if (temp_24)
    {
        temp_43 = temp_27 * temp_14;
    }
    if (temp_24)
    {
        temp_42 = temp_27 * temp_17;
    }
    if (!temp_24)
    {
        temp_45 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_46 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_47 = temp_46 + 0.0 - floor(temp_46);
    }
    else
    {
        temp_47 = temp_5 * (1.0 / temp_6);
    }
    temp_48 = sysRandomAttr.z;
    temp_49 = sysRandomAttr.y;
    temp_50 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_51 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_52 = floor(temp_18 * 2.0);
    temp_53 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_54 = floor(temp_48 * 2.0);
    temp_55 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_56 = temp_47 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_57 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_58 = floor(temp_49 * 2.0);
    temp_59 = temp_47 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_60 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_61 = 0 - (temp_57 > 0 ? -1 : 0) + 0 - (temp_57 >= 0 ? 0 : 1);
    temp_62 = temp_47 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_63 = temp_47 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_64 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_65 = temp_59;
    temp_66 = intBitsToFloat(temp_61);
    if (!temp_60)
    {
        temp_64 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_67 = temp_64;
    if (!temp_60)
    {
        temp_67 = 1.0 / temp_64;
    }
    temp_68 = fma(temp_59, 0.0 - temp_63, temp_59);
    if (temp_60)
    {
        temp_65 = temp_5;
    }
    temp_69 = temp_47 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_70 = (0.0 - (temp_58 < 0.0 ? 1.0 : 0.0) + (temp_58 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_53 > 0 ? -1 : 0) + 0 - (temp_53 >= 0 ? 0 : 1)));
    temp_71 = fma(fma(temp_18 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_72 = fma(fma(temp_49 + temp_48, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_73 = fma(fma(temp_18 + temp_48, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_74 = sysInitRotateAttr.x;
    temp_75 = sysInitRotateAttr.y;
    temp_76 = sysInitRotateAttr.z;
    temp_77 = fma(temp_63, 0.0 - temp_69, temp_63);
    temp_78 = temp_65;
    if (!temp_60)
    {
        temp_78 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_67, temp_67);
    }
    temp_79 = (0.0 - (temp_54 < 0.0 ? 1.0 : 0.0) + (temp_54 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_51 > 0 ? -1 : 0) + 0 - (temp_51 >= 0 ? 0 : 1)));
    temp_80 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_81 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_82 = temp_71 * temp_70;
    temp_83 = (0.0 - (temp_52 < 0.0 ? 1.0 : 0.0) + (temp_52 > 0.0 ? 1.0 : 0.0)) * float(abs(temp_61));
    temp_84 = temp_82;
    temp_85 = temp_80;
    if (temp_81)
    {
        temp_84 = temp_80 * temp_80;
    }
    temp_86 = temp_79 * temp_75;
    temp_87 = temp_83 * temp_76;
    temp_88 = temp_84;
    temp_89 = temp_87;
    temp_90 = temp_86;
    if (temp_81)
    {
        temp_88 = temp_84 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_81)
    {
        temp_66 = temp_88 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_91 = temp_66;
    if (temp_81)
    {
        temp_89 = temp_88 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_92 = temp_89;
    if (temp_81)
    {
        temp_90 = temp_88 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_93 = temp_90;
    if (!temp_81)
    {
        temp_94 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_95 = (temp_80 + 0.0 - fma(temp_94, exp2(temp_80 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_94)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_91 = temp_95 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_93 = temp_95 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_92 = temp_95 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_81)
    {
        temp_96 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_85 = fma(exp2(temp_80 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_96, temp_96);
    }
    temp_97 = sysScaleAttr.w;
    temp_98 = fma(fma(temp_73 * temp_83, -2.0, temp_73), temp_78, fma(temp_48 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_87, -2.0, temp_76)));
    temp_99 = fma(fma(temp_72 * temp_79, -2.0, temp_72), temp_78, fma(temp_49 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_86, -2.0, temp_75)));
    temp_100 = fma(fma(temp_82, -2.0, temp_71), temp_78, fma(temp_18 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_70 * temp_74, -2.0, temp_74)));
    temp_101 = fma(fma(temp_85, sysLocalVecAttr.y, fma(temp_92, temp_36, fma(temp_93, temp_40, temp_91 * temp_38))), temp_97, sysLocalPosAttr.y);
    temp_102 = fma(fma(temp_85, sysLocalVecAttr.x, fma(temp_92, temp_31, fma(temp_93, temp_34, temp_91 * temp_33))), temp_97, sysLocalPosAttr.x);
    temp_103 = fma(fma(temp_85, sysLocalVecAttr.z, fma(temp_92, temp_42, fma(temp_93, temp_45, temp_91 * temp_43))), temp_97, sysLocalPosAttr.z);
    temp_104 = sin(temp_99) * cos(temp_100);
    temp_105 = cos(temp_99) * sin(temp_100);
    temp_106 = cos(temp_99) * cos(temp_100);
    temp_107 = sin(temp_99) * sin(temp_100);
    temp_108 = fma(temp_103, temp_17, fma(temp_101, temp_16, temp_102 * temp_15)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_109 = fma(temp_103, temp_14, fma(temp_101, temp_13, temp_102 * temp_12)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_110 = fma(temp_103, temp_11, fma(temp_101, temp_10, temp_102 * temp_9)) + _sysEmitterDynamicUniformBlock.data[4].w;
    if ((floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000000) == floatBitsToInt(2))
    {
        temp_111 = 0.0 - temp_110 + _sysViewUniformBlock.data[17].x;
        temp_112 = 0.0 - temp_109 + _sysViewUniformBlock.data[17].y;
        temp_113 = 0.0 - temp_108 + _sysViewUniformBlock.data[17].z;
        temp_114 = inversesqrt(fma(temp_113, temp_113, fma(temp_112, temp_112, temp_111 * temp_111)));
        temp_115 = temp_111 * temp_114 * _sysEmitterStaticUniformBlock.data[13].z;
        temp_116 = temp_112 * temp_114 * _sysEmitterStaticUniformBlock.data[13].z;
        temp_117 = temp_113 * temp_114 * _sysEmitterStaticUniformBlock.data[13].z;
    }
    else
    {
        temp_115 = 0.0;
        temp_116 = 0.0;
        temp_117 = 0.0;
    }
    temp_118 = fma(temp_69, _sysEmitterStaticUniformBlock.data[98].z, fma(fma(temp_56, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_55, _sysEmitterStaticUniformBlock.data[97].z), temp_77, fma(fma(temp_62, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_50, _sysEmitterStaticUniformBlock.data[96].z), temp_68, fma(temp_59, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_119 = fma(temp_69, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_56, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_55, _sysEmitterStaticUniformBlock.data[97].y), temp_77, fma(fma(temp_62, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_50, _sysEmitterStaticUniformBlock.data[96].y), temp_68, fma(temp_59, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_120 = (clamp(min(0.0, temp_18) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_69, _sysEmitterStaticUniformBlock.data[98].x, fma(fma(temp_56, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_55, _sysEmitterStaticUniformBlock.data[97].x), temp_77, fma(fma(temp_62, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_50, _sysEmitterStaticUniformBlock.data[96].x), temp_68, fma(temp_59, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_121 = 0.0 + fma(cos(temp_98) * sin(temp_99), temp_118, fma(cos(temp_98) * cos(temp_99), temp_120, sin(temp_98) * 0.0 - temp_119));
    temp_122 = 0.0 + fma(fma(sin(temp_98), temp_104, 0.0 - temp_105), temp_118, fma(fma(sin(temp_98), temp_106, temp_107), temp_120, cos(temp_98) * cos(temp_100) * temp_119));
    temp_123 = fma(0.0, temp_118, fma(0.0, temp_120, 0.0 * temp_119)) + 1.0;
    temp_124 = 0.0 + fma(fma(sin(temp_98), temp_107, temp_106), temp_118, fma(fma(sin(temp_98), temp_105, 0.0 - temp_104), temp_120, cos(temp_98) * sin(temp_100) * temp_119));
    temp_125 = fma(temp_110, temp_123, fma(temp_124, temp_45, fma(temp_122, temp_40, temp_121 * temp_34))) + temp_115;
    temp_126 = fma(temp_109, temp_123, fma(temp_124, temp_43, fma(temp_122, temp_38, temp_121 * temp_33))) + temp_116;
    temp_127 = fma(temp_108, temp_123, fma(temp_124, temp_42, fma(temp_122, temp_36, temp_121 * temp_31))) + temp_117;
    temp_128 = fma(temp_127, _sysViewUniformBlock.data[9].z, fma(temp_126, _sysViewUniformBlock.data[9].y, temp_125 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_129 = fma(temp_127, _sysViewUniformBlock.data[8].z, fma(temp_126, _sysViewUniformBlock.data[8].y, temp_125 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_130 = fma(temp_127, _sysViewUniformBlock.data[10].z, fma(temp_126, _sysViewUniformBlock.data[10].y, temp_125 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_131 = 0.0 * temp_128;
    temp_132 = fma(temp_127, _sysViewUniformBlock.data[11].z, fma(temp_126, _sysViewUniformBlock.data[11].y, temp_125 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_133 = fma(0.0, temp_129, temp_131);
    gl_Position.x = temp_129;
    gl_Position.y = temp_128;
    gl_Position.z = temp_130;
    gl_Position.w = temp_132;
    out_attr4.x = fma(temp_132, 0.5, fma(0.0, temp_130, fma(temp_129, 0.5, temp_131)));
    out_attr4.y = fma(temp_132, 0.5, fma(0.0, temp_130, fma(0.0, temp_129, temp_128 * -0.5)));
    out_attr4.z = fma(0.0, temp_132, temp_130 + temp_133);
    out_attr4.w = temp_132 + fma(0.0, temp_130, temp_133);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_134 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_135 = temp_134 + 0.0 - floor(temp_134);
    }
    else
    {
        temp_135 = temp_5 * (1.0 / temp_6);
    }
    temp_136 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_137 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_138 = temp_135 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_139 = temp_135 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_140 = temp_135 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_141 = temp_135 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_142 = temp_135 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_143 = fma(temp_138, 0.0 - temp_140, temp_138);
    temp_144 = fma(temp_140, 0.0 - temp_142, temp_140);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_145 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_146 = temp_145 + 0.0 - floor(temp_145);
    }
    else
    {
        temp_146 = temp_5 * (1.0 / temp_6);
    }
    temp_147 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_148 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_149 = floatBitsToInt(1.0 / float(uint(abs(temp_147)))) + -2;
    temp_150 = floatBitsToInt(1.0 / float(uint(temp_147))) + -2;
    temp_151 = sysTexCoordAttr.x;
    temp_152 = sysTexCoordAttr.y;
    temp_153 = uint(max(trunc(float(0u) * intBitsToFloat(temp_150)), 0.0));
    temp_154 = temp_146 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_155 = temp_146 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_156 = uint(max(trunc(intBitsToFloat(temp_149) * float(0u)), 0.0));
    temp_157 = floatBitsToInt(1.0 / float(uint(abs(temp_148)))) + -2;
    temp_158 = (temp_147 & 0xFFFF) * (int(temp_153 >> 16)) & 0xFFFF | int(temp_153) << 16;
    temp_159 = temp_146 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_160 = floatBitsToInt(1.0 / float(uint(temp_148))) + -2;
    temp_161 = (abs(temp_147) & 0xFFFF) * (int(temp_156 >> 16)) & 0xFFFF | int(temp_156) << 16;
    temp_162 = uint(max(trunc(float(0u) * intBitsToFloat(temp_157)), 0.0));
    temp_163 = uint(max(trunc(float(0u) * intBitsToFloat(temp_160)), 0.0));
    temp_164 = temp_151;
    temp_165 = temp_151;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_18 > 0.5) ? -1 : 0)) != 0))
    {
        temp_164 = 0.0 - temp_151 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_48 > 0.5) ? -1 : 0)) != 0))
    {
        temp_165 = 0.0 - temp_151 + 1.0;
    }
    temp_166 = (abs(temp_148) & 0xFFFF) * (int(temp_162 >> 16)) & 0xFFFF | int(temp_162) << 16;
    temp_167 = temp_152;
    temp_168 = temp_152;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_167 = 0.0 - temp_152 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_168 = 0.0 - temp_152 + 1.0;
    }
    temp_169 = (temp_148 & 0xFFFF) * (int(temp_163 >> 16)) & 0xFFFF | int(temp_163) << 16;
    temp_170 = 0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_170 = 1;
    }
    temp_171 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_172 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_173 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_48, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_174 = temp_170 == 1;
    temp_175 = fma(temp_172, temp_167, -0.5);
    temp_176 = fma(temp_171, temp_164, -0.5);
    temp_177 = temp_18;
    temp_178 = temp_49;
    temp_179 = temp_48;
    temp_180 = temp_18;
    temp_181 = temp_49;
    if (temp_174)
    {
        temp_177 = temp_49;
    }
    temp_182 = temp_177;
    temp_183 = temp_177;
    if (temp_174)
    {
        temp_178 = temp_48;
    }
    temp_184 = temp_178;
    temp_185 = temp_178;
    if (temp_174)
    {
        temp_179 = temp_18;
    }
    temp_186 = temp_179;
    temp_187 = temp_179;
    if (temp_174)
    {
        temp_180 = temp_49;
    }
    temp_188 = temp_180;
    temp_189 = temp_180;
    if (temp_174)
    {
        temp_181 = temp_48;
    }
    temp_190 = temp_181;
    if (!temp_174)
    {
        temp_191 = temp_170 == 2;
        if (temp_191)
        {
            temp_182 = temp_48;
        }
        temp_183 = temp_182;
        if (temp_191)
        {
            temp_184 = temp_18;
        }
        temp_185 = temp_184;
        if (temp_191)
        {
            temp_188 = temp_18;
        }
        temp_189 = temp_188;
        if (temp_191)
        {
            temp_186 = temp_49;
        }
        temp_187 = temp_186;
        if (temp_191)
        {
            temp_190 = temp_49;
        }
    }
    temp_192 = int(temp_153) + int(uint(max(trunc(intBitsToFloat(temp_150) * float(uint(0 - ((int(uint(temp_147) >> 16)) * (int(uint(temp_158) >> 16)) << 16) + (temp_147 & 0xFFFF) * (int(temp_153) & 0xFFFF) + (temp_158 << 16)))), 0.0)));
    temp_193 = int(temp_156) + int(uint(max(trunc(intBitsToFloat(temp_149) * float(uint(0 - ((int(uint(abs(temp_147)) >> 16)) * (int(uint(temp_161) >> 16)) << 16) + (abs(temp_147) & 0xFFFF) * (int(temp_156) & 0xFFFF) + (temp_161 << 16)))), 0.0)));
    temp_194 = (temp_147 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_195 = int(temp_162) + int(uint(max(trunc(intBitsToFloat(temp_157) * float(uint(0 - ((int(uint(abs(temp_148)) >> 16)) * (int(uint(temp_166) >> 16)) << 16) + (abs(temp_148) & 0xFFFF) * (int(temp_162) & 0xFFFF) + (temp_166 << 16)))), 0.0)));
    temp_196 = (abs(temp_147) & 0xFFFF) * (int(uint(temp_193) >> 16)) & 0xFFFF | temp_193 << 16;
    temp_197 = int(temp_163) + int(uint(max(trunc(intBitsToFloat(temp_160) * float(uint(0 - ((int(uint(temp_148) >> 16)) * (int(uint(temp_169) >> 16)) << 16) + (temp_148 & 0xFFFF) * (int(temp_163) & 0xFFFF) + (temp_169 << 16)))), 0.0)));
    temp_198 = (abs(temp_148) & 0xFFFF) * (int(uint(temp_195) >> 16)) & 0xFFFF | temp_195 << 16;
    temp_199 = (temp_148 & 0xFFFF) * (int(uint(temp_197) >> 16)) & 0xFFFF | temp_197 << 16;
    temp_200 = 0 - temp_192 + ((uint(0 - ((int(uint(temp_147) >> 16)) * (int(uint(temp_194) >> 16)) << 16) + (temp_147 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_194 << 16)) >= uint(temp_147) ? -1 : 0));
    temp_201 = (temp_147 & 0xFFFF) * (int(uint(temp_200) >> 16)) & 0xFFFF | temp_200 << 16;
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_203 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[52].x, fma(temp_187, _sysEmitterStaticUniformBlock.data[52].z, _sysEmitterStaticUniformBlock.data[52].z + _sysEmitterStaticUniformBlock.data[52].y));
    temp_204 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_205 = 0 - temp_197 + ((uint(0 - ((int(uint(temp_148) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_148 & 0xFFFF) * (temp_197 & 0xFFFF) + (temp_199 << 16)) >= uint(temp_148) ? -1 : 0));
    temp_206 = 0 - int(uint(temp_147) >> 31);
    temp_207 = 0 - int(uint(temp_148) >> 31);
    temp_208 = fma(temp_202, temp_168, -0.5);
    temp_209 = fma(temp_204, temp_165, -0.5);
    temp_210 = (temp_148 & 0xFFFF) * (int(uint(temp_205) >> 16)) & 0xFFFF | temp_205 << 16;
    out_attr0.x = fma(temp_142, _sysEmitterStaticUniformBlock.data[62].x, fma(fma((_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_137, temp_141, _sysEmitterStaticUniformBlock.data[61].x), temp_144, fma(fma(temp_139, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_136, _sysEmitterStaticUniformBlock.data[60].x), temp_143, fma(temp_138, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x)))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_142, _sysEmitterStaticUniformBlock.data[62].y, fma(fma((_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_137, temp_141, _sysEmitterStaticUniformBlock.data[61].y), temp_144, fma(fma(temp_139, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_136, _sysEmitterStaticUniformBlock.data[60].y), temp_143, fma(temp_138, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y)))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_142, _sysEmitterStaticUniformBlock.data[62].z, fma(fma((_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_137, temp_141, _sysEmitterStaticUniformBlock.data[61].z), temp_144, fma(fma(temp_139, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_136, _sysEmitterStaticUniformBlock.data[60].z), temp_143, fma(temp_138, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z)))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr6.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr6.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr5.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_159, _sysEmitterStaticUniformBlock.data[70].x, fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_146 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_155, 0.0 - temp_159, temp_155), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_146 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_155, 0.0 - temp_154, temp_154), fma(temp_154, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x)))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.z = fma(fma(temp_209, cos(temp_203), 0.0 - temp_208 * sin(temp_203)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_189, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].x + _sysEmitterStaticUniformBlock.data[51].z)), fma(temp_204, float(temp_148 < 0 || !(temp_148 == 0) ? ((int(uint(temp_148) >> 16)) * (int(uint(temp_210) >> 16)) << 16) + (temp_148 & 0xFFFF) * (temp_205 & 0xFFFF) + (temp_210 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_183 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_173), temp_176, 0.0 - temp_175 * sin(temp_173)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_18, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_171, float(temp_147 < 0 || !(temp_147 == 0) ? ((int(uint(temp_147) >> 16)) * (int(uint(temp_201) >> 16)) << 16) + (temp_147 & 0xFFFF) * (temp_200 & 0xFFFF) + (temp_201 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_18 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_176, sin(temp_173), temp_175 * cos(temp_173)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_49, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_172, 0.0 - float(temp_147 < 0 || !(temp_147 == 0) ? 0 - temp_206 + (temp_193 + 0 - (uint(0 - ((int(uint(abs(temp_147)) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (abs(temp_147) & 0xFFFF) * (temp_193 & 0xFFFF) + (temp_196 << 16)) >= uint(abs(temp_147)) ? -1 : 0) ^ temp_206) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_49 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.w = fma(fma(temp_209, sin(temp_203), cos(temp_203) * temp_208), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_190, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), 0.0 - fma(temp_202, 0.0 - float(temp_148 < 0 || !(temp_148 == 0) ? 0 - temp_207 + (temp_195 + 0 - (uint(0 - ((int(uint(abs(temp_148)) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (abs(temp_148) & 0xFFFF) * (temp_195 & 0xFFFF) + (temp_198 << 16)) >= uint(abs(temp_148)) ? -1 : 0) ^ temp_207) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_185 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    break;
} while (false);
}
