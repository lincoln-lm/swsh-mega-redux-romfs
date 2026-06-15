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
layout (location = 3) out vec4 out_attr3;
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
    precise float temp_23;
    bool temp_24;
    bool temp_25;
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
    int temp_52;
    int temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    bool temp_59;
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
    bool temp_78;
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
    int temp_123;
    bool temp_124;
    int temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    int temp_131;
    precise float temp_132;
    precise float temp_133;
    precise float temp_134;
    precise float temp_135;
    int temp_136;
    int temp_137;
    int temp_138;
    uint temp_139;
    int temp_140;
    int temp_141;
    precise float temp_142;
    precise float temp_143;
    int temp_144;
    int temp_145;
    uint temp_146;
    uint temp_147;
    uint temp_148;
    precise float temp_149;
    uint temp_150;
    bool temp_151;
    precise float temp_152;
    precise float temp_153;
    int temp_154;
    precise float temp_155;
    precise float temp_156;
    precise float temp_157;
    precise float temp_158;
    int temp_159;
    precise float temp_160;
    precise float temp_161;
    precise float temp_162;
    precise float temp_163;
    int temp_164;
    int temp_165;
    int temp_166;
    precise float temp_167;
    precise float temp_168;
    precise float temp_169;
    bool temp_170;
    int temp_171;
    bool temp_172;
    uint temp_173;
    precise float temp_174;
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
    bool temp_188;
    int temp_189;
    int temp_190;
    int temp_191;
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
    int temp_202;
    int temp_203;
    int temp_204;
    int temp_205;
    int temp_206;
    int temp_207;
    precise float temp_208;
    int temp_209;
    precise float temp_210;
    precise float temp_211;
    int temp_212;
    int temp_213;
    precise float temp_214;
    precise float temp_215;
    precise float temp_216;
    precise float temp_217;
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
    temp_23 = sysScaleAttr.x;
    temp_24 = sqrt(temp_20) > 0.0;
    temp_25 = sqrt(temp_21) > 0.0;
    temp_26 = intBitsToFloat(undef);
    temp_27 = sqrt(temp_20);
    temp_28 = temp_23;
    if (temp_22)
    {
        temp_26 = inversesqrt(temp_19);
    }
    temp_29 = temp_26;
    if (!temp_22)
    {
        temp_29 = 0.0;
    }
    temp_30 = intBitsToFloat(undef);
    temp_31 = temp_29;
    if (temp_24)
    {
        temp_30 = inversesqrt(temp_20);
    }
    temp_32 = temp_30;
    if (!temp_22)
    {
        temp_27 = 0.0;
    }
    temp_33 = intBitsToFloat(undef);
    temp_34 = temp_27;
    if (temp_25)
    {
        temp_33 = inversesqrt(temp_21);
    }
    temp_35 = temp_33;
    if (!temp_24)
    {
        temp_32 = 0.0;
    }
    temp_36 = intBitsToFloat(undef);
    temp_37 = temp_32;
    if (!temp_24)
    {
        temp_36 = 0.0;
    }
    temp_38 = intBitsToFloat(undef);
    temp_39 = temp_36;
    if (!temp_24)
    {
        temp_38 = 0.0;
    }
    temp_40 = temp_38;
    if (!temp_25)
    {
        temp_35 = 0.0;
    }
    temp_41 = intBitsToFloat(undef);
    temp_42 = temp_35;
    if (!temp_25)
    {
        temp_41 = 0.0;
    }
    temp_43 = intBitsToFloat(undef);
    temp_44 = temp_41;
    if (!temp_25)
    {
        temp_43 = 0.0;
    }
    temp_45 = temp_43;
    if (!temp_22)
    {
        temp_28 = 0.0;
    }
    temp_46 = temp_28;
    if (temp_22)
    {
        temp_34 = temp_29 * temp_9;
    }
    if (temp_22)
    {
        temp_46 = temp_29 * temp_12;
    }
    if (temp_24)
    {
        temp_40 = temp_32 * temp_10;
    }
    if (temp_24)
    {
        temp_39 = temp_32 * temp_13;
    }
    if (temp_25)
    {
        temp_45 = temp_35 * temp_11;
    }
    if (temp_25)
    {
        temp_44 = temp_35 * temp_14;
    }
    if (temp_22)
    {
        temp_31 = temp_29 * temp_15;
    }
    if (temp_24)
    {
        temp_37 = temp_32 * temp_16;
    }
    if (temp_25)
    {
        temp_42 = temp_35 * temp_17;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_47 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_48 = temp_47 + 0.0 - floor(temp_47);
    }
    else
    {
        temp_48 = temp_5 * (1.0 / temp_6);
    }
    temp_49 = sysRandomAttr.y;
    temp_50 = sysRandomAttr.z;
    temp_51 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_52 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_53 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_54 = temp_48 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_55 = floor(temp_18 * 2.0);
    temp_56 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_57 = floor(temp_49 * 2.0);
    temp_58 = temp_48 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_59 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_60 = floor(temp_50 * 2.0);
    temp_61 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_62 = intBitsToFloat(undef);
    temp_63 = temp_61;
    temp_64 = temp_54;
    if (!temp_59)
    {
        temp_62 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_65 = sysInitRotateAttr.x;
    temp_66 = sysInitRotateAttr.y;
    temp_67 = sysInitRotateAttr.z;
    temp_68 = temp_48 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_69 = fma(fma(temp_18 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_70 = (0.0 - temp_55 < 0.0 ? 1.0 : 0.0 + (temp_55 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_53 > 0 ? -1 : 0) + 0 - temp_53 >= 0 ? 0 : 1));
    temp_71 = fma(temp_68, 0.0 - temp_54, temp_54);
    if (!temp_59)
    {
        temp_63 = 1.0 / temp_62;
    }
    if (temp_59)
    {
        temp_64 = temp_5;
    }
    temp_72 = (0.0 - temp_57 < 0.0 ? 1.0 : 0.0 + (temp_57 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_51 > 0 ? -1 : 0) + 0 - temp_51 >= 0 ? 0 : 1));
    temp_73 = (0.0 - temp_60 < 0.0 ? 1.0 : 0.0 + (temp_60 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_52 > 0 ? -1 : 0) + 0 - temp_52 >= 0 ? 0 : 1));
    temp_74 = fma(fma(temp_18 + temp_50, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_75 = temp_64;
    temp_76 = temp_74;
    if (!temp_59)
    {
        temp_75 = fma(exp2(temp_61), 0.0 - temp_63, temp_63);
    }
    temp_77 = temp_70 * temp_67;
    temp_78 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_79 = fma(fma(temp_49 + temp_50, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_80 = sysScaleAttr.w;
    temp_81 = fma(temp_77, -2.0, temp_67);
    temp_82 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_83 = temp_77;
    temp_84 = temp_75;
    temp_85 = temp_81;
    temp_86 = temp_82;
    if (temp_78)
    {
        temp_83 = temp_82 * temp_82;
    }
    temp_87 = temp_83;
    if (temp_78)
    {
        temp_87 = temp_83 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_88 = fma(fma(temp_74 * temp_70, -2.0, temp_74), temp_75, fma(temp_50 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, temp_81));
    temp_89 = fma(fma(temp_69 * temp_72, -2.0, temp_69), temp_75, fma(temp_18 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_72 * temp_65, -2.0, temp_65)));
    temp_90 = fma(fma(temp_79 * temp_73, -2.0, temp_79), temp_75, fma(temp_49 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_73 * temp_66, -2.0, temp_66)));
    if (temp_78)
    {
        temp_84 = temp_87 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_91 = temp_84;
    if (temp_78)
    {
        temp_85 = temp_87 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_92 = temp_85;
    if (temp_78)
    {
        temp_76 = temp_87 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_93 = temp_76;
    if (!temp_78)
    {
        temp_94 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_95 = (temp_82 + 0.0 - fma(temp_94, exp2(temp_82 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_94)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_93 = temp_95 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_91 = temp_95 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_92 = temp_95 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_78)
    {
        temp_96 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_86 = fma(exp2(temp_82 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_96, temp_96);
    }
    temp_97 = (clamp(min(0.0, temp_18) + -0.0, 0.0, 1.0) + temp_23) * fma(temp_68, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_58, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_56, _sysEmitterStaticUniformBlock.data[96].x), temp_71, fma(temp_54, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_98 = fma(temp_68, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_58, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_56, _sysEmitterStaticUniformBlock.data[96].y), temp_71, fma(temp_54, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_99 = fma(temp_68, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_58, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_56, _sysEmitterStaticUniformBlock.data[96].z), temp_71, fma(temp_54, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_100 = sin(temp_89) * sin(temp_90);
    temp_101 = cos(temp_89) * cos(temp_90);
    temp_102 = cos(temp_89) * sin(temp_90);
    temp_103 = sin(temp_89) * cos(temp_90);
    temp_104 = fma(fma(temp_86, sysLocalVecAttr.x, temp_93), temp_80, sysLocalPosAttr.x);
    temp_105 = fma(fma(temp_86, sysLocalVecAttr.z, temp_92), temp_80, sysLocalPosAttr.z);
    temp_106 = fma(fma(temp_86, sysLocalVecAttr.y, temp_91), temp_80, sysLocalPosAttr.y);
    temp_107 = 0.0 + fma(cos(temp_88) * sin(temp_90), temp_99, fma(temp_97, cos(temp_88) * cos(temp_90), temp_98 * 0.0 - sin(temp_88)));
    temp_108 = 0.0 + fma(fma(sin(temp_88), temp_102, 0.0 - temp_103), temp_99, fma(temp_97, fma(sin(temp_88), temp_101, temp_100), temp_98 * cos(temp_88) * cos(temp_89)));
    temp_109 = 0.0 + fma(fma(sin(temp_88), temp_100, temp_101), temp_99, fma(temp_97, fma(sin(temp_88), temp_103, 0.0 - temp_102), temp_98 * cos(temp_88) * sin(temp_89)));
    temp_110 = fma(0.0, temp_99, fma(0.0, temp_97, 0.0 * temp_98)) + 1.0;
    temp_111 = fma(fma(temp_105, temp_11, fma(temp_106, temp_10, temp_104 * temp_9)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_110, fma(temp_109, temp_45, fma(temp_108, temp_40, temp_107 * temp_34)));
    temp_112 = fma(fma(temp_105, temp_14, fma(temp_106, temp_13, temp_104 * temp_12)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_110, fma(temp_109, temp_44, fma(temp_108, temp_39, temp_107 * temp_46)));
    temp_113 = fma(fma(temp_105, temp_17, fma(temp_106, temp_16, temp_104 * temp_15)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_110, fma(temp_109, temp_42, fma(temp_108, temp_37, temp_107 * temp_31)));
    temp_114 = fma(temp_113, _sysViewUniformBlock.data[9].z, fma(temp_112, _sysViewUniformBlock.data[9].y, temp_111 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_115 = fma(temp_113, _sysViewUniformBlock.data[8].z, fma(temp_112, _sysViewUniformBlock.data[8].y, temp_111 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_116 = fma(temp_113, _sysViewUniformBlock.data[10].z, fma(temp_112, _sysViewUniformBlock.data[10].y, temp_111 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_117 = fma(temp_113, _sysViewUniformBlock.data[11].z, fma(temp_112, _sysViewUniformBlock.data[11].y, temp_111 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_115;
    gl_Position.y = temp_114;
    gl_Position.z = temp_116;
    gl_Position.w = temp_117;
    temp_118 = fma(0.0, temp_115, 0.0 * temp_114);
    out_attr4.z = fma(0.0, temp_117, temp_116 + temp_118);
    out_attr4.w = temp_117 + fma(0.0, temp_116, temp_118);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_119 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_120 = temp_119 + 0.0 - floor(temp_119);
    }
    else
    {
        temp_120 = temp_5 * (1.0 / temp_6);
    }
    temp_121 = sysTexCoordAttr.x;
    temp_122 = sysTexCoordAttr.y;
    temp_123 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_124 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_125 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_126 = temp_120 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_127 = temp_120 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_128 = temp_121;
    temp_129 = temp_121;
    temp_130 = temp_121;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_18 > 0.5) ? -1 : 0)) != 0))
    {
        temp_128 = 0.0 - temp_121 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_50 > 0.5) ? -1 : 0)) != 0))
    {
        temp_129 = 0.0 - temp_121 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_130 = 0.0 - temp_121 + 1.0;
    }
    temp_131 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_132 = temp_120 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_133 = temp_122;
    temp_134 = temp_122;
    temp_135 = temp_122;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_133 = 0.0 - temp_122 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_134 = 0.0 - temp_122 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_50 > 0.5) ? -1 : 0)) != 0))
    {
        temp_135 = 0.0 - temp_122 + 1.0;
    }
    temp_136 = floatBitsToInt(1.0 / float(uint(temp_123))) + -2;
    temp_137 = floatBitsToInt(1.0 / float(uint(temp_125))) + -2;
    temp_138 = floatBitsToInt(1.0 / float(uint(temp_131))) + -2;
    temp_139 = uint(max(trunc(float(0u) * intBitsToFloat(temp_136)), 0.0));
    temp_140 = floatBitsToInt(1.0 / float(uint(abs(temp_125)))) + -2;
    temp_141 = (temp_123 & 0xFFFF) * (int(temp_139 >> 16)) & 0xFFFF | int(temp_139) << 16;
    temp_142 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_143 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_50, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_144 = floatBitsToInt(1.0 / float(uint(abs(temp_123)))) + -2;
    temp_145 = 0;
    if (temp_124)
    {
        temp_145 = 1;
    }
    temp_146 = uint(max(trunc(float(0u) * intBitsToFloat(temp_137)), 0.0));
    temp_147 = uint(max(trunc(float(0u) * intBitsToFloat(temp_138)), 0.0));
    temp_148 = uint(max(trunc(intBitsToFloat(temp_144) * float(0u)), 0.0));
    temp_149 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_150 = uint(max(trunc(float(0u) * intBitsToFloat(temp_140)), 0.0));
    temp_151 = temp_145 == 1;
    temp_152 = fma(temp_142, temp_133, -0.5);
    temp_153 = fma(temp_149, temp_128, -0.5);
    temp_154 = (temp_125 & 0xFFFF) * (int(temp_146 >> 16)) & 0xFFFF | int(temp_146) << 16;
    temp_155 = temp_18;
    temp_156 = temp_49;
    temp_157 = temp_18;
    temp_158 = temp_49;
    temp_159 = 0;
    if (temp_151)
    {
        temp_155 = temp_49;
    }
    temp_160 = temp_155;
    temp_161 = temp_155;
    if (temp_151)
    {
        temp_156 = temp_50;
    }
    temp_162 = temp_156;
    temp_163 = temp_156;
    if (temp_151)
    {
        temp_157 = temp_49;
    }
    temp_164 = (temp_131 & 0xFFFF) * (int(temp_147 >> 16)) & 0xFFFF | int(temp_147) << 16;
    temp_165 = (abs(temp_123) & 0xFFFF) * (int(temp_148 >> 16)) & 0xFFFF | int(temp_148) << 16;
    temp_166 = (abs(temp_125) & 0xFFFF) * (int(temp_150 >> 16)) & 0xFFFF | int(temp_150) << 16;
    temp_167 = temp_157;
    temp_168 = temp_157;
    if (temp_151)
    {
        temp_158 = temp_50;
    }
    temp_169 = temp_158;
    if (!temp_151)
    {
        temp_170 = temp_145 == 2;
        if (temp_170)
        {
            temp_160 = temp_50;
        }
        temp_161 = temp_160;
        if (temp_170)
        {
            temp_162 = temp_18;
        }
        temp_163 = temp_162;
        if (temp_170)
        {
            temp_167 = temp_18;
        }
        temp_168 = temp_167;
        if (temp_170)
        {
            temp_169 = temp_49;
        }
    }
    if (temp_124)
    {
        temp_159 = 2;
    }
    temp_171 = floatBitsToInt(1.0 / float(uint(abs(temp_131)))) + -2;
    temp_172 = temp_159 == 1;
    temp_173 = uint(max(trunc(float(0u) * intBitsToFloat(temp_171)), 0.0));
    temp_174 = temp_18;
    temp_175 = temp_49;
    temp_176 = temp_50;
    temp_177 = temp_18;
    temp_178 = temp_49;
    if (temp_172)
    {
        temp_174 = temp_49;
    }
    temp_179 = temp_174;
    temp_180 = temp_174;
    if (temp_172)
    {
        temp_175 = temp_50;
    }
    temp_181 = temp_175;
    temp_182 = temp_175;
    if (temp_172)
    {
        temp_176 = temp_18;
    }
    temp_183 = temp_176;
    temp_184 = temp_176;
    if (temp_172)
    {
        temp_177 = temp_49;
    }
    temp_185 = temp_177;
    temp_186 = temp_177;
    if (temp_172)
    {
        temp_178 = temp_50;
    }
    temp_187 = temp_178;
    if (!temp_172)
    {
        temp_188 = temp_159 == 2;
        if (temp_188)
        {
            temp_179 = temp_50;
        }
        temp_180 = temp_179;
        if (temp_188)
        {
            temp_181 = temp_18;
        }
        temp_182 = temp_181;
        if (temp_188)
        {
            temp_185 = temp_18;
        }
        temp_186 = temp_185;
        if (temp_188)
        {
            temp_183 = temp_49;
        }
        temp_184 = temp_183;
        if (temp_188)
        {
            temp_187 = temp_49;
        }
    }
    temp_189 = (abs(temp_131) & 0xFFFF) * (int(temp_173 >> 16)) & 0xFFFF | int(temp_173) << 16;
    temp_190 = int(temp_148) + int(uint(max(trunc(intBitsToFloat(temp_144) * float(uint(0 - ((int(uint(abs(temp_123)) >> 16)) * (int(uint(temp_165) >> 16)) << 16) + (abs(temp_123) & 0xFFFF) * (int(temp_148) & 0xFFFF) + (temp_165 << 16)))), 0.0)));
    temp_191 = int(temp_146) + int(uint(max(trunc(intBitsToFloat(temp_137) * float(uint(0 - ((int(uint(temp_125) >> 16)) * (int(uint(temp_154) >> 16)) << 16) + (temp_125 & 0xFFFF) * (int(temp_146) & 0xFFFF) + (temp_154 << 16)))), 0.0)));
    temp_192 = int(temp_150) + int(uint(max(trunc(intBitsToFloat(temp_140) * float(uint(0 - ((int(uint(abs(temp_125)) >> 16)) * (int(uint(temp_166) >> 16)) << 16) + (abs(temp_125) & 0xFFFF) * (int(temp_150) & 0xFFFF) + (temp_166 << 16)))), 0.0)));
    temp_193 = int(temp_139) + int(uint(max(trunc(intBitsToFloat(temp_136) * float(uint(0 - ((int(uint(temp_123) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_123 & 0xFFFF) * (int(temp_139) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_194 = int(temp_147) + int(uint(max(trunc(intBitsToFloat(temp_138) * float(uint(0 - ((int(uint(temp_131) >> 16)) * (int(uint(temp_164) >> 16)) << 16) + (temp_131 & 0xFFFF) * (int(temp_147) & 0xFFFF) + (temp_164 << 16)))), 0.0)));
    temp_195 = (abs(temp_123) & 0xFFFF) * (int(uint(temp_190) >> 16)) & 0xFFFF | temp_190 << 16;
    temp_196 = (temp_123 & 0xFFFF) * (int(uint(temp_193) >> 16)) & 0xFFFF | temp_193 << 16;
    temp_197 = (temp_125 & 0xFFFF) * (int(uint(temp_191) >> 16)) & 0xFFFF | temp_191 << 16;
    temp_198 = int(temp_173) + int(uint(max(trunc(intBitsToFloat(temp_171) * float(uint(0 - ((int(uint(abs(temp_131)) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (abs(temp_131) & 0xFFFF) * (int(temp_173) & 0xFFFF) + (temp_189 << 16)))), 0.0)));
    temp_199 = (temp_131 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_200 = (abs(temp_125) & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_201 = (abs(temp_131) & 0xFFFF) * (int(uint(temp_198) >> 16)) & 0xFFFF | temp_198 << 16;
    temp_202 = 0 - temp_193 + ((uint(0 - ((int(uint(temp_123) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (temp_123 & 0xFFFF) * (temp_193 & 0xFFFF) + (temp_196 << 16)) >= uint(temp_123) ? -1 : 0));
    temp_203 = 0 - int(uint(temp_123) >> 31);
    temp_204 = 0 - temp_191 + ((uint(0 - ((int(uint(temp_125) >> 16)) * (int(uint(temp_197) >> 16)) << 16) + (temp_125 & 0xFFFF) * (temp_191 & 0xFFFF) + (temp_197 << 16)) >= uint(temp_125) ? -1 : 0));
    temp_205 = (temp_123 & 0xFFFF) * (int(uint(temp_202) >> 16)) & 0xFFFF | temp_202 << 16;
    temp_206 = 0 - temp_194 + ((uint(0 - ((int(uint(temp_131) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_131 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_199 << 16)) >= uint(temp_131) ? -1 : 0));
    temp_207 = (temp_125 & 0xFFFF) * (int(uint(temp_204) >> 16)) & 0xFFFF | temp_204 << 16;
    temp_208 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_209 = (temp_131 & 0xFFFF) * (int(uint(temp_206) >> 16)) & 0xFFFF | temp_206 << 16;
    temp_210 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_184, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_211 = fma(temp_208, temp_135, -0.5);
    temp_212 = 0 - int(uint(temp_125) >> 31);
    temp_213 = 0 - int(uint(temp_131) >> 31);
    temp_214 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_215 = fma(temp_214, temp_130, -0.5);
    temp_216 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_217 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr6.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr6.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr5.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_132, _sysEmitterStaticUniformBlock.data[70].x, fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_120 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_127, 0.0 - temp_132, temp_127), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_120 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_127, 0.0 - temp_126, temp_126), fma(temp_126, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x)))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = fma(fma(temp_215, cos(temp_210), 0.0 - temp_211 * sin(temp_210)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_186, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_214, float(temp_131 < 0 || !(temp_131 == 0) ? ((int(uint(temp_131) >> 16)) * (int(uint(temp_209) >> 16)) << 16) + (temp_131 & 0xFFFF) * (temp_206 & 0xFFFF) + (temp_209 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_180 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_143), temp_153, 0.0 - temp_152 * sin(temp_143)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_18, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), fma(temp_149, float(temp_123 < 0 || !(temp_123 == 0) ? ((int(uint(temp_123) >> 16)) * (int(uint(temp_205) >> 16)) << 16) + (temp_123 & 0xFFFF) * (temp_202 & 0xFFFF) + (temp_205 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_18 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_153, sin(temp_143), cos(temp_143) * temp_152), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_49, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_142, 0.0 - float(temp_123 < 0 || !(temp_123 == 0) ? 0 - temp_203 + (temp_190 + 0 - (uint(0 - ((int(uint(abs(temp_123)) >> 16)) * (int(uint(temp_195) >> 16)) << 16) + (abs(temp_123) & 0xFFFF) * (temp_190 & 0xFFFF) + (temp_195 << 16)) >= uint(abs(temp_123)) ? -1 : 0) ^ temp_203) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_49 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_168, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_216, temp_129, -0.5), fma(temp_216, float(temp_125 < 0 || !(temp_125 == 0) ? ((int(uint(temp_125) >> 16)) * (int(uint(temp_207) >> 16)) << 16) + (temp_125 & 0xFFFF) * (temp_204 & 0xFFFF) + (temp_207 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_161 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_169, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_217, temp_134, -0.5), 0.0 - fma(temp_217, 0.0 - float(temp_125 < 0 || !(temp_125 == 0) ? 0 - temp_212 + (temp_192 + 0 - (uint(0 - ((int(uint(abs(temp_125)) >> 16)) * (int(uint(temp_200) >> 16)) << 16) + (abs(temp_125) & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_200 << 16)) >= uint(abs(temp_125)) ? -1 : 0) ^ temp_212) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_163 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_215, sin(temp_210), cos(temp_210) * temp_211), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_187, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_208, 0.0 - float(temp_131 < 0 || !(temp_131 == 0) ? 0 - temp_213 + (temp_198 + 0 - (uint(0 - ((int(uint(abs(temp_131)) >> 16)) * (int(uint(temp_201) >> 16)) << 16) + (abs(temp_131) & 0xFFFF) * (temp_198 & 0xFFFF) + (temp_201 << 16)) >= uint(abs(temp_131)) ? -1 : 0) ^ temp_213) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_182 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
