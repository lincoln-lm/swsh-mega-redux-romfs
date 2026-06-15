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
layout (location = 2) in vec4 sysScaleAttr;
layout (location = 3) in vec4 sysRandomAttr;
layout (location = 4) in vec4 sysInitRotateAttr;
layout (location = 5) in vec4 sysEmtMat0Attr;
layout (location = 6) in vec4 sysEmtMat1Attr;
layout (location = 7) in vec4 sysEmtMat2Attr;

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
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    bool temp_30;
    bool temp_31;
    precise float temp_32;
    bool temp_33;
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
    int temp_59;
    int temp_60;
    int temp_61;
    bool temp_62;
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
    bool temp_92;
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
    precise float temp_189;
    precise float temp_190;
    precise float temp_191;
    precise float temp_192;
    precise float temp_193;
    precise float temp_194;
    precise float temp_195;
    bool temp_196;
    precise float temp_197;
    precise float temp_198;
    precise float temp_199;
    precise float temp_200;
    precise float temp_201;
    precise float temp_202;
    precise float temp_203;
    precise float temp_204;
    precise float temp_205;
    precise float temp_206;
    precise float temp_207;
    precise float temp_208;
    precise float temp_209;
    precise float temp_210;
    precise float temp_211;
    precise float temp_212;
    precise float temp_213;
    int temp_214;
    int temp_215;
    precise float temp_216;
    precise float temp_217;
    bool temp_218;
    int temp_219;
    int temp_220;
    uint temp_221;
    int temp_222;
    int temp_223;
    int temp_224;
    precise float temp_225;
    int temp_226;
    int temp_227;
    int temp_228;
    int temp_229;
    int temp_230;
    int temp_231;
    int temp_232;
    int temp_233;
    precise float temp_234;
    int temp_235;
    int temp_236;
    int temp_237;
    int temp_238;
    int temp_239;
    int temp_240;
    int temp_241;
    int temp_242;
    int temp_243;
    int temp_244;
    int temp_245;
    int temp_246;
    int temp_247;
    int temp_248;
    int temp_249;
    int temp_250;
    int temp_251;
    int temp_252;
    int temp_253;
    uint temp_254;
    int temp_255;
    int temp_256;
    int temp_257;
    int temp_258;
    int temp_259;
    int temp_260;
    int temp_261;
    int temp_262;
    int temp_263;
    int temp_264;
    uint temp_265;
    precise float temp_266;
    int temp_267;
    precise float temp_268;
    uint temp_269;
    precise float temp_270;
    int temp_271;
    precise float temp_272;
    int temp_273;
    int temp_274;
    int temp_275;
    int temp_276;
    int temp_277;
    int temp_278;
    int temp_279;
    int temp_280;
    int temp_281;
    int temp_282;
    int temp_283;
    int temp_284;
    int temp_285;
    precise float temp_286;
    uint temp_287;
    uint temp_288;
    int temp_289;
    precise float temp_290;
    int temp_291;
    precise float temp_292;
    precise float temp_293;
    bool temp_294;
    int temp_295;
    precise float temp_296;
    precise float temp_297;
    precise float temp_298;
    int temp_299;
    int temp_300;
    int temp_301;
    precise float temp_302;
    precise float temp_303;
    precise float temp_304;
    precise float temp_305;
    precise float temp_306;
    int temp_307;
    uint temp_308;
    int temp_309;
    precise float temp_310;
    uint temp_311;
    int temp_312;
    int temp_313;
    precise float temp_314;
    int temp_315;
    precise float temp_316;
    precise float temp_317;
    precise float temp_318;
    precise float temp_319;
    precise float temp_320;
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
    temp_9 = sysEmtMat0Attr.x;
    temp_10 = sysEmtMat0Attr.y;
    temp_11 = sysEmtMat0Attr.z;
    temp_12 = sysEmtMat1Attr.x;
    temp_13 = sysEmtMat1Attr.y;
    temp_14 = sysEmtMat1Attr.z;
    temp_15 = sysEmtMat2Attr.x;
    temp_16 = sysEmtMat2Attr.y;
    temp_17 = sysEmtMat2Attr.z;
    temp_18 = intBitsToFloat(gl_VertexID);
    temp_19 = sysRandomAttr.x;
    temp_20 = fma(temp_15, temp_15, fma(temp_12, temp_12, temp_9 * temp_9));
    temp_21 = fma(temp_16, temp_16, fma(temp_13, temp_13, temp_10 * temp_10));
    temp_22 = fma(temp_17, temp_17, fma(temp_14, temp_14, temp_11 * temp_11));
    temp_23 = sqrt(temp_20) > 0.0;
    temp_24 = sqrt(temp_21) > 0.0;
    temp_25 = intBitsToFloat(undef);
    temp_26 = temp_21;
    temp_27 = temp_22;
    if (temp_23)
    {
        temp_25 = inversesqrt(temp_20);
    }
    temp_28 = temp_25;
    if (!temp_23)
    {
        temp_28 = 0.0;
    }
    temp_29 = temp_28;
    if (temp_24)
    {
        temp_26 = inversesqrt(temp_21);
    }
    temp_30 = (floatBitsToInt(temp_18) & 1) != 0;
    temp_31 = (floatBitsToInt(temp_18) & 2) != 0;
    temp_32 = intBitsToFloat(undef);
    if (!temp_23)
    {
        temp_32 = 0.0;
    }
    temp_33 = sqrt(temp_22) > 0.0;
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_32;
    if (!temp_23)
    {
        temp_34 = 0.0;
    }
    temp_36 = intBitsToFloat(undef);
    temp_37 = temp_34;
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
    temp_40 = intBitsToFloat(undef);
    temp_41 = temp_38;
    if (!temp_24)
    {
        temp_40 = 0.0;
    }
    temp_42 = temp_40;
    if (temp_33)
    {
        temp_27 = inversesqrt(temp_22);
    }
    if (temp_23)
    {
        temp_37 = temp_28 * temp_9;
    }
    if (temp_23)
    {
        temp_35 = temp_28 * temp_12;
    }
    temp_43 = intBitsToFloat(undef);
    if (temp_30)
    {
        temp_43 = 0.5;
    }
    temp_44 = intBitsToFloat(undef);
    temp_45 = temp_43;
    if (temp_31)
    {
        temp_44 = 0.5;
    }
    temp_46 = temp_44;
    if (!temp_30)
    {
        temp_45 = -0.5;
    }
    temp_47 = temp_45;
    if (!temp_31)
    {
        temp_46 = -0.5;
    }
    temp_48 = temp_46;
    if (temp_23)
    {
        temp_29 = temp_28 * temp_15;
    }
    if (temp_24)
    {
        temp_42 = temp_26 * temp_10;
    }
    if (temp_24)
    {
        temp_41 = temp_26 * temp_13;
    }
    if (temp_24)
    {
        temp_39 = temp_26 * temp_16;
    }
    temp_49 = intBitsToFloat(undef);
    if (!temp_33)
    {
        temp_49 = 0.0;
    }
    temp_50 = intBitsToFloat(undef);
    temp_51 = temp_49;
    if (!temp_33)
    {
        temp_50 = 0.0;
    }
    temp_52 = intBitsToFloat(undef);
    temp_53 = temp_50;
    if (temp_33)
    {
        temp_52 = temp_27 * temp_11;
    }
    temp_54 = temp_52;
    if (temp_33)
    {
        temp_53 = temp_27 * temp_14;
    }
    if (temp_33)
    {
        temp_51 = temp_27 * temp_17;
    }
    if (!temp_33)
    {
        temp_54 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_55 = fma(temp_19 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_56 = temp_55 + 0.0 - floor(temp_55);
    }
    else
    {
        temp_56 = temp_5 * (1.0 / temp_6);
    }
    temp_57 = sysRandomAttr.y;
    temp_58 = sysRandomAttr.z;
    temp_59 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_60 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_61 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_62 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_63 = floor(temp_19 * 2.0);
    temp_64 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_65 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_66 = floor(temp_57 * 2.0);
    temp_67 = _sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_68 = 1.0 / temp_67;
    temp_69 = floor(temp_58 * 2.0);
    temp_70 = temp_56 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_71 = temp_67;
    temp_72 = temp_63;
    if (temp_62)
    {
        temp_71 = temp_65 * temp_65;
    }
    temp_73 = (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_68;
    temp_74 = temp_56 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_75 = temp_71;
    temp_76 = temp_73;
    if (temp_62)
    {
        temp_75 = temp_71 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_62)
    {
        temp_76 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_77 = intBitsToFloat(undef);
    temp_78 = temp_76;
    if (temp_62)
    {
        temp_77 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_79 = temp_77;
    if (temp_62)
    {
        temp_72 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_80 = temp_72;
    if (!temp_62)
    {
        temp_81 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_82 = (temp_65 + 0.0 - fma(temp_81, exp2(temp_65 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_81)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_78 = temp_82 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_80 = temp_82 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_79 = temp_82 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_83 = sysScaleAttr.w;
    temp_84 = sysLocalVecAttr.x;
    temp_85 = sysLocalVecAttr.y;
    temp_86 = sysLocalVecAttr.z;
    temp_87 = temp_56 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_88 = temp_56 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_89 = fma(temp_19 + temp_57, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x;
    temp_90 = fma(temp_87, 0.0 - temp_88, temp_87);
    temp_91 = fma(temp_79, temp_29, fma(temp_80, temp_37, temp_78 * temp_35));
    temp_92 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_93 = intBitsToFloat(undef);
    temp_94 = temp_89;
    temp_95 = temp_91;
    if (temp_62)
    {
        temp_93 = temp_65;
    }
    temp_96 = fma(temp_89, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_97 = fma(fma(temp_57 + temp_58, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_98 = fma(fma(temp_19 + temp_58, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_99 = temp_93;
    if (!temp_62)
    {
        temp_100 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_99 = fma(exp2(temp_65 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_100, temp_100);
    }
    temp_101 = fma(temp_99, temp_84, temp_91);
    temp_102 = fma(temp_99, temp_85, fma(temp_79, temp_39, fma(temp_80, temp_42, temp_78 * temp_41)));
    temp_103 = fma(temp_99, temp_86, fma(temp_79, temp_51, fma(temp_80, temp_54, temp_78 * temp_53)));
    if (!temp_92)
    {
        temp_94 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_104 = temp_56 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_105 = temp_94;
    if (!temp_92)
    {
        temp_105 = 1.0 / temp_94;
    }
    temp_106 = fma(temp_101, temp_83, sysLocalPosAttr.x);
    temp_107 = fma(temp_102, temp_83, sysLocalPosAttr.y);
    temp_108 = fma(temp_103, temp_83, sysLocalPosAttr.z);
    temp_109 = sysInitRotateAttr.x;
    temp_110 = sysInitRotateAttr.y;
    temp_111 = sysInitRotateAttr.z;
    temp_112 = fma(temp_88, 0.0 - temp_104, temp_88);
    temp_113 = (0.0 - temp_66 < 0.0 ? 1.0 : 0.0 + (temp_66 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_60 > 0 ? -1 : 0) + 0 - temp_60 >= 0 ? 0 : 1));
    temp_114 = fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_64, temp_74, _sysEmitterStaticUniformBlock.data[97].y), temp_112, fma(fma(temp_70, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_68, _sysEmitterStaticUniformBlock.data[96].y), temp_90, fma(temp_87, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)));
    temp_115 = (0.0 - temp_63 < 0.0 ? 1.0 : 0.0 + (temp_63 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_59 > 0 ? -1 : 0) + 0 - temp_59 >= 0 ? 0 : 1));
    temp_116 = (0.0 - temp_69 < 0.0 ? 1.0 : 0.0 + (temp_69 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_61 > 0 ? -1 : 0) + 0 - temp_61 >= 0 ? 0 : 1));
    temp_117 = temp_105;
    temp_118 = temp_114;
    if (temp_92)
    {
        temp_95 = temp_5;
    }
    temp_119 = fma(temp_108, temp_11, fma(temp_107, temp_10, temp_106 * temp_9)) + sysEmtMat0Attr.w;
    temp_120 = fma(temp_108, temp_14, fma(temp_107, temp_13, temp_106 * temp_12)) + sysEmtMat1Attr.w;
    temp_121 = fma(temp_108, temp_17, fma(temp_107, temp_16, temp_106 * temp_15)) + sysEmtMat2Attr.w;
    temp_122 = 0.0 - temp_119 + _sysViewUniformBlock.data[17].x;
    temp_123 = 0.0 - temp_120 + _sysViewUniformBlock.data[17].y;
    temp_124 = 0.0 - temp_121 + _sysViewUniformBlock.data[17].z;
    temp_125 = temp_95;
    if (!temp_92)
    {
        temp_125 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_105, temp_105);
    }
    temp_126 = inversesqrt(fma(temp_124, temp_124, fma(temp_123, temp_123, temp_122 * temp_122)));
    temp_127 = fma(fma(temp_98 * temp_115, -2.0, temp_98), temp_125, fma(temp_58 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_115 * temp_111, -2.0, temp_111)));
    temp_128 = fma(fma(temp_96 * temp_113, -2.0, temp_96), temp_125, fma(temp_19 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_113 * temp_109, -2.0, temp_109)));
    temp_129 = fma(fma(temp_97 * temp_116, -2.0, temp_97), temp_125, fma(temp_57 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_116 * temp_110, -2.0, temp_110)));
    temp_130 = temp_124 * temp_126;
    temp_131 = temp_122 * temp_126;
    temp_132 = temp_123 * temp_126;
    temp_133 = (clamp(min(0.0, temp_19) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_104, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_64, temp_74, _sysEmitterStaticUniformBlock.data[97].x), temp_112, fma(fma(temp_70, temp_73, _sysEmitterStaticUniformBlock.data[96].x), temp_90, fma(temp_87, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_45);
    temp_134 = fma(temp_132, 0.0 - _sysViewUniformBlock.data[1].z, 0.0 - temp_130 * 0.0 - _sysViewUniformBlock.data[1].y);
    temp_135 = fma(temp_130, 0.0 - _sysViewUniformBlock.data[1].x, 0.0 - temp_131 * 0.0 - _sysViewUniformBlock.data[1].z);
    temp_136 = fma(temp_131, 0.0 - _sysViewUniformBlock.data[1].y, 0.0 - temp_132 * 0.0 - _sysViewUniformBlock.data[1].x);
    temp_137 = fma(temp_104, _sysEmitterStaticUniformBlock.data[98].y, temp_114) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_46);
    temp_138 = sin(temp_128) * cos(temp_129);
    temp_139 = temp_138;
    temp_140 = cos(temp_127);
    if (temp_62)
    {
        temp_139 = temp_5 * temp_5;
    }
    temp_141 = inversesqrt(fma(temp_136, temp_136, fma(temp_135, temp_135, temp_134 * temp_134)));
    temp_142 = temp_139;
    if (temp_62)
    {
        temp_142 = temp_139 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_143 = fma(temp_133, fma(sin(temp_127), temp_138, 0.0 - cos(temp_128) * sin(temp_129)), temp_137 * sin(temp_128) * cos(temp_127));
    temp_144 = temp_143;
    if (temp_62)
    {
        temp_140 = temp_142 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_145 = temp_140;
    if (temp_62)
    {
        temp_117 = temp_142 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_146 = temp_117;
    if (temp_62)
    {
        temp_118 = temp_142 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_147 = temp_134 * temp_141;
    temp_148 = temp_135 * temp_141;
    temp_149 = temp_136 * temp_141;
    temp_150 = temp_118;
    if (!temp_62)
    {
        temp_151 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_152 = (temp_5 + 0.0 - fma(temp_151, exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_151)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_145 = temp_152 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_150 = temp_152 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_146 = temp_152 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_153 = 0.0 + fma(temp_133, cos(temp_127) * cos(temp_129), temp_137 * 0.0 - sin(temp_127));
    temp_154 = 0.0 + fma(temp_133, fma(sin(temp_127), cos(temp_128) * cos(temp_129), sin(temp_128) * sin(temp_129)), temp_137 * cos(temp_127) * cos(temp_128));
    temp_155 = 0.0 + temp_143;
    temp_156 = fma(temp_131, temp_155, fma(fma(temp_132, temp_149, 0.0 - temp_130 * temp_148), temp_154, temp_147 * temp_153));
    temp_157 = fma(temp_146, temp_39, fma(temp_150, temp_42, temp_145 * temp_41));
    temp_158 = 0.0 + temp_156;
    temp_159 = temp_155;
    temp_160 = temp_157;
    temp_161 = temp_145;
    temp_162 = temp_156;
    if (temp_62)
    {
        temp_144 = temp_5;
    }
    temp_163 = temp_144;
    if (!temp_62)
    {
        temp_164 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_163 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_164, temp_164);
    }
    temp_165 = 0.0 + fma(temp_132, temp_155, fma(fma(temp_130, temp_147, 0.0 - temp_131 * temp_149), temp_154, temp_148 * temp_153));
    temp_166 = fma(temp_163, temp_84, fma(temp_146, temp_29, fma(temp_150, temp_37, temp_145 * temp_35)));
    temp_167 = fma(temp_163, temp_85, temp_157);
    temp_168 = fma(temp_163, temp_86, fma(temp_146, temp_51, fma(temp_150, temp_54, temp_145 * temp_53)));
    if (temp_5 < 0.001)
    {
        temp_169 = inversesqrt(fma(temp_86, temp_86, fma(temp_85, temp_85, temp_84 * temp_84)));
        temp_166 = fma(temp_169 * temp_84, -0.001, temp_101);
        temp_167 = fma(temp_169 * temp_85, -0.001, temp_102);
        temp_168 = fma(temp_169 * temp_86, -0.001, temp_103);
    }
    temp_170 = 0.0 + fma(temp_130, temp_155, fma(fma(temp_131, temp_148, 0.0 - temp_132 * temp_147), temp_154, temp_149 * temp_153));
    temp_171 = temp_101 + 0.0 - temp_166;
    temp_172 = temp_102 + 0.0 - temp_167;
    temp_173 = temp_103 + 0.0 - temp_168;
    temp_174 = fma(temp_170, temp_170, fma(temp_165, temp_165, temp_158 * temp_158));
    temp_175 = temp_120 + temp_165;
    temp_176 = 0.0 + fma(temp_173, temp_17, fma(temp_172, temp_16, temp_171 * temp_15));
    temp_177 = temp_121 + temp_170;
    temp_178 = 0.0 + fma(temp_173, temp_14, fma(temp_172, temp_13, temp_171 * temp_12));
    temp_179 = 0.0 + fma(temp_173, temp_11, fma(temp_172, temp_10, temp_171 * temp_9));
    temp_180 = temp_119 + temp_158;
    temp_181 = sqrt(temp_174);
    temp_182 = temp_178;
    temp_183 = temp_179;
    temp_184 = temp_178;
    temp_185 = temp_180;
    temp_186 = temp_175;
    temp_187 = temp_177;
    if (sqrt(temp_174) > 0.0)
    {
        temp_188 = 0.0 < _sysEmitterDynamicUniformBlock.data[2].w;
        if (temp_188)
        {
            temp_159 = _sysEmitterDynamicUniformBlock.data[2].w;
        }
        if (temp_188)
        {
            temp_181 = 1.0 / temp_159;
        }
        if (temp_188)
        {
            temp_160 = temp_179 * temp_181;
        }
        temp_189 = temp_160;
        temp_190 = temp_160;
        if (temp_188)
        {
            temp_161 = temp_178 * temp_181;
        }
        temp_191 = temp_161;
        temp_192 = temp_161;
        if (temp_188)
        {
            temp_162 = temp_176 * temp_181;
        }
        temp_193 = temp_162;
        temp_194 = temp_176;
        temp_195 = temp_162;
        if (!temp_188)
        {
            temp_196 = 1.0 == _sysEmitterStaticUniformBlock.data[12].x;
            temp_197 = temp_5 + 1.0;
            temp_198 = temp_197;
            if (temp_196)
            {
                temp_189 = temp_197 * temp_197;
            }
            temp_199 = temp_189;
            if (temp_196)
            {
                temp_199 = temp_189 * _sysEmitterStaticUniformBlock.data[11].w;
            }
            if (temp_196)
            {
                temp_191 = temp_199 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
            }
            temp_200 = temp_191;
            if (temp_196)
            {
                temp_193 = temp_199 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
            }
            temp_201 = temp_193;
            if (temp_196)
            {
                temp_182 = temp_199 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
            }
            temp_202 = temp_182;
            if (!temp_196)
            {
                temp_203 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
                temp_204 = (temp_197 + 0.0 - fma(temp_203, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_197), 0.0 - temp_203)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
                temp_200 = temp_204 * _sysEmitterStaticUniformBlock.data[11].y;
                temp_202 = temp_204 * _sysEmitterStaticUniformBlock.data[11].x;
                temp_201 = temp_204 * _sysEmitterStaticUniformBlock.data[11].z;
            }
            if (!temp_62)
            {
                temp_205 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
                temp_198 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_197), 0.0 - temp_205, temp_205);
            }
            temp_206 = fma(temp_198, temp_84, fma(temp_201, temp_29, fma(temp_202, temp_37, temp_200 * temp_35))) + 0.0 - temp_166;
            temp_207 = fma(temp_198, temp_85, fma(temp_201, temp_39, fma(temp_202, temp_42, temp_200 * temp_41))) + 0.0 - temp_167;
            temp_208 = fma(temp_198, temp_86, fma(temp_201, temp_51, fma(temp_202, temp_54, temp_200 * temp_53))) + 0.0 - temp_168;
            temp_209 = 0.0 + fma(temp_208, temp_17, fma(temp_207, temp_16, temp_206 * temp_15));
            temp_210 = 0.0 + fma(temp_208, temp_11, fma(temp_207, temp_10, temp_206 * temp_9));
            temp_211 = 0.0 + fma(temp_208, temp_14, fma(temp_207, temp_13, temp_206 * temp_12));
            temp_183 = temp_210;
            temp_184 = temp_211;
            temp_194 = temp_209;
            temp_190 = temp_210;
            temp_192 = temp_211;
            temp_195 = temp_209;
        }
        temp_212 = fma(temp_194, temp_194, fma(temp_184, temp_184, temp_183 * temp_183));
        if (sqrt(temp_212) > 0.0)
        {
            temp_213 = fma(temp_170 * inversesqrt(temp_174), inversesqrt(temp_212) * temp_194, fma(temp_165 * inversesqrt(temp_174), inversesqrt(temp_212) * temp_184, temp_158 * inversesqrt(temp_174) * inversesqrt(temp_212) * temp_183));
            temp_185 = fma(temp_213, temp_190 * _sysEmitterStaticUniformBlock.data[95].x, temp_180);
            temp_186 = fma(temp_213, temp_192 * _sysEmitterStaticUniformBlock.data[95].x, temp_175);
            temp_187 = fma(temp_213, temp_195 * _sysEmitterStaticUniformBlock.data[95].x, temp_177);
        }
    }
    temp_214 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 32;
    temp_215 = int(trunc(_sysEmitterStaticUniformBlock.data[17].x));
    temp_216 = 0.0 - temp_119 + temp_185;
    temp_217 = 0.0 - temp_120 + temp_186;
    temp_218 = temp_215 < 0 || !(temp_215 == 0);
    temp_219 = floatBitsToInt(1.0 / float(uint(temp_215))) + -2;
    temp_220 = int(trunc(temp_5 * (1.0 / float(int(trunc(_sysEmitterStaticUniformBlock.data[17].y))))));
    temp_221 = uint(max(trunc(intBitsToFloat(temp_219) * float(uint(temp_220))), 0.0));
    temp_222 = (temp_215 & 0xFFFF) * (int(temp_221 >> 16)) & 0xFFFF | int(temp_221) << 16;
    temp_223 = int(temp_221) + int(uint(max(trunc(intBitsToFloat(temp_219) * float(uint(temp_220 + 0 - ((int(uint(temp_215) >> 16)) * (int(uint(temp_222) >> 16)) << 16) + (temp_215 & 0xFFFF) * (int(temp_221) & 0xFFFF) + (temp_222 << 16)))), 0.0)));
    temp_224 = (temp_215 & 0xFFFF) * (int(uint(temp_223) >> 16)) & 0xFFFF | temp_223 << 16;
    temp_225 = 1.0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_225 = 7.34548998;
    }
    temp_226 = 0 - temp_223 + ((uint(temp_220 + 0 - ((int(uint(temp_215) >> 16)) * (int(uint(temp_224) >> 16)) << 16) + (temp_215 & 0xFFFF) * (temp_223 & 0xFFFF) + (temp_224 << 16)) >= uint(temp_215) ? -1 : 0));
    temp_227 = abs((float(temp_220) >= float(temp_215) ? -1 : 0));
    temp_228 = (temp_215 & 0xFFFF) * (int(uint(temp_226) >> 16)) & 0xFFFF | temp_226 << 16;
    temp_229 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x2000000;
    temp_230 = 0 - temp_227 + 1;
    temp_231 = abs(0 - (temp_229 > 0 ? -1 : 0) + 0 - temp_229 >= 0 ? 0 : 1);
    temp_232 = temp_218 ? temp_220 + ((int(uint(temp_215) >> 16)) * (int(uint(temp_228) >> 16)) << 16) + (temp_215 & 0xFFFF) * (temp_226 & 0xFFFF) + (temp_228 << 16) : -1;
    temp_233 = (temp_230 & 0xFFFF) * (int(uint(temp_232) >> 16)) & 0xFFFF | temp_232 << 16;
    temp_234 = temp_225 * temp_19;
    temp_235 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 16;
    temp_236 = abs(0 - (temp_214 > 0 ? -1 : 0) + 0 - temp_214 >= 0 ? 0 : 1);
    temp_237 = temp_215 + -1;
    temp_238 = (temp_227 & 0xFFFF) * (int(uint(temp_237) >> 16)) & 0xFFFF | temp_237 << 16;
    temp_239 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 64;
    temp_240 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 128;
    temp_241 = int(trunc(temp_5 * float(temp_215) * (1.0 / temp_6)));
    temp_242 = ((int(uint(temp_227) >> 16)) * (int(uint(temp_238) >> 16)) << 16) + (temp_227 & 0xFFFF) * (temp_237 & 0xFFFF) + ((int(uint(temp_230) >> 16)) * (int(uint(temp_233) >> 16)) << 16) + (temp_230 & 0xFFFF) * (temp_232 & 0xFFFF) + (temp_233 << 16) + (temp_238 << 16);
    temp_243 = abs(0 - (temp_235 > 0 ? -1 : 0) + 0 - temp_235 >= 0 ? 0 : 1);
    temp_244 = int(trunc(float(temp_215) * (temp_234 + 0.0 - floor(temp_234))));
    temp_245 = (temp_236 & 0xFFFF) * (int(uint(temp_242) >> 16)) & 0xFFFF | temp_242 << 16;
    temp_246 = abs(0 - (temp_239 > 0 ? -1 : 0) + 0 - temp_239 >= 0 ? 0 : 1);
    temp_247 = (temp_231 & 0xFFFF) * (int(uint(temp_244) >> 16)) & 0xFFFF | temp_244 << 16;
    temp_248 = (temp_243 & 0xFFFF) * (int(uint(temp_241) >> 16)) & 0xFFFF | temp_241 << 16;
    temp_249 = abs(0 - (temp_240 > 0 ? -1 : 0) + 0 - temp_240 >= 0 ? 0 : 1);
    temp_250 = ((int(uint(temp_231) >> 16)) * (int(uint(temp_247) >> 16)) << 16) + (temp_231 & 0xFFFF) * (temp_244 & 0xFFFF) + temp_220 + (temp_247 << 16);
    temp_251 = (temp_246 & 0xFFFF) * (int(uint(temp_250) >> 16)) & 0xFFFF | temp_250 << 16;
    temp_252 = (temp_249 & 0xFFFF) * (int(uint(temp_244) >> 16)) & 0xFFFF | temp_244 << 16;
    temp_253 = ((int(uint(temp_249) >> 16)) * (int(uint(temp_252) >> 16)) << 16) + (temp_249 & 0xFFFF) * (temp_244 & 0xFFFF) + ((int(uint(temp_246) >> 16)) * (int(uint(temp_251) >> 16)) << 16) + (temp_246 & 0xFFFF) * (temp_250 & 0xFFFF) + ((int(uint(temp_243) >> 16)) * (int(uint(temp_248) >> 16)) << 16) + (temp_243 & 0xFFFF) * (temp_241 & 0xFFFF) + ((int(uint(temp_236) >> 16)) * (int(uint(temp_245) >> 16)) << 16) + (temp_236 & 0xFFFF) * (temp_242 & 0xFFFF) + (temp_245 << 16) + (temp_248 << 16) + (temp_251 << 16) + (temp_252 << 16);
    temp_254 = uint(max(trunc(intBitsToFloat(temp_219) * float(uint(temp_253))), 0.0));
    temp_255 = (temp_215 & 0xFFFF) * (int(temp_254 >> 16)) & 0xFFFF | int(temp_254) << 16;
    temp_256 = int(temp_254) + int(uint(max(trunc(intBitsToFloat(temp_219) * float(uint(temp_253 + 0 - ((int(uint(temp_215) >> 16)) * (int(uint(temp_255) >> 16)) << 16) + (temp_215 & 0xFFFF) * (int(temp_254) & 0xFFFF) + (temp_255 << 16)))), 0.0)));
    temp_257 = (temp_215 & 0xFFFF) * (int(uint(temp_256) >> 16)) & 0xFFFF | temp_256 << 16;
    temp_258 = 0 - temp_256 + ((uint(temp_253 + 0 - ((int(uint(temp_215) >> 16)) * (int(uint(temp_257) >> 16)) << 16) + (temp_215 & 0xFFFF) * (temp_256 & 0xFFFF) + (temp_257 << 16)) >= uint(temp_215) ? -1 : 0));
    temp_259 = (temp_215 & 0xFFFF) * (int(uint(temp_258) >> 16)) & 0xFFFF | temp_258 << 16;
    temp_260 = temp_218 ? temp_253 + ((int(uint(temp_215) >> 16)) * (int(uint(temp_259) >> 16)) << 16) + (temp_215 & 0xFFFF) * (temp_258 & 0xFFFF) + (temp_259 << 16) : -1;
    temp_261 = temp_260 & 3;
    temp_262 = temp_261 + -1;
    temp_263 = temp_261 + -2;
    temp_264 = temp_260 + (temp_260 >> 31 & 3) >> 2 << 4;
    temp_265 = uint(temp_264 + 0x120) >> 2;
    temp_266 = _sysEmitterStaticUniformBlock.data[int(temp_265 >> 2)][int(temp_265) & 3];
    temp_267 = int(temp_265) + 1;
    temp_268 = _sysEmitterStaticUniformBlock.data[int(uint(temp_267) >> 2)][temp_267 & 3];
    temp_269 = uint(temp_264 + 0x128) >> 2;
    temp_270 = _sysEmitterStaticUniformBlock.data[int(temp_269 >> 2)][int(temp_269) & 3];
    temp_271 = int(temp_269) + 1;
    temp_272 = _sysEmitterStaticUniformBlock.data[int(uint(temp_271) >> 2)][temp_271 & 3];
    temp_273 = 0 - abs(0 - (temp_262 > 0 ? -1 : 0) + 0 - temp_262 >= 0 ? 0 : 1) + 1;
    temp_274 = (floatBitsToInt(temp_268) & 0xFFFF) * (int(uint(temp_273) >> 16)) & 0xFFFF | temp_273 << 16;
    temp_275 = temp_261 + -3;
    temp_276 = 0 - abs(0 - (temp_261 > 0 ? -1 : 0) + 0 - temp_261 >= 0 ? 0 : 1) + 1;
    temp_277 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_278 = (floatBitsToInt(temp_266) & 0xFFFF) * (int(uint(temp_276) >> 16)) & 0xFFFF | temp_276 << 16;
    temp_279 = 0 - abs(0 - (temp_263 > 0 ? -1 : 0) + 0 - temp_263 >= 0 ? 0 : 1) + 1;
    temp_280 = (floatBitsToInt(temp_270) & 0xFFFF) * (int(uint(temp_279) >> 16)) & 0xFFFF | temp_279 << 16;
    temp_281 = 0 - abs(0 - (temp_275 > 0 ? -1 : 0) + 0 - temp_275 >= 0 ? 0 : 1) + 1;
    temp_282 = floatBitsToInt(1.0 / float(uint(temp_277))) + -2;
    temp_283 = (temp_281 & 0xFFFF) * (int(floatBitsToUint(temp_272) >> 16)) & 0xFFFF | floatBitsToInt(temp_272) << 16;
    temp_284 = ((int(uint(temp_281) >> 16)) * (int(uint(temp_283) >> 16)) << 16) + (temp_281 & 0xFFFF) * (floatBitsToInt(temp_272) & 0xFFFF) + ((int(floatBitsToUint(temp_270) >> 16)) * (int(uint(temp_280) >> 16)) << 16) + (floatBitsToInt(temp_270) & 0xFFFF) * (temp_279 & 0xFFFF) + ((int(floatBitsToUint(temp_266) >> 16)) * (int(uint(temp_278) >> 16)) << 16) + (floatBitsToInt(temp_266) & 0xFFFF) * (temp_276 & 0xFFFF) + ((int(floatBitsToUint(temp_268) >> 16)) * (int(uint(temp_274) >> 16)) << 16) + (floatBitsToInt(temp_268) & 0xFFFF) * (temp_273 & 0xFFFF) + (temp_274 << 16) + (temp_278 << 16) + (temp_280 << 16) + (temp_283 << 16);
    temp_285 = floatBitsToInt(1.0 / float(uint(abs(temp_277)))) + -2;
    temp_286 = intBitsToFloat(temp_285);
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_57 > 0.5) ? -1 : 0)) != 0))
    {
        temp_48 = 0.0 - temp_46 + -0.0;
    }
    temp_287 = uint(max(trunc(intBitsToFloat(temp_282) * float(uint(temp_284))), 0.0));
    temp_288 = uint(max(trunc(intBitsToFloat(temp_285) * float(uint(abs(temp_284)))), 0.0));
    temp_289 = (temp_277 & 0xFFFF) * (int(temp_287 >> 16)) & 0xFFFF | int(temp_287) << 16;
    temp_290 = _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w;
    temp_291 = (abs(temp_277) & 0xFFFF) * (int(temp_288 >> 16)) & 0xFFFF | int(temp_288) << 16;
    temp_292 = sqrt(fma(temp_121 + 0.0 - _sysViewUniformBlock.data[17].z, temp_121 + 0.0 - _sysViewUniformBlock.data[17].z, fma(temp_120 + 0.0 - _sysViewUniformBlock.data[17].y, temp_120 + 0.0 - _sysViewUniformBlock.data[17].y, (temp_119 + 0.0 - _sysViewUniformBlock.data[17].x) * (temp_119 + 0.0 - _sysViewUniformBlock.data[17].x))));
    temp_293 = _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y;
    temp_294 = temp_292 > _sysEmitterStaticUniformBlock.data[116].x;
    temp_295 = int(temp_287) + int(uint(max(trunc(intBitsToFloat(temp_282) * float(uint(temp_284 + 0 - ((int(uint(temp_277) >> 16)) * (int(uint(temp_289) >> 16)) << 16) + (temp_277 & 0xFFFF) * (int(temp_287) & 0xFFFF) + (temp_289 << 16)))), 0.0)));
    temp_296 = temp_290;
    temp_297 = temp_293;
    if (temp_294)
    {
        temp_296 = _sysEmitterStaticUniformBlock.data[116].y;
    }
    temp_298 = temp_296;
    if (temp_294)
    {
        temp_297 = max(temp_292, _sysEmitterStaticUniformBlock.data[116].y);
    }
    if (temp_294)
    {
        temp_298 = 1.0 / temp_296;
    }
    temp_299 = int(temp_288) + int(uint(max(trunc(intBitsToFloat(temp_285) * float(uint(abs(temp_284) + 0 - ((int(uint(abs(temp_277)) >> 16)) * (int(uint(temp_291) >> 16)) << 16) + (abs(temp_277) & 0xFFFF) * (int(temp_288) & 0xFFFF) + (temp_291 << 16)))), 0.0)));
    temp_300 = (temp_277 & 0xFFFF) * (int(uint(temp_295) >> 16)) & 0xFFFF | temp_295 << 16;
    temp_301 = (abs(temp_277) & 0xFFFF) * (int(uint(temp_299) >> 16)) & 0xFFFF | temp_299 << 16;
    temp_302 = min(temp_292, _sysEmitterStaticUniformBlock.data[116].x) * (1.0 / _sysEmitterStaticUniformBlock.data[116].x);
    temp_303 = 0.0 - temp_121 + temp_187;
    if (temp_294)
    {
        temp_286 = temp_297 * temp_298;
    }
    temp_304 = fma(temp_302, temp_216, temp_119);
    temp_305 = fma(temp_302, temp_217, temp_120);
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_19 > 0.5) ? -1 : 0)) != 0))
    {
        temp_47 = 0.0 - temp_45 + -0.0;
    }
    if (temp_294)
    {
        temp_304 = fma(temp_216, temp_286, temp_119);
    }
    if (temp_294)
    {
        temp_305 = fma(temp_217, temp_286, temp_120);
    }
    temp_306 = fma(temp_302, temp_303, temp_121);
    if (temp_294)
    {
        temp_306 = fma(temp_303, temp_286, temp_121);
    }
    temp_307 = int(trunc(float(floatBitsToInt(_sysEmitterStaticUniformBlock.data[6].x)) * temp_19)) << 4;
    temp_308 = uint(temp_307 + 0x3C8) >> 2;
    temp_309 = 0 - temp_295 + ((uint(temp_284 + 0 - ((int(uint(temp_277) >> 16)) * (int(uint(temp_300) >> 16)) << 16) + (temp_277 & 0xFFFF) * (temp_295 & 0xFFFF) + (temp_300 << 16)) >= uint(temp_277) ? -1 : 0));
    temp_310 = fma(temp_306, _sysViewUniformBlock.data[0].z, fma(temp_305, _sysViewUniformBlock.data[0].y, temp_304 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_311 = uint(temp_307 + 0x3C0) >> 2;
    temp_312 = int(temp_311) + 1;
    temp_313 = 0 - int((uint(temp_284 ^ temp_277)) >> 31);
    temp_314 = fma(temp_306, _sysViewUniformBlock.data[1].z, fma(temp_305, _sysViewUniformBlock.data[1].y, temp_304 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_315 = (temp_277 & 0xFFFF) * (int(uint(temp_309) >> 16)) & 0xFFFF | temp_309 << 16;
    temp_316 = fma(temp_306, _sysViewUniformBlock.data[2].z, fma(temp_305, _sysViewUniformBlock.data[2].y, temp_304 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_317 = fma(temp_306, _sysViewUniformBlock.data[3].z, fma(temp_305, _sysViewUniformBlock.data[3].y, temp_304 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_318 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_319 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_320 = fma(temp_306, _sysViewUniformBlock.data[11].z, fma(temp_305, _sysViewUniformBlock.data[11].y, temp_304 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[int(temp_311 >> 2)][int(temp_311) & 3] * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[int(uint(temp_312) >> 2)][temp_312 & 3] * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[int(temp_308 >> 2)][int(temp_308) & 3] * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    gl_Position.x = fma(temp_306, _sysViewUniformBlock.data[8].z, fma(temp_305, _sysViewUniformBlock.data[8].y, temp_304 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_306, _sysViewUniformBlock.data[9].z, fma(temp_305, _sysViewUniformBlock.data[9].y, temp_304 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = temp_320 * fma(temp_317, _sysViewUniformBlock.data[6].w, fma(temp_316, _sysViewUniformBlock.data[6].z, fma(temp_314, _sysViewUniformBlock.data[6].y, temp_310 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_317, _sysViewUniformBlock.data[7].w, fma(temp_316, _sysViewUniformBlock.data[7].z, fma(temp_314, _sysViewUniformBlock.data[7].y, temp_310 * _sysViewUniformBlock.data[7].x))));
    gl_Position.w = temp_320;
    out_attr1.x = fma(temp_319, temp_47 + 0.5, fma(float(temp_277 < 0 || !(temp_277 == 0) ? temp_284 + ((int(uint(temp_277) >> 16)) * (int(uint(temp_315) >> 16)) << 16) + (temp_277 & 0xFFFF) * (temp_309 & 0xFFFF) + (temp_315 << 16) : -1), temp_319, fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_19 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.0 - fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_19, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), 0.0 - temp_47, temp_47);
    out_attr1.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_57, _sysEmitterStaticUniformBlock.data[46].w, temp_293)), 0.0 - temp_48, temp_48) + fma(temp_318, 0.0 - temp_48 + -0.5, 0.0 - fma(temp_318, 0.0 - float(temp_277 < 0 || !(temp_277 == 0) ? 0 - temp_313 + (temp_299 + 0 - (uint(abs(temp_284) + 0 - ((int(uint(abs(temp_277)) >> 16)) * (int(uint(temp_301) >> 16)) << 16) + (abs(temp_277) & 0xFFFF) * (temp_299 & 0xFFFF) + (temp_301 << 16)) >= uint(abs(temp_277)) ? -1 : 0) ^ temp_313) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_57 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, temp_290))));
    break;
} while (false);
}
