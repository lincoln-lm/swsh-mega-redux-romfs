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
    precise float temp_28;
    precise float temp_29;
    int temp_30;
    precise float temp_31;
    precise float temp_32;
    precise float temp_33;
    precise float temp_34;
    int temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    int temp_39;
    precise float temp_40;
    precise float temp_41;
    precise float temp_42;
    bool temp_43;
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
    bool temp_120;
    precise float temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    int temp_130;
    bool temp_131;
    int temp_132;
    int temp_133;
    bool temp_134;
    precise float temp_135;
    uint temp_136;
    int temp_137;
    int temp_138;
    int temp_139;
    int temp_140;
    int temp_141;
    int temp_142;
    int temp_143;
    int temp_144;
    int temp_145;
    int temp_146;
    int temp_147;
    int temp_148;
    int temp_149;
    precise float temp_150;
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
    int temp_161;
    int temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    int temp_166;
    int temp_167;
    int temp_168;
    uint temp_169;
    int temp_170;
    int temp_171;
    int temp_172;
    int temp_173;
    int temp_174;
    int temp_175;
    int temp_176;
    int temp_177;
    int temp_178;
    uint temp_179;
    precise float temp_180;
    int temp_181;
    precise float temp_182;
    int temp_183;
    int temp_184;
    uint temp_185;
    precise float temp_186;
    int temp_187;
    precise float temp_188;
    int temp_189;
    int temp_190;
    bool temp_191;
    int temp_192;
    int temp_193;
    int temp_194;
    int temp_195;
    precise float temp_196;
    precise float temp_197;
    precise float temp_198;
    precise float temp_199;
    precise float temp_200;
    precise float temp_201;
    precise float temp_202;
    precise float temp_203;
    precise float temp_204;
    int temp_205;
    precise float temp_206;
    precise float temp_207;
    precise float temp_208;
    bool temp_209;
    precise float temp_210;
    uint temp_211;
    int temp_212;
    int temp_213;
    precise float temp_214;
    precise float temp_215;
    int temp_216;
    int temp_217;
    precise float temp_218;
    int temp_219;
    precise float temp_220;
    int temp_221;
    precise float temp_222;
    uint temp_223;
    precise float temp_224;
    int temp_225;
    int temp_226;
    int temp_227;
    precise float temp_228;
    precise float temp_229;
    precise float temp_230;
    precise float temp_231;
    int temp_232;
    int temp_233;
    precise float temp_234;
    uint temp_235;
    uint temp_236;
    precise float temp_237;
    int temp_238;
    int temp_239;
    precise float temp_240;
    precise float temp_241;
    precise float temp_242;
    precise float temp_243;
    int temp_244;
    int temp_245;
    precise float temp_246;
    precise float temp_247;
    int temp_248;
    precise float temp_249;
    precise float temp_250;
    int temp_251;
    int temp_252;
    int temp_253;
    int temp_254;
    int temp_255;
    precise float temp_256;
    precise float temp_257;
    int temp_258;
    int temp_259;
    int temp_260;
    int temp_261;
    int temp_262;
    int temp_263;
    precise float temp_264;
    precise float temp_265;
    precise float temp_266;
    precise float temp_267;
    precise float temp_268;
    precise float temp_269;
    precise float temp_270;
    precise float temp_271;
    precise float temp_272;
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
    temp_27 = sysEmtMat1Attr.x;
    temp_28 = sysEmtMat1Attr.y;
    temp_29 = sysEmtMat1Attr.z;
    temp_30 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_31 = floor(temp_10 * 2.0);
    temp_32 = sysEmtMat0Attr.x;
    temp_33 = sysEmtMat0Attr.y;
    temp_34 = sysEmtMat0Attr.z;
    temp_35 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_36 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_37 = sysRandomAttr.y;
    temp_38 = sysRandomAttr.z;
    temp_39 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_40 = temp_20 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_41 = floor(temp_37 * 2.0);
    temp_42 = floor(temp_38 * 2.0);
    temp_43 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_44 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_45 = temp_20 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_46 = temp_20 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_47 = fma(temp_29, temp_23, fma(temp_28, temp_22, temp_27 * temp_21)) + sysEmtMat1Attr.w;
    temp_48 = temp_20 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_49 = fma(temp_34, temp_23, fma(temp_33, temp_22, temp_32 * temp_21)) + sysEmtMat0Attr.w;
    temp_50 = fma(temp_26, temp_23, fma(temp_25, temp_22, temp_24 * temp_21)) + sysEmtMat2Attr.w;
    temp_51 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_52 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_53 = temp_51;
    temp_54 = temp_20;
    if (!temp_43)
    {
        temp_52 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_55 = temp_20 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_56 = sysInitRotateAttr.x;
    temp_57 = sysInitRotateAttr.y;
    temp_58 = sysInitRotateAttr.z;
    if (!temp_43)
    {
        temp_53 = 1.0 / temp_52;
    }
    temp_59 = fma(temp_46, 0.0 - temp_55, temp_46);
    temp_60 = fma(temp_55, 0.0 - temp_48, temp_55);
    temp_61 = (0.0 - (temp_41 < 0.0 ? 1.0 : 0.0) + (temp_41 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_30 > 0 ? -1 : 0) + 0 - (temp_30 >= 0 ? 0 : 1)));
    temp_62 = 0.0 - temp_49 + _sysViewUniformBlock.data[17].x;
    temp_63 = (0.0 - (temp_42 < 0.0 ? 1.0 : 0.0) + (temp_42 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_35 > 0 ? -1 : 0) + 0 - (temp_35 >= 0 ? 0 : 1)));
    temp_64 = (0.0 - (temp_31 < 0.0 ? 1.0 : 0.0) + (temp_31 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_39 > 0 ? -1 : 0) + 0 - (temp_39 >= 0 ? 0 : 1)));
    temp_65 = fma(fma(temp_10 + temp_37, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_66 = fma(fma(temp_37 + temp_38, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    if (temp_43)
    {
        temp_54 = temp_5;
    }
    temp_67 = temp_54;
    if (!temp_43)
    {
        temp_67 = fma(exp2(temp_51), 0.0 - temp_53, temp_53);
    }
    temp_68 = 0.0 - temp_47 + _sysViewUniformBlock.data[17].y;
    temp_69 = 0.0 - temp_50 + _sysViewUniformBlock.data[17].z;
    temp_70 = fma(fma(temp_10 + temp_38, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_71 = inversesqrt(fma(temp_69, temp_69, fma(temp_68, temp_68, temp_62 * temp_62)));
    temp_72 = temp_69 * temp_71;
    temp_73 = temp_62 * temp_71;
    temp_74 = fma(fma(temp_65 * temp_61, -2.0, temp_65), temp_67, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_61 * temp_56, -2.0, temp_56)));
    temp_75 = fma(fma(temp_70 * temp_64, -2.0, temp_70), temp_67, fma(temp_38 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_64 * temp_58, -2.0, temp_58)));
    temp_76 = fma(fma(temp_66 * temp_63, -2.0, temp_66), temp_67, fma(temp_37 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_63 * temp_57, -2.0, temp_57)));
    temp_77 = temp_68 * temp_71;
    temp_78 = fma(temp_77, 0.0 - _sysViewUniformBlock.data[1].z, 0.0 - temp_72 * 0.0 - _sysViewUniformBlock.data[1].y);
    temp_79 = fma(temp_72, 0.0 - _sysViewUniformBlock.data[1].x, 0.0 - temp_73 * 0.0 - _sysViewUniformBlock.data[1].z);
    temp_80 = fma(temp_73, 0.0 - _sysViewUniformBlock.data[1].y, 0.0 - temp_77 * 0.0 - _sysViewUniformBlock.data[1].x);
    temp_81 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_48, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_36, temp_40, _sysEmitterStaticUniformBlock.data[97].x), temp_60, fma(fma((_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_44, temp_45, _sysEmitterStaticUniformBlock.data[96].x), temp_59, fma(temp_46, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_15);
    temp_82 = fma(temp_48, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_36, temp_40, _sysEmitterStaticUniformBlock.data[97].y), temp_60, fma(fma((_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_44, temp_45, _sysEmitterStaticUniformBlock.data[96].y), temp_59, fma(temp_46, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_16);
    temp_83 = inversesqrt(fma(temp_80, temp_80, fma(temp_79, temp_79, temp_78 * temp_78)));
    temp_84 = cos(temp_74) * cos(temp_76);
    temp_85 = sin(temp_74) * sin(temp_76);
    temp_86 = sin(temp_74) * cos(temp_76);
    temp_87 = cos(temp_74) * sin(temp_76);
    temp_88 = cos(temp_75) * sin(temp_76);
    temp_89 = temp_79 * temp_83;
    temp_90 = 0.0 + fma(temp_81, cos(temp_75) * cos(temp_76), temp_82 * 0.0 - sin(temp_75));
    temp_91 = temp_78 * temp_83;
    temp_92 = temp_80 * temp_83;
    temp_93 = 0.0 + fma(temp_81, fma(sin(temp_75), temp_84, temp_85), temp_82 * cos(temp_75) * cos(temp_74));
    temp_94 = fma(temp_77, temp_92, 0.0 - temp_72 * temp_89);
    temp_95 = 0.0 + fma(temp_81, fma(sin(temp_75), temp_86, 0.0 - temp_87), temp_82 * sin(temp_74) * cos(temp_75));
    temp_96 = sysLocalDiffAttr.x;
    temp_97 = sysLocalDiffAttr.y;
    temp_98 = sysLocalDiffAttr.z;
    temp_99 = fma(sin(temp_75), temp_87, 0.0 - temp_86);
    temp_100 = fma(sin(temp_75), temp_85, temp_84);
    temp_101 = fma(temp_72, temp_91, 0.0 - temp_73 * temp_92);
    temp_102 = fma(temp_73, temp_89, 0.0 - temp_77 * temp_91);
    temp_103 = 0.0 + fma(temp_73, temp_95, fma(temp_94, temp_93, temp_91 * temp_90));
    temp_104 = fma(temp_73, temp_100, fma(temp_91, temp_88, temp_94 * temp_99));
    temp_105 = 0.0 + fma(temp_77, temp_95, fma(temp_101, temp_93, temp_89 * temp_90));
    temp_106 = 0.0 + fma(temp_72, temp_95, fma(temp_102, temp_93, temp_92 * temp_90));
    temp_107 = fma(temp_77, temp_100, fma(temp_89, temp_88, temp_101 * temp_99));
    temp_108 = fma(temp_72, temp_100, fma(temp_92, temp_88, temp_102 * temp_99));
    temp_109 = fma(temp_106, temp_106, fma(temp_105, temp_105, temp_103 * temp_103));
    temp_110 = temp_49 + temp_103;
    temp_111 = temp_47 + temp_105;
    temp_112 = 0.0 + fma(temp_98, temp_29, fma(temp_97, temp_28, temp_96 * temp_27));
    temp_113 = 0.0 + fma(temp_98, temp_34, fma(temp_97, temp_33, temp_96 * temp_32));
    temp_114 = temp_50 + temp_106;
    temp_115 = temp_106;
    temp_116 = temp_111;
    temp_117 = temp_114;
    temp_118 = temp_110;
    if (sqrt(temp_109) > 0.0)
    {
        temp_119 = 0.0 + fma(temp_98, temp_26, fma(temp_97, temp_25, temp_96 * temp_24)) + 9.99999997E-07;
        temp_120 = 0.0 < _sysEmitterDynamicUniformBlock.data[2].w;
        temp_121 = fma(temp_119, temp_119, fma(temp_112, temp_112, temp_113 * temp_113));
        temp_122 = inversesqrt(temp_109);
        temp_123 = sqrt(temp_121);
        if (temp_120)
        {
            temp_115 = temp_113;
        }
        temp_124 = temp_115;
        if (temp_120)
        {
            temp_122 = temp_112;
        }
        temp_125 = temp_122;
        if (temp_120)
        {
            temp_123 = temp_119;
        }
        temp_126 = temp_123;
        if (!temp_120)
        {
            temp_127 = inversesqrt(fma(temp_119, temp_119, fma(temp_112, temp_112, temp_113 * temp_113)));
            temp_128 = sqrt(fma(sysLocalVecAttr.z, sysLocalVecAttr.z, fma(sysLocalVecAttr.y, sysLocalVecAttr.y, sysLocalVecAttr.x * sysLocalVecAttr.x)));
            temp_124 = temp_113 * temp_127 * temp_128;
            temp_125 = temp_112 * temp_127 * temp_128;
            temp_126 = temp_119 * temp_127 * temp_128;
        }
        if (sqrt(temp_121) > 0.0)
        {
            temp_129 = fma(temp_119 * inversesqrt(temp_121), temp_106 * inversesqrt(temp_109), fma(temp_112 * inversesqrt(temp_121), temp_105 * inversesqrt(temp_109), temp_113 * inversesqrt(temp_121) * temp_103 * inversesqrt(temp_109)));
            temp_116 = fma(temp_129, temp_125 * _sysEmitterStaticUniformBlock.data[95].x, temp_111);
            temp_117 = fma(temp_129, temp_126 * _sysEmitterStaticUniformBlock.data[95].x, temp_114);
            temp_118 = fma(temp_129, temp_124 * _sysEmitterStaticUniformBlock.data[95].x, temp_110);
        }
    }
    temp_130 = int(trunc(_sysEmitterStaticUniformBlock.data[17].x));
    temp_131 = temp_130 < 0 || !(temp_130 == 0);
    temp_132 = floatBitsToInt(1.0 / float(uint(temp_130))) + -2;
    temp_133 = int(trunc(temp_5 * (1.0 / float(int(trunc(_sysEmitterStaticUniformBlock.data[17].y))))));
    temp_134 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_135 = 1.0;
    if (temp_134)
    {
        temp_135 = 7.34548998;
    }
    temp_136 = uint(max(trunc(intBitsToFloat(temp_132) * float(uint(temp_133))), 0.0));
    temp_137 = (temp_130 & 0xFFFF) * (int(temp_136 >> 16)) & 0xFFFF | int(temp_136) << 16;
    temp_138 = int(temp_136) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(temp_133 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_137) >> 16)) << 16) + (temp_130 & 0xFFFF) * (int(temp_136) & 0xFFFF) + (temp_137 << 16)))), 0.0)));
    temp_139 = (temp_130 & 0xFFFF) * (int(uint(temp_138) >> 16)) & 0xFFFF | temp_138 << 16;
    temp_140 = 0 - temp_138 + ((uint(temp_133 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_139) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_138 & 0xFFFF) + (temp_139 << 16)) >= uint(temp_130) ? -1 : 0));
    temp_141 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x2000000;
    temp_142 = abs((float(temp_133) >= float(temp_130) ? -1 : 0));
    temp_143 = (temp_130 & 0xFFFF) * (int(uint(temp_140) >> 16)) & 0xFFFF | temp_140 << 16;
    temp_144 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 32;
    temp_145 = 0 - temp_142 + 1;
    temp_146 = abs(0 - (temp_141 > 0 ? -1 : 0) + 0 - (temp_141 >= 0 ? 0 : 1));
    temp_147 = temp_131 ? temp_133 + ((int(uint(temp_130) >> 16)) * (int(uint(temp_143) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_140 & 0xFFFF) + (temp_143 << 16) : -1;
    temp_148 = abs(0 - (temp_144 > 0 ? -1 : 0) + 0 - (temp_144 >= 0 ? 0 : 1));
    temp_149 = (temp_145 & 0xFFFF) * (int(uint(temp_147) >> 16)) & 0xFFFF | temp_147 << 16;
    temp_150 = temp_135 * temp_10;
    temp_151 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 16;
    temp_152 = temp_130 + -1;
    temp_153 = (temp_142 & 0xFFFF) * (int(uint(temp_152) >> 16)) & 0xFFFF | temp_152 << 16;
    temp_154 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 64;
    temp_155 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 128;
    temp_156 = int(trunc(temp_5 * float(temp_130) * (1.0 / temp_6)));
    temp_157 = ((int(uint(temp_142) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (temp_142 & 0xFFFF) * (temp_152 & 0xFFFF) + ((int(uint(temp_145) >> 16)) * (int(uint(temp_149) >> 16)) << 16) + (temp_145 & 0xFFFF) * (temp_147 & 0xFFFF) + (temp_149 << 16) + (temp_153 << 16);
    temp_158 = abs(0 - (temp_151 > 0 ? -1 : 0) + 0 - (temp_151 >= 0 ? 0 : 1));
    temp_159 = int(trunc(float(temp_130) * (temp_150 + 0.0 - floor(temp_150))));
    temp_160 = (temp_148 & 0xFFFF) * (int(uint(temp_157) >> 16)) & 0xFFFF | temp_157 << 16;
    temp_161 = abs(0 - (temp_154 > 0 ? -1 : 0) + 0 - (temp_154 >= 0 ? 0 : 1));
    temp_162 = (temp_146 & 0xFFFF) * (int(uint(temp_159) >> 16)) & 0xFFFF | temp_159 << 16;
    temp_163 = (temp_158 & 0xFFFF) * (int(uint(temp_156) >> 16)) & 0xFFFF | temp_156 << 16;
    temp_164 = ((int(uint(temp_146) >> 16)) * (int(uint(temp_162) >> 16)) << 16) + (temp_146 & 0xFFFF) * (temp_159 & 0xFFFF) + temp_133 + (temp_162 << 16);
    temp_165 = (temp_161 & 0xFFFF) * (int(uint(temp_164) >> 16)) & 0xFFFF | temp_164 << 16;
    temp_166 = abs(0 - (temp_155 > 0 ? -1 : 0) + 0 - (temp_155 >= 0 ? 0 : 1));
    temp_167 = (temp_166 & 0xFFFF) * (int(uint(temp_159) >> 16)) & 0xFFFF | temp_159 << 16;
    temp_168 = ((int(uint(temp_166) >> 16)) * (int(uint(temp_167) >> 16)) << 16) + (temp_166 & 0xFFFF) * (temp_159 & 0xFFFF) + ((int(uint(temp_161) >> 16)) * (int(uint(temp_165) >> 16)) << 16) + (temp_161 & 0xFFFF) * (temp_164 & 0xFFFF) + ((int(uint(temp_158) >> 16)) * (int(uint(temp_163) >> 16)) << 16) + (temp_158 & 0xFFFF) * (temp_156 & 0xFFFF) + ((int(uint(temp_148) >> 16)) * (int(uint(temp_160) >> 16)) << 16) + (temp_148 & 0xFFFF) * (temp_157 & 0xFFFF) + (temp_160 << 16) + (temp_163 << 16) + (temp_165 << 16) + (temp_167 << 16);
    temp_169 = uint(max(trunc(intBitsToFloat(temp_132) * float(uint(temp_168))), 0.0));
    temp_170 = (temp_130 & 0xFFFF) * (int(temp_169 >> 16)) & 0xFFFF | int(temp_169) << 16;
    temp_171 = int(temp_169) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(temp_168 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_170) >> 16)) << 16) + (temp_130 & 0xFFFF) * (int(temp_169) & 0xFFFF) + (temp_170 << 16)))), 0.0)));
    temp_172 = (temp_130 & 0xFFFF) * (int(uint(temp_171) >> 16)) & 0xFFFF | temp_171 << 16;
    temp_173 = 0 - temp_171 + ((uint(temp_168 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_172) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_171 & 0xFFFF) + (temp_172 << 16)) >= uint(temp_130) ? -1 : 0));
    temp_174 = (temp_130 & 0xFFFF) * (int(uint(temp_173) >> 16)) & 0xFFFF | temp_173 << 16;
    temp_175 = temp_131 ? temp_168 + ((int(uint(temp_130) >> 16)) * (int(uint(temp_174) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_173 & 0xFFFF) + (temp_174 << 16) : -1;
    temp_176 = temp_175 & 3;
    temp_177 = temp_176 + -1;
    temp_178 = temp_175 + (temp_175 >> 31 & 3) >> 2 << 4;
    temp_179 = uint(temp_178 + 0x120) >> 2;
    temp_180 = _sysEmitterStaticUniformBlock.data[int(temp_179 >> 2)][int(temp_179) & 3];
    temp_181 = int(temp_179) + 1;
    temp_182 = _sysEmitterStaticUniformBlock.data[int(uint(temp_181) >> 2)][temp_181 & 3];
    temp_183 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_184 = 0 - abs(0 - (temp_177 > 0 ? -1 : 0) + 0 - (temp_177 >= 0 ? 0 : 1)) + 1;
    temp_185 = uint(temp_178 + 0x128) >> 2;
    temp_186 = _sysEmitterStaticUniformBlock.data[int(temp_185 >> 2)][int(temp_185) & 3];
    temp_187 = int(temp_185) + 1;
    temp_188 = _sysEmitterStaticUniformBlock.data[int(uint(temp_187) >> 2)][temp_187 & 3];
    temp_189 = temp_176 + -2;
    temp_190 = 0;
    if (temp_134)
    {
        temp_190 = 1;
    }
    temp_191 = temp_190 == 1;
    temp_192 = (floatBitsToInt(temp_182) & 0xFFFF) * (int(uint(temp_184) >> 16)) & 0xFFFF | temp_184 << 16;
    temp_193 = temp_176 + -3;
    temp_194 = floatBitsToInt(1.0 / float(uint(temp_183))) + -2;
    temp_195 = 0 - abs(0 - (temp_176 > 0 ? -1 : 0) + 0 - (temp_176 >= 0 ? 0 : 1)) + 1;
    temp_196 = max(sqrt(fma(temp_50 + 0.0 - _sysViewUniformBlock.data[17].z, temp_50 + 0.0 - _sysViewUniformBlock.data[17].z, fma(temp_47 + 0.0 - _sysViewUniformBlock.data[17].y, temp_47 + 0.0 - _sysViewUniformBlock.data[17].y, (temp_49 + 0.0 - _sysViewUniformBlock.data[17].x) * (temp_49 + 0.0 - _sysViewUniformBlock.data[17].x)))), _sysEmitterStaticUniformBlock.data[116].y) * (1.0 / _sysEmitterStaticUniformBlock.data[116].y);
    temp_197 = temp_10;
    temp_198 = temp_37;
    temp_199 = temp_10;
    temp_200 = temp_37;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_17 = 0.0 - temp_15 + -0.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_37 > 0.5) ? -1 : 0)) != 0))
    {
        temp_18 = 0.0 - temp_16 + -0.0;
    }
    if (temp_191)
    {
        temp_197 = temp_37;
    }
    temp_201 = temp_197;
    temp_202 = temp_197;
    if (temp_191)
    {
        temp_198 = temp_38;
    }
    temp_203 = temp_198;
    temp_204 = temp_198;
    if (temp_191)
    {
        temp_199 = temp_37;
    }
    temp_205 = (floatBitsToInt(temp_180) & 0xFFFF) * (int(uint(temp_195) >> 16)) & 0xFFFF | temp_195 << 16;
    temp_206 = temp_199;
    temp_207 = temp_199;
    if (temp_191)
    {
        temp_200 = temp_38;
    }
    temp_208 = temp_200;
    if (!temp_191)
    {
        temp_209 = temp_190 == 2;
        if (temp_209)
        {
            temp_201 = temp_38;
        }
        temp_202 = temp_201;
        if (temp_209)
        {
            temp_203 = temp_10;
        }
        temp_204 = temp_203;
        if (temp_209)
        {
            temp_206 = temp_10;
        }
        temp_207 = temp_206;
        if (temp_209)
        {
            temp_208 = temp_37;
        }
    }
    temp_210 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_108, _sysViewUniformBlock.data[0].z, fma(temp_107, _sysViewUniformBlock.data[0].y, temp_104 * _sysViewUniformBlock.data[0].x)));
    temp_211 = uint(max(trunc(float(0u) * intBitsToFloat(temp_194)), 0.0));
    temp_212 = 0 - abs(0 - (temp_189 > 0 ? -1 : 0) + 0 - (temp_189 >= 0 ? 0 : 1)) + 1;
    temp_213 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_214 = fma(0.0 - temp_47 + temp_116, temp_196, temp_47);
    temp_215 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_108, _sysViewUniformBlock.data[1].z, fma(temp_107, _sysViewUniformBlock.data[1].y, temp_104 * _sysViewUniformBlock.data[1].x)));
    temp_216 = (floatBitsToInt(temp_186) & 0xFFFF) * (int(uint(temp_212) >> 16)) & 0xFFFF | temp_212 << 16;
    temp_217 = floatBitsToInt(1.0 / float(uint(abs(temp_183)))) + -2;
    temp_218 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_108, _sysViewUniformBlock.data[2].z, fma(temp_107, _sysViewUniformBlock.data[2].y, temp_104 * _sysViewUniformBlock.data[2].x)));
    temp_219 = (temp_183 & 0xFFFF) * (int(temp_211 >> 16)) & 0xFFFF | int(temp_211) << 16;
    temp_220 = fma(0.0 - temp_50 + temp_117, temp_196, temp_50);
    temp_221 = 0 - abs(0 - (temp_193 > 0 ? -1 : 0) + 0 - (temp_193 >= 0 ? 0 : 1)) + 1;
    temp_222 = fma(0.0 - temp_49 + temp_118, temp_196, temp_49);
    temp_223 = uint(max(trunc(intBitsToFloat(temp_217) * float(0u)), 0.0));
    temp_224 = inversesqrt(fma(temp_218, temp_218, fma(temp_215, temp_215, temp_210 * temp_210)));
    temp_225 = (temp_221 & 0xFFFF) * (int(floatBitsToUint(temp_188) >> 16)) & 0xFFFF | floatBitsToInt(temp_188) << 16;
    temp_226 = ((int(uint(temp_221) >> 16)) * (int(uint(temp_225) >> 16)) << 16) + (temp_221 & 0xFFFF) * (floatBitsToInt(temp_188) & 0xFFFF) + ((int(floatBitsToUint(temp_186) >> 16)) * (int(uint(temp_216) >> 16)) << 16) + (floatBitsToInt(temp_186) & 0xFFFF) * (temp_212 & 0xFFFF) + ((int(floatBitsToUint(temp_180) >> 16)) * (int(uint(temp_205) >> 16)) << 16) + (floatBitsToInt(temp_180) & 0xFFFF) * (temp_195 & 0xFFFF) + ((int(floatBitsToUint(temp_182) >> 16)) * (int(uint(temp_192) >> 16)) << 16) + (floatBitsToInt(temp_182) & 0xFFFF) * (temp_184 & 0xFFFF) + (temp_192 << 16) + (temp_205 << 16) + (temp_216 << 16) + (temp_225 << 16);
    temp_227 = (abs(temp_183) & 0xFFFF) * (int(temp_223 >> 16)) & 0xFFFF | int(temp_223) << 16;
    temp_228 = temp_210 * temp_224;
    temp_229 = temp_215 * temp_224;
    temp_230 = fma(temp_220, _sysViewUniformBlock.data[0].z, fma(temp_214, _sysViewUniformBlock.data[0].y, temp_222 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_231 = fma(temp_220, _sysViewUniformBlock.data[1].z, fma(temp_214, _sysViewUniformBlock.data[1].y, temp_222 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_232 = floatBitsToInt(1.0 / float(uint(temp_213))) + -2;
    temp_233 = floatBitsToInt(1.0 / float(uint(abs(temp_213)))) + -2;
    temp_234 = fma(temp_220, _sysViewUniformBlock.data[2].z, fma(temp_214, _sysViewUniformBlock.data[2].y, temp_222 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_235 = uint(max(trunc(intBitsToFloat(temp_232) * float(uint(temp_226))), 0.0));
    temp_236 = uint(max(trunc(intBitsToFloat(temp_233) * float(uint(abs(temp_226)))), 0.0));
    temp_237 = inversesqrt(fma(temp_234, temp_234, fma(temp_231, temp_231, temp_230 * temp_230)));
    temp_238 = (temp_213 & 0xFFFF) * (int(temp_235 >> 16)) & 0xFFFF | int(temp_235) << 16;
    temp_239 = (abs(temp_213) & 0xFFFF) * (int(temp_236 >> 16)) & 0xFFFF | int(temp_236) << 16;
    temp_240 = temp_230 * temp_237;
    temp_241 = temp_231 * temp_237;
    temp_242 = temp_234 * temp_237;
    temp_243 = clamp(max(temp_218 * temp_224, 0.2) + -0.0, 0.0, 1.0);
    temp_244 = int(temp_223) + int(uint(max(trunc(intBitsToFloat(temp_217) * float(uint(0 - ((int(uint(abs(temp_183)) >> 16)) * (int(uint(temp_227) >> 16)) << 16) + (abs(temp_183) & 0xFFFF) * (int(temp_223) & 0xFFFF) + (temp_227 << 16)))), 0.0)));
    temp_245 = int(temp_211) + int(uint(max(trunc(intBitsToFloat(temp_194) * float(uint(0 - ((int(uint(temp_183) >> 16)) * (int(uint(temp_219) >> 16)) << 16) + (temp_183 & 0xFFFF) * (int(temp_211) & 0xFFFF) + (temp_219 << 16)))), 0.0)));
    temp_246 = temp_234 + _sysEmitterStaticUniformBlock.data[13].z;
    temp_247 = fma(temp_242, temp_243, fma(temp_229, temp_241, temp_228 * temp_240));
    temp_248 = (abs(temp_183) & 0xFFFF) * (int(uint(temp_244) >> 16)) & 0xFFFF | temp_244 << 16;
    temp_249 = fma(temp_228 * temp_247, -2.0, temp_240);
    temp_250 = fma(temp_229 * temp_247, -2.0, temp_241);
    temp_251 = int(temp_235) + int(uint(max(trunc(intBitsToFloat(temp_232) * float(uint(temp_226 + 0 - ((int(uint(temp_213) >> 16)) * (int(uint(temp_238) >> 16)) << 16) + (temp_213 & 0xFFFF) * (int(temp_235) & 0xFFFF) + (temp_238 << 16)))), 0.0)));
    temp_252 = int(temp_236) + int(uint(max(trunc(intBitsToFloat(temp_233) * float(uint(abs(temp_226) + 0 - ((int(uint(abs(temp_213)) >> 16)) * (int(uint(temp_239) >> 16)) << 16) + (abs(temp_213) & 0xFFFF) * (int(temp_236) & 0xFFFF) + (temp_239 << 16)))), 0.0)));
    temp_253 = (temp_213 & 0xFFFF) * (int(uint(temp_251) >> 16)) & 0xFFFF | temp_251 << 16;
    temp_254 = (temp_183 & 0xFFFF) * (int(uint(temp_245) >> 16)) & 0xFFFF | temp_245 << 16;
    temp_255 = (abs(temp_213) & 0xFFFF) * (int(uint(temp_252) >> 16)) & 0xFFFF | temp_252 << 16;
    temp_256 = fma(temp_220, _sysViewUniformBlock.data[3].z, fma(temp_214, _sysViewUniformBlock.data[3].y, temp_222 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_257 = 1.0 / (sqrt(fma(fma(temp_243 * temp_247, -2.0, temp_242) + 1.0, fma(temp_243 * temp_247, -2.0, temp_242) + 1.0, fma(0.0 + temp_250, 0.0 + temp_250, (0.0 + temp_249) * (0.0 + temp_249)))) * 2.0);
    temp_258 = 0 - temp_245 + ((uint(0 - ((int(uint(temp_183) >> 16)) * (int(uint(temp_254) >> 16)) << 16) + (temp_183 & 0xFFFF) * (temp_245 & 0xFFFF) + (temp_254 << 16)) >= uint(temp_183) ? -1 : 0));
    temp_259 = 0 - temp_251 + ((uint(temp_226 + 0 - ((int(uint(temp_213) >> 16)) * (int(uint(temp_253) >> 16)) << 16) + (temp_213 & 0xFFFF) * (temp_251 & 0xFFFF) + (temp_253 << 16)) >= uint(temp_213) ? -1 : 0));
    temp_260 = 0 - int(uint(temp_183) >> 31);
    temp_261 = (temp_183 & 0xFFFF) * (int(uint(temp_258) >> 16)) & 0xFFFF | temp_258 << 16;
    temp_262 = 0 - int((uint(temp_226 ^ temp_213)) >> 31);
    temp_263 = (temp_213 & 0xFFFF) * (int(uint(temp_259) >> 16)) & 0xFFFF | temp_259 << 16;
    temp_264 = fma(temp_249, temp_257, 0.5);
    temp_265 = fma(temp_250, 0.0 - temp_257, 0.5);
    temp_266 = temp_264;
    temp_267 = temp_265;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_38 > 0.5) ? -1 : 0)) != 0))
    {
        temp_266 = 0.0 - temp_264 + -0.0;
    }
    temp_268 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_269 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_270 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_267 = 0.0 - temp_265 + -0.0;
    }
    temp_271 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_272 = fma(temp_220, _sysViewUniformBlock.data[11].z, fma(temp_214, _sysViewUniformBlock.data[11].y, temp_222 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    gl_Position.x = fma(temp_220, _sysViewUniformBlock.data[8].z, fma(temp_214, _sysViewUniformBlock.data[8].y, temp_222 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_220, _sysViewUniformBlock.data[9].z, fma(temp_214, _sysViewUniformBlock.data[9].y, temp_222 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = temp_272 * fma(temp_256, _sysViewUniformBlock.data[6].w, fma(temp_246, _sysViewUniformBlock.data[6].z, fma(temp_231, _sysViewUniformBlock.data[6].y, temp_230 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_256, _sysViewUniformBlock.data[7].w, fma(temp_246, _sysViewUniformBlock.data[7].z, fma(temp_231, _sysViewUniformBlock.data[7].y, temp_230 * _sysViewUniformBlock.data[7].x))));
    gl_Position.w = temp_272;
    out_attr2.x = fma(temp_271, temp_17 + 0.5, fma(float(temp_213 < 0 || !(temp_213 == 0) ? temp_226 + ((int(uint(temp_213) >> 16)) * (int(uint(temp_263) >> 16)) << 16) + (temp_213 & 0xFFFF) * (temp_259 & 0xFFFF) + (temp_263 << 16) : -1), temp_271, fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.0 - fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), 0.0 - temp_17, temp_17);
    out_attr2.y = fma(temp_270, 0.0 - temp_18 + -0.5, 0.0 - fma(temp_270, 0.0 - float(temp_213 < 0 || !(temp_213 == 0) ? 0 - temp_262 + (temp_252 + 0 - (uint(abs(temp_226) + 0 - ((int(uint(abs(temp_213)) >> 16)) * (int(uint(temp_255) >> 16)) << 16) + (abs(temp_213) & 0xFFFF) * (temp_252 & 0xFFFF) + (temp_255 << 16)) >= uint(abs(temp_213)) ? -1 : 0) ^ temp_262) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_37 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_37, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - temp_18, temp_18);
    out_attr2.z = fma(temp_268, temp_266 + 0.5, fma(temp_268, float(temp_183 < 0 || !(temp_183 == 0) ? ((int(uint(temp_183) >> 16)) * (int(uint(temp_261) >> 16)) << 16) + (temp_183 & 0xFFFF) * (temp_258 & 0xFFFF) + (temp_261 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_202 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.0 - fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_207, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), 0.0 - temp_266, temp_266);
    out_attr2.w = fma(temp_269, 0.0 - temp_267 + -0.5, 0.0 - fma(temp_269, 0.0 - float(temp_183 < 0 || !(temp_183 == 0) ? 0 - temp_260 + (temp_244 + 0 - (uint(0 - ((int(uint(abs(temp_183)) >> 16)) * (int(uint(temp_248) >> 16)) << 16) + (abs(temp_183) & 0xFFFF) * (temp_244 & 0xFFFF) + (temp_248 << 16)) >= uint(abs(temp_183)) ? -1 : 0) ^ temp_260) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_204 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_208, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), 0.0 - temp_267, temp_267);
    break;
} while (false);
}
