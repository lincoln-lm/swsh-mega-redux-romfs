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
    precise float temp_22;
    bool temp_23;
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
    precise float temp_52;
    int temp_53;
    int temp_54;
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
    bool temp_68;
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
    int temp_120;
    bool temp_121;
    precise float temp_122;
    int temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    int temp_130;
    precise float temp_131;
    precise float temp_132;
    precise float temp_133;
    int temp_134;
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
    precise float temp_148;
    int temp_149;
    uint temp_150;
    int temp_151;
    precise float temp_152;
    bool temp_153;
    uint temp_154;
    uint temp_155;
    int temp_156;
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
    bool temp_168;
    int temp_169;
    int temp_170;
    bool temp_171;
    int temp_172;
    int temp_173;
    int temp_174;
    int temp_175;
    uint temp_176;
    uint temp_177;
    uint temp_178;
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
    precise float temp_191;
    precise float temp_192;
    bool temp_193;
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
    int temp_208;
    int temp_209;
    int temp_210;
    int temp_211;
    int temp_212;
    int temp_213;
    int temp_214;
    precise float temp_215;
    int temp_216;
    int temp_217;
    precise float temp_218;
    int temp_219;
    precise float temp_220;
    precise float temp_221;
    precise float temp_222;
    precise float temp_223;
    precise float temp_224;
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
    temp_18 = sysScaleAttr.x;
    temp_19 = fma(temp_17, temp_17, fma(temp_14, temp_14, temp_11 * temp_11));
    temp_20 = fma(temp_15, temp_15, fma(temp_12, temp_12, temp_9 * temp_9));
    temp_21 = sysRandomAttr.x;
    temp_22 = fma(temp_16, temp_16, fma(temp_13, temp_13, temp_10 * temp_10));
    temp_23 = sqrt(temp_19) > 0.0;
    temp_24 = sqrt(temp_20) > 0.0;
    temp_25 = sqrt(temp_22) > 0.0;
    temp_26 = intBitsToFloat(undef);
    temp_27 = temp_20;
    temp_28 = sqrt(temp_19);
    temp_29 = sqrt(temp_22);
    temp_30 = temp_18;
    if (temp_23)
    {
        temp_26 = inversesqrt(temp_19);
    }
    temp_31 = temp_26;
    if (!temp_23)
    {
        temp_31 = 0.0;
    }
    temp_32 = temp_31;
    if (temp_24)
    {
        temp_27 = inversesqrt(temp_20);
    }
    if (!temp_24)
    {
        temp_28 = 0.0;
    }
    temp_33 = intBitsToFloat(undef);
    temp_34 = temp_28;
    if (temp_25)
    {
        temp_33 = inversesqrt(temp_22);
    }
    if (!temp_24)
    {
        temp_29 = 0.0;
    }
    temp_35 = intBitsToFloat(undef);
    temp_36 = temp_29;
    if (!temp_25)
    {
        temp_35 = 0.0;
    }
    temp_37 = intBitsToFloat(undef);
    temp_38 = temp_35;
    if (!temp_25)
    {
        temp_37 = 0.0;
    }
    temp_39 = intBitsToFloat(undef);
    temp_40 = temp_37;
    if (!temp_25)
    {
        temp_39 = 0.0;
    }
    temp_41 = intBitsToFloat(undef);
    temp_42 = temp_39;
    if (!temp_23)
    {
        temp_41 = 0.0;
    }
    temp_43 = intBitsToFloat(undef);
    temp_44 = temp_41;
    if (!temp_23)
    {
        temp_43 = 0.0;
    }
    temp_45 = temp_43;
    if (temp_23)
    {
        temp_45 = temp_31 * temp_11;
    }
    if (temp_23)
    {
        temp_44 = temp_31 * temp_14;
    }
    if (temp_24)
    {
        temp_30 = temp_27 * temp_9;
    }
    temp_46 = temp_30;
    if (temp_24)
    {
        temp_36 = temp_27 * temp_12;
    }
    if (temp_24)
    {
        temp_34 = temp_27 * temp_15;
    }
    if (temp_25)
    {
        temp_42 = temp_33 * temp_10;
    }
    if (temp_25)
    {
        temp_40 = temp_33 * temp_13;
    }
    if (temp_25)
    {
        temp_38 = temp_33 * temp_16;
    }
    if (temp_23)
    {
        temp_32 = temp_31 * temp_17;
    }
    if (!temp_24)
    {
        temp_46 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_47 = fma(temp_21 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_48 = temp_47 + 0.0 - floor(temp_47);
    }
    else
    {
        temp_48 = temp_5 * (1.0 / temp_6);
    }
    temp_49 = sysRandomAttr.y;
    temp_50 = sysRandomAttr.z;
    temp_51 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_52 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_53 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_54 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_55 = floor(temp_21 * 2.0);
    temp_56 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_57 = floor(temp_49 * 2.0);
    temp_58 = temp_48 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_59 = temp_48 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_60 = floor(temp_50 * 2.0);
    temp_61 = temp_48 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_62 = temp_48 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_63 = fma(temp_61, 0.0 - temp_62, temp_61);
    temp_64 = sysInitRotateAttr.x;
    temp_65 = sysInitRotateAttr.y;
    temp_66 = sysInitRotateAttr.z;
    temp_67 = temp_48 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_68 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_69 = fma(temp_62, 0.0 - temp_67, temp_62);
    temp_70 = fma(fma(temp_21 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_71 = (0.0 - (temp_57 < 0.0 ? 1.0 : 0.0) + (temp_57 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_51 > 0 ? -1 : 0) + 0 - (temp_51 >= 0 ? 0 : 1)));
    temp_72 = (0.0 - (temp_55 < 0.0 ? 1.0 : 0.0) + (temp_55 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_54 > 0 ? -1 : 0) + 0 - (temp_54 >= 0 ? 0 : 1)));
    temp_73 = (0.0 - (temp_60 < 0.0 ? 1.0 : 0.0) + (temp_60 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_53 > 0 ? -1 : 0) + 0 - (temp_53 >= 0 ? 0 : 1)));
    temp_74 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_75 = 2.0;
    if (!temp_68)
    {
        temp_74 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_76 = temp_74;
    if (!temp_68)
    {
        temp_76 = 1.0 / temp_74;
    }
    temp_77 = fma(fma(temp_49 + temp_50, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_78 = fma(fma(temp_21 + temp_50, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    if (temp_68)
    {
        temp_75 = temp_5;
    }
    temp_79 = temp_75;
    if (!temp_68)
    {
        temp_79 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_76, temp_76);
    }
    temp_80 = fma(fma(temp_78 * temp_72, -2.0, temp_78), temp_79, fma(temp_50 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_72 * temp_66, -2.0, temp_66)));
    temp_81 = fma(fma(temp_70 * temp_71, -2.0, temp_70), temp_79, fma(temp_21 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_71 * temp_64, -2.0, temp_64)));
    temp_82 = fma(fma(temp_77 * temp_73, -2.0, temp_77), temp_79, fma(temp_49 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_73 * temp_65, -2.0, temp_65)));
    temp_83 = (clamp(min(0.0, temp_21) + -0.0, 0.0, 1.0) + temp_18) * fma(temp_67, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_52, temp_59, _sysEmitterStaticUniformBlock.data[97].x), temp_69, fma(fma((_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_56, temp_58, _sysEmitterStaticUniformBlock.data[96].x), temp_63, fma(temp_61, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_84 = fma(temp_67, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_52, temp_59, _sysEmitterStaticUniformBlock.data[97].y), temp_69, fma(fma((_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_56, temp_58, _sysEmitterStaticUniformBlock.data[96].y), temp_63, fma(temp_61, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_85 = fma(temp_67, _sysEmitterStaticUniformBlock.data[98].z, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_52, temp_59, _sysEmitterStaticUniformBlock.data[97].z), temp_69, fma(fma((_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_56, temp_58, _sysEmitterStaticUniformBlock.data[96].z), temp_63, fma(temp_61, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_86 = sysLocalPosAttr.x;
    temp_87 = sysLocalPosAttr.y;
    temp_88 = sysLocalPosAttr.z;
    temp_89 = cos(temp_81) * sin(temp_82);
    temp_90 = cos(temp_81) * cos(temp_82);
    temp_91 = sin(temp_81) * sin(temp_82);
    temp_92 = sin(temp_81) * cos(temp_82);
    temp_93 = 0.0 + fma(cos(temp_80) * sin(temp_82), temp_85, fma(temp_83, cos(temp_80) * cos(temp_82), temp_84 * 0.0 - sin(temp_80)));
    temp_94 = 0.0 + fma(fma(sin(temp_80), temp_89, 0.0 - temp_92), temp_85, fma(temp_83, fma(sin(temp_80), temp_90, temp_91), temp_84 * cos(temp_80) * cos(temp_81)));
    temp_95 = 0.0 + fma(fma(sin(temp_80), temp_91, temp_90), temp_85, fma(temp_83, fma(sin(temp_80), temp_92, 0.0 - temp_89), temp_84 * cos(temp_80) * sin(temp_81)));
    temp_96 = fma(0.0, temp_85, fma(0.0, temp_83, 0.0 * temp_84)) + 1.0;
    temp_97 = fma(fma(temp_11, temp_88, fma(temp_10, temp_87, temp_9 * temp_86)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_96, fma(temp_95, temp_45, fma(temp_94, temp_42, temp_93 * temp_46)));
    temp_98 = fma(fma(temp_14, temp_88, fma(temp_13, temp_87, temp_12 * temp_86)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_96, fma(temp_95, temp_44, fma(temp_94, temp_40, temp_93 * temp_36)));
    temp_99 = fma(fma(temp_17, temp_88, fma(temp_16, temp_87, temp_15 * temp_86)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_96, fma(temp_95, temp_32, fma(temp_94, temp_38, temp_93 * temp_34)));
    temp_100 = fma(temp_99, _sysViewUniformBlock.data[0].z, fma(temp_98, _sysViewUniformBlock.data[0].y, temp_97 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_101 = fma(temp_99, _sysViewUniformBlock.data[1].z, fma(temp_98, _sysViewUniformBlock.data[1].y, temp_97 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_102 = fma(temp_99, _sysViewUniformBlock.data[3].z, fma(temp_98, _sysViewUniformBlock.data[3].y, temp_97 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_103 = fma(temp_99, _sysViewUniformBlock.data[2].z, fma(temp_98, _sysViewUniformBlock.data[2].y, temp_97 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_104 = fma(temp_99, _sysViewUniformBlock.data[9].z, fma(temp_98, _sysViewUniformBlock.data[9].y, temp_97 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_105 = fma(temp_99, _sysViewUniformBlock.data[8].z, fma(temp_98, _sysViewUniformBlock.data[8].y, temp_97 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_106 = 0.0 * temp_104;
    temp_107 = fma(temp_99, _sysViewUniformBlock.data[11].z, fma(temp_98, _sysViewUniformBlock.data[11].y, temp_97 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_108 = fma(0.0, temp_105, temp_106);
    temp_109 = fma(temp_102, _sysViewUniformBlock.data[6].w, fma(temp_103, _sysViewUniformBlock.data[6].z, fma(temp_101, _sysViewUniformBlock.data[6].y, temp_100 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_102, _sysViewUniformBlock.data[7].w, fma(temp_103, _sysViewUniformBlock.data[7].z, fma(temp_101, _sysViewUniformBlock.data[7].y, temp_100 * _sysViewUniformBlock.data[7].x)))) * temp_107;
    gl_Position.x = temp_105;
    gl_Position.y = temp_104;
    gl_Position.z = temp_109;
    gl_Position.w = temp_107;
    out_attr4.x = fma(temp_107, 0.5, fma(0.0, temp_109, fma(temp_105, 0.5, temp_106)));
    out_attr4.y = fma(temp_107, 0.5, fma(0.0, temp_109, fma(0.0, temp_105, temp_104 * -0.5)));
    out_attr4.z = fma(0.0, temp_107, temp_109 + temp_108);
    out_attr4.w = temp_107 + fma(0.0, temp_109, temp_108);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_110 = fma(temp_21 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_111 = temp_110 + 0.0 - floor(temp_110);
    }
    else
    {
        temp_111 = temp_5 * (1.0 / temp_6);
    }
    temp_112 = temp_111 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_113 = temp_111 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_114 = temp_111 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_115 = temp_111 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_115, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_114, 0.0 - temp_115, temp_114), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_113, 0.0 - temp_114, temp_113), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_113, 0.0 - temp_112, temp_112), fma(temp_112, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_116 = fma(temp_21 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_117 = temp_116 + 0.0 - floor(temp_116);
    }
    else
    {
        temp_117 = temp_5 * (1.0 / temp_6);
    }
    temp_118 = sysTexCoordAttr.x;
    temp_119 = sysTexCoordAttr.y;
    temp_120 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_121 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_122 = temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[78].w;
    temp_123 = floatBitsToInt(1.0 / float(uint(temp_120))) + -2;
    temp_124 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_125 = 1.0 / (_sysEmitterStaticUniformBlock.data[78].w + 0.0 - _sysEmitterStaticUniformBlock.data[77].w);
    temp_126 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[78].w + _sysEmitterStaticUniformBlock.data[79].w);
    temp_127 = temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_128 = temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[77].w;
    temp_129 = temp_117 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_130 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_131 = temp_117 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_132 = temp_117 >= _sysEmitterStaticUniformBlock.data[78].w ? 1.0 : 0.0;
    temp_133 = fma(temp_129, 0.0 - temp_131, temp_129);
    temp_134 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_135 = temp_118;
    temp_136 = temp_118;
    temp_137 = temp_118;
    temp_138 = temp_119;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_21 > 0.5) ? -1 : 0)) != 0))
    {
        temp_135 = 0.0 - temp_118 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_50 > 0.5) ? -1 : 0)) != 0))
    {
        temp_136 = 0.0 - temp_118 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_137 = 0.0 - temp_118 + 1.0;
    }
    temp_139 = fma(temp_131, 0.0 - temp_132, temp_131);
    temp_140 = temp_117 >= _sysEmitterStaticUniformBlock.data[79].w ? 1.0 : 0.0;
    temp_141 = temp_119;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_141 = 0.0 - temp_119 + 1.0;
    }
    temp_142 = fma(temp_132, 0.0 - temp_140, temp_132);
    temp_143 = temp_119;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_143 = 0.0 - temp_119 + 1.0;
    }
    temp_144 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_145 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_50, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_146 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_147 = 0;
    if (temp_121)
    {
        temp_147 = 1;
    }
    temp_148 = fma(temp_144, temp_141, -0.5);
    temp_149 = floatBitsToInt(1.0 / float(uint(temp_130))) + -2;
    temp_150 = uint(max(trunc(float(0u) * intBitsToFloat(temp_123)), 0.0));
    temp_151 = floatBitsToInt(1.0 / float(uint(temp_134))) + -2;
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_50 > 0.5) ? -1 : 0)) != 0))
    {
        temp_138 = 0.0 - temp_119 + 1.0;
    }
    temp_152 = fma(temp_146, temp_135, -0.5);
    temp_153 = temp_147 == 1;
    temp_154 = uint(max(trunc(float(0u) * intBitsToFloat(temp_149)), 0.0));
    temp_155 = uint(max(trunc(float(0u) * intBitsToFloat(temp_151)), 0.0));
    temp_156 = (temp_120 & 0xFFFF) * (int(temp_150 >> 16)) & 0xFFFF | int(temp_150) << 16;
    temp_157 = temp_21;
    temp_158 = temp_49;
    temp_159 = temp_21;
    temp_160 = temp_49;
    if (temp_153)
    {
        temp_157 = temp_49;
    }
    temp_161 = temp_157;
    temp_162 = temp_157;
    if (temp_153)
    {
        temp_158 = temp_50;
    }
    temp_163 = temp_158;
    temp_164 = temp_158;
    if (temp_153)
    {
        temp_159 = temp_49;
    }
    temp_165 = temp_159;
    temp_166 = temp_159;
    if (temp_153)
    {
        temp_160 = temp_50;
    }
    temp_167 = temp_160;
    if (!temp_153)
    {
        temp_168 = temp_147 == 2;
        if (temp_168)
        {
            temp_161 = temp_50;
        }
        temp_162 = temp_161;
        if (temp_168)
        {
            temp_163 = temp_21;
        }
        temp_164 = temp_163;
        if (temp_168)
        {
            temp_165 = temp_21;
        }
        temp_166 = temp_165;
        if (temp_168)
        {
            temp_167 = temp_49;
        }
    }
    temp_169 = 0;
    if (temp_121)
    {
        temp_169 = 2;
    }
    temp_170 = (temp_134 & 0xFFFF) * (int(temp_155 >> 16)) & 0xFFFF | int(temp_155) << 16;
    temp_171 = temp_169 == 1;
    temp_172 = (temp_130 & 0xFFFF) * (int(temp_154 >> 16)) & 0xFFFF | int(temp_154) << 16;
    temp_173 = floatBitsToInt(1.0 / float(uint(abs(temp_120)))) + -2;
    temp_174 = floatBitsToInt(1.0 / float(uint(abs(temp_130)))) + -2;
    temp_175 = floatBitsToInt(1.0 / float(uint(abs(temp_134)))) + -2;
    temp_176 = uint(max(trunc(intBitsToFloat(temp_173) * float(0u)), 0.0));
    temp_177 = uint(max(trunc(float(0u) * intBitsToFloat(temp_174)), 0.0));
    temp_178 = uint(max(trunc(float(0u) * intBitsToFloat(temp_175)), 0.0));
    temp_179 = temp_21;
    temp_180 = temp_49;
    temp_181 = temp_50;
    temp_182 = temp_21;
    temp_183 = temp_49;
    if (temp_171)
    {
        temp_179 = temp_49;
    }
    temp_184 = temp_179;
    temp_185 = temp_179;
    if (temp_171)
    {
        temp_180 = temp_50;
    }
    temp_186 = temp_180;
    temp_187 = temp_180;
    if (temp_171)
    {
        temp_181 = temp_21;
    }
    temp_188 = temp_181;
    temp_189 = temp_181;
    if (temp_171)
    {
        temp_182 = temp_49;
    }
    temp_190 = temp_182;
    temp_191 = temp_182;
    if (temp_171)
    {
        temp_183 = temp_50;
    }
    temp_192 = temp_183;
    if (!temp_171)
    {
        temp_193 = temp_169 == 2;
        if (temp_193)
        {
            temp_184 = temp_50;
        }
        temp_185 = temp_184;
        if (temp_193)
        {
            temp_186 = temp_21;
        }
        temp_187 = temp_186;
        if (temp_193)
        {
            temp_190 = temp_21;
        }
        temp_191 = temp_190;
        if (temp_193)
        {
            temp_188 = temp_49;
        }
        temp_189 = temp_188;
        if (temp_193)
        {
            temp_192 = temp_49;
        }
    }
    temp_194 = (abs(temp_120) & 0xFFFF) * (int(temp_176 >> 16)) & 0xFFFF | int(temp_176) << 16;
    temp_195 = (abs(temp_134) & 0xFFFF) * (int(temp_178 >> 16)) & 0xFFFF | int(temp_178) << 16;
    temp_196 = (abs(temp_130) & 0xFFFF) * (int(temp_177 >> 16)) & 0xFFFF | int(temp_177) << 16;
    temp_197 = int(temp_150) + int(uint(max(trunc(intBitsToFloat(temp_123) * float(uint(0 - ((int(uint(temp_120) >> 16)) * (int(uint(temp_156) >> 16)) << 16) + (temp_120 & 0xFFFF) * (int(temp_150) & 0xFFFF) + (temp_156 << 16)))), 0.0)));
    temp_198 = int(temp_176) + int(uint(max(trunc(intBitsToFloat(temp_173) * float(uint(0 - ((int(uint(abs(temp_120)) >> 16)) * (int(uint(temp_194) >> 16)) << 16) + (abs(temp_120) & 0xFFFF) * (int(temp_176) & 0xFFFF) + (temp_194 << 16)))), 0.0)));
    temp_199 = int(temp_155) + int(uint(max(trunc(intBitsToFloat(temp_151) * float(uint(0 - ((int(uint(temp_134) >> 16)) * (int(uint(temp_170) >> 16)) << 16) + (temp_134 & 0xFFFF) * (int(temp_155) & 0xFFFF) + (temp_170 << 16)))), 0.0)));
    temp_200 = (temp_120 & 0xFFFF) * (int(uint(temp_197) >> 16)) & 0xFFFF | temp_197 << 16;
    temp_201 = (abs(temp_120) & 0xFFFF) * (int(uint(temp_198) >> 16)) & 0xFFFF | temp_198 << 16;
    temp_202 = int(temp_178) + int(uint(max(trunc(intBitsToFloat(temp_175) * float(uint(0 - ((int(uint(abs(temp_134)) >> 16)) * (int(uint(temp_195) >> 16)) << 16) + (abs(temp_134) & 0xFFFF) * (int(temp_178) & 0xFFFF) + (temp_195 << 16)))), 0.0)));
    temp_203 = int(temp_154) + int(uint(max(trunc(intBitsToFloat(temp_149) * float(uint(0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_172) >> 16)) << 16) + (temp_130 & 0xFFFF) * (int(temp_154) & 0xFFFF) + (temp_172 << 16)))), 0.0)));
    temp_204 = int(temp_177) + int(uint(max(trunc(intBitsToFloat(temp_174) * float(uint(0 - ((int(uint(abs(temp_130)) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (abs(temp_130) & 0xFFFF) * (int(temp_177) & 0xFFFF) + (temp_196 << 16)))), 0.0)));
    temp_205 = (temp_130 & 0xFFFF) * (int(uint(temp_203) >> 16)) & 0xFFFF | temp_203 << 16;
    temp_206 = (temp_134 & 0xFFFF) * (int(uint(temp_199) >> 16)) & 0xFFFF | temp_199 << 16;
    temp_207 = (abs(temp_134) & 0xFFFF) * (int(uint(temp_202) >> 16)) & 0xFFFF | temp_202 << 16;
    temp_208 = (abs(temp_130) & 0xFFFF) * (int(uint(temp_204) >> 16)) & 0xFFFF | temp_204 << 16;
    temp_209 = 0 - temp_197 + ((uint(0 - ((int(uint(temp_120) >> 16)) * (int(uint(temp_200) >> 16)) << 16) + (temp_120 & 0xFFFF) * (temp_197 & 0xFFFF) + (temp_200 << 16)) >= uint(temp_120) ? -1 : 0));
    temp_210 = 0 - temp_203 + ((uint(0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_205) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_203 & 0xFFFF) + (temp_205 << 16)) >= uint(temp_130) ? -1 : 0));
    temp_211 = (temp_120 & 0xFFFF) * (int(uint(temp_209) >> 16)) & 0xFFFF | temp_209 << 16;
    temp_212 = 0 - int(uint(temp_130) >> 31);
    temp_213 = 0 - temp_199 + ((uint(0 - ((int(uint(temp_134) >> 16)) * (int(uint(temp_206) >> 16)) << 16) + (temp_134 & 0xFFFF) * (temp_199 & 0xFFFF) + (temp_206 << 16)) >= uint(temp_134) ? -1 : 0));
    temp_214 = (temp_130 & 0xFFFF) * (int(uint(temp_210) >> 16)) & 0xFFFF | temp_210 << 16;
    temp_215 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_189, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_216 = 0 - int(uint(temp_120) >> 31);
    temp_217 = 0 - int(uint(temp_134) >> 31);
    temp_218 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_219 = (temp_134 & 0xFFFF) * (int(uint(temp_213) >> 16)) & 0xFFFF | temp_213 << 16;
    temp_220 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_221 = fma(temp_218, temp_138, -0.5);
    temp_222 = fma(temp_220, temp_137, -0.5);
    temp_223 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_224 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr5.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr6.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr6.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr1.x = fma(temp_140, _sysEmitterStaticUniformBlock.data[79].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[78].x + _sysEmitterStaticUniformBlock.data[79].x) * temp_126, temp_122, _sysEmitterStaticUniformBlock.data[78].x), temp_142, fma(fma((_sysEmitterStaticUniformBlock.data[78].x + 0.0 - _sysEmitterStaticUniformBlock.data[77].x) * temp_125, temp_128, _sysEmitterStaticUniformBlock.data[77].x), temp_139, fma(fma(temp_127, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_124, _sysEmitterStaticUniformBlock.data[76].x), temp_133, fma(temp_129, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_140, _sysEmitterStaticUniformBlock.data[79].y, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[78].y + _sysEmitterStaticUniformBlock.data[79].y) * temp_126, temp_122, _sysEmitterStaticUniformBlock.data[78].y), temp_142, fma(fma((_sysEmitterStaticUniformBlock.data[78].y + 0.0 - _sysEmitterStaticUniformBlock.data[77].y) * temp_125, temp_128, _sysEmitterStaticUniformBlock.data[77].y), temp_139, fma(fma(temp_127, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_124, _sysEmitterStaticUniformBlock.data[76].y), temp_133, fma(temp_129, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_140, _sysEmitterStaticUniformBlock.data[79].z, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[78].z + _sysEmitterStaticUniformBlock.data[79].z) * temp_126, temp_122, _sysEmitterStaticUniformBlock.data[78].z), temp_142, fma(fma((_sysEmitterStaticUniformBlock.data[78].z + 0.0 - _sysEmitterStaticUniformBlock.data[77].z) * temp_125, temp_128, _sysEmitterStaticUniformBlock.data[77].z), temp_139, fma(fma(temp_127, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_124, _sysEmitterStaticUniformBlock.data[76].z), temp_133, fma(temp_129, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr3.x = fma(fma(temp_222, cos(temp_215), 0.0 - temp_221 * sin(temp_215)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_191, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_220, float(temp_134 < 0 || !(temp_134 == 0) ? ((int(uint(temp_134) >> 16)) * (int(uint(temp_219) >> 16)) << 16) + (temp_134 & 0xFFFF) * (temp_213 & 0xFFFF) + (temp_219 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_185 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_145), temp_152, 0.0 - temp_148 * sin(temp_145)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_21, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_146, float(temp_120 < 0 || !(temp_120 == 0) ? ((int(uint(temp_120) >> 16)) * (int(uint(temp_211) >> 16)) << 16) + (temp_120 & 0xFFFF) * (temp_209 & 0xFFFF) + (temp_211 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_21 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_152, sin(temp_145), cos(temp_145) * temp_148), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_49, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_144, 0.0 - float(temp_120 < 0 || !(temp_120 == 0) ? 0 - temp_216 + (temp_198 + 0 - (uint(0 - ((int(uint(abs(temp_120)) >> 16)) * (int(uint(temp_201) >> 16)) << 16) + (abs(temp_120) & 0xFFFF) * (temp_198 & 0xFFFF) + (temp_201 << 16)) >= uint(abs(temp_120)) ? -1 : 0) ^ temp_216) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_49 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_166, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_223, temp_136, -0.5), fma(temp_223, float(temp_130 < 0 || !(temp_130 == 0) ? ((int(uint(temp_130) >> 16)) * (int(uint(temp_214) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_210 & 0xFFFF) + (temp_214 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_162 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_167, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_224, temp_143, -0.5), 0.0 - fma(temp_224, 0.0 - float(temp_130 < 0 || !(temp_130 == 0) ? 0 - temp_212 + (temp_204 + 0 - (uint(0 - ((int(uint(abs(temp_130)) >> 16)) * (int(uint(temp_208) >> 16)) << 16) + (abs(temp_130) & 0xFFFF) * (temp_204 & 0xFFFF) + (temp_208 << 16)) >= uint(abs(temp_130)) ? -1 : 0) ^ temp_212) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_164 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_222, sin(temp_215), cos(temp_215) * temp_221), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_192, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_218, 0.0 - float(temp_134 < 0 || !(temp_134 == 0) ? 0 - temp_217 + (temp_202 + 0 - (uint(0 - ((int(uint(abs(temp_134)) >> 16)) * (int(uint(temp_207) >> 16)) << 16) + (abs(temp_134) & 0xFFFF) * (temp_202 & 0xFFFF) + (temp_207 << 16)) >= uint(abs(temp_134)) ? -1 : 0) ^ temp_217) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_187 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
