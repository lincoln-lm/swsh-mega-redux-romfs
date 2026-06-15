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
    int temp_50;
    precise float temp_51;
    int temp_52;
    int temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    bool temp_57;
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
    int temp_116;
    int temp_117;
    precise float temp_118;
    int temp_119;
    bool temp_120;
    int temp_121;
    int temp_122;
    uint temp_123;
    int temp_124;
    bool temp_125;
    int temp_126;
    int temp_127;
    precise float temp_128;
    precise float temp_129;
    int temp_130;
    int temp_131;
    int temp_132;
    int temp_133;
    int temp_134;
    int temp_135;
    int temp_136;
    int temp_137;
    precise float temp_138;
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
    int temp_150;
    int temp_151;
    int temp_152;
    int temp_153;
    int temp_154;
    int temp_155;
    int temp_156;
    uint temp_157;
    precise float temp_158;
    int temp_159;
    precise float temp_160;
    precise float temp_161;
    precise float temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    precise float temp_166;
    int temp_167;
    precise float temp_168;
    int temp_169;
    precise float temp_170;
    precise float temp_171;
    precise float temp_172;
    precise float temp_173;
    precise float temp_174;
    precise float temp_175;
    int temp_176;
    precise float temp_177;
    precise float temp_178;
    precise float temp_179;
    precise float temp_180;
    precise float temp_181;
    int temp_182;
    uint temp_183;
    precise float temp_184;
    int temp_185;
    precise float temp_186;
    int temp_187;
    int temp_188;
    precise float temp_189;
    precise float temp_190;
    int temp_191;
    precise float temp_192;
    precise float temp_193;
    int temp_194;
    precise float temp_195;
    uint temp_196;
    precise float temp_197;
    int temp_198;
    precise float temp_199;
    int temp_200;
    precise float temp_201;
    int temp_202;
    uint temp_203;
    int temp_204;
    int temp_205;
    int temp_206;
    int temp_207;
    int temp_208;
    bool temp_209;
    int temp_210;
    int temp_211;
    uint temp_212;
    uint temp_213;
    precise float temp_214;
    precise float temp_215;
    precise float temp_216;
    precise float temp_217;
    precise float temp_218;
    precise float temp_219;
    precise float temp_220;
    precise float temp_221;
    precise float temp_222;
    precise float temp_223;
    precise float temp_224;
    int temp_225;
    precise float temp_226;
    precise float temp_227;
    precise float temp_228;
    bool temp_229;
    int temp_230;
    int temp_231;
    int temp_232;
    int temp_233;
    precise float temp_234;
    uint temp_235;
    int temp_236;
    int temp_237;
    int temp_238;
    int temp_239;
    int temp_240;
    int temp_241;
    int temp_242;
    int temp_243;
    bool temp_244;
    int temp_245;
    uint temp_246;
    uint temp_247;
    precise float temp_248;
    precise float temp_249;
    precise float temp_250;
    precise float temp_251;
    precise float temp_252;
    precise float temp_253;
    precise float temp_254;
    precise float temp_255;
    precise float temp_256;
    precise float temp_257;
    precise float temp_258;
    precise float temp_259;
    bool temp_260;
    int temp_261;
    int temp_262;
    precise float temp_263;
    int temp_264;
    int temp_265;
    precise float temp_266;
    int temp_267;
    int temp_268;
    int temp_269;
    int temp_270;
    int temp_271;
    int temp_272;
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
    precise float temp_287;
    precise float temp_288;
    precise float temp_289;
    precise float temp_290;
    precise float temp_291;
    precise float temp_292;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr4.x = 0.0;
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
        out_attr4.x = 0.0;
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
    temp_25 = intBitsToFloat(undef);
    temp_26 = sqrt(temp_21);
    temp_27 = sqrt(temp_20);
    if (temp_22)
    {
        temp_25 = inversesqrt(temp_19);
    }
    temp_28 = temp_25;
    if (!temp_22)
    {
        temp_28 = 0.0;
    }
    temp_29 = intBitsToFloat(undef);
    temp_30 = temp_28;
    if (temp_23)
    {
        temp_29 = inversesqrt(temp_20);
    }
    temp_31 = temp_29;
    if (!temp_22)
    {
        temp_26 = 0.0;
    }
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_26;
    if (temp_24)
    {
        temp_32 = inversesqrt(temp_21);
    }
    temp_34 = temp_32;
    if (!temp_22)
    {
        temp_27 = 0.0;
    }
    temp_35 = temp_27;
    if (!temp_23)
    {
        temp_31 = 0.0;
    }
    temp_36 = intBitsToFloat(undef);
    temp_37 = temp_31;
    if (!temp_23)
    {
        temp_36 = 0.0;
    }
    temp_38 = intBitsToFloat(undef);
    temp_39 = temp_36;
    if (!temp_23)
    {
        temp_38 = 0.0;
    }
    temp_40 = temp_38;
    if (!temp_24)
    {
        temp_34 = 0.0;
    }
    temp_41 = intBitsToFloat(undef);
    temp_42 = temp_34;
    if (!temp_24)
    {
        temp_41 = 0.0;
    }
    temp_43 = intBitsToFloat(undef);
    temp_44 = temp_41;
    if (!temp_24)
    {
        temp_43 = 0.0;
    }
    temp_45 = temp_43;
    if (temp_22)
    {
        temp_35 = temp_28 * temp_9;
    }
    if (temp_22)
    {
        temp_33 = temp_28 * temp_12;
    }
    if (temp_23)
    {
        temp_40 = temp_31 * temp_10;
    }
    if (temp_23)
    {
        temp_39 = temp_31 * temp_13;
    }
    if (temp_24)
    {
        temp_45 = temp_34 * temp_11;
    }
    if (temp_24)
    {
        temp_44 = temp_34 * temp_14;
    }
    if (temp_22)
    {
        temp_30 = temp_28 * temp_15;
    }
    if (temp_23)
    {
        temp_37 = temp_31 * temp_16;
    }
    if (temp_24)
    {
        temp_42 = temp_34 * temp_17;
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
    temp_48 = sysRandomAttr.y;
    temp_49 = sysRandomAttr.z;
    temp_50 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_51 = floor(temp_18 * 2.0);
    temp_52 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_53 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_54 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_55 = floor(temp_48 * 2.0);
    temp_56 = floor(temp_49 * 2.0);
    temp_57 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_58 = intBitsToFloat(undef);
    if (!temp_57)
    {
        temp_58 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_59 = temp_58;
    if (!temp_57)
    {
        temp_59 = 1.0 / temp_58;
    }
    temp_60 = sysInitRotateAttr.x;
    temp_61 = sysInitRotateAttr.y;
    temp_62 = sysInitRotateAttr.z;
    temp_63 = fma(temp_48 + temp_49, 0.5, -0.5);
    temp_64 = temp_47 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_65 = (0.0 - (temp_55 < 0.0 ? 1.0 : 0.0) + (temp_55 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_52 > 0 ? -1 : 0) + 0 - (temp_52 >= 0 ? 0 : 1)));
    temp_66 = fma(fma(temp_18 + temp_48, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_67 = fma(fma(temp_18 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_68 = temp_63;
    if (!temp_57)
    {
        temp_68 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_59, temp_59);
    }
    temp_69 = (0.0 - (temp_51 < 0.0 ? 1.0 : 0.0) + (temp_51 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_53 > 0 ? -1 : 0) + 0 - (temp_53 >= 0 ? 0 : 1)));
    temp_70 = fma(temp_63 * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_71 = temp_47 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_72 = temp_47 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_73 = (0.0 - (temp_56 < 0.0 ? 1.0 : 0.0) + (temp_56 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_50 > 0 ? -1 : 0) + 0 - (temp_50 >= 0 ? 0 : 1)));
    temp_74 = fma(temp_71, 0.0 - temp_72, temp_71);
    temp_75 = temp_68;
    if (temp_57)
    {
        temp_75 = temp_5;
    }
    temp_76 = fma(fma(temp_67 * temp_69, -2.0, temp_67), temp_75, fma(temp_49 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_69 * temp_62, -2.0, temp_62)));
    temp_77 = fma(fma(temp_66 * temp_65, -2.0, temp_66), temp_75, fma(temp_18 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_65 * temp_60, -2.0, temp_60)));
    temp_78 = fma(fma(temp_70 * temp_73, -2.0, temp_70), temp_75, fma(temp_48 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_73 * temp_61, -2.0, temp_61)));
    temp_79 = fma(temp_72, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_64, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_54, _sysEmitterStaticUniformBlock.data[96].y), temp_74, fma(temp_71, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_80 = sysLocalPosAttr.x;
    temp_81 = sysLocalPosAttr.y;
    temp_82 = sysLocalPosAttr.z;
    temp_83 = (clamp(min(0.0, temp_18) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_72, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_64, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_54, _sysEmitterStaticUniformBlock.data[96].x), temp_74, fma(temp_71, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_84 = fma(temp_72, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_64, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_54, _sysEmitterStaticUniformBlock.data[96].z), temp_74, fma(temp_71, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_85 = sin(temp_77) * sin(temp_78);
    temp_86 = cos(temp_77) * cos(temp_78);
    temp_87 = cos(temp_77) * sin(temp_78);
    temp_88 = sin(temp_77) * cos(temp_78);
    temp_89 = 0.0 + fma(cos(temp_76) * sin(temp_78), temp_84, fma(temp_83, cos(temp_76) * cos(temp_78), temp_79 * 0.0 - sin(temp_76)));
    temp_90 = 0.0 + fma(fma(sin(temp_76), temp_87, 0.0 - temp_88), temp_84, fma(temp_83, fma(sin(temp_76), temp_86, temp_85), temp_79 * cos(temp_76) * cos(temp_77)));
    temp_91 = 0.0 + fma(fma(sin(temp_76), temp_85, temp_86), temp_84, fma(temp_83, fma(sin(temp_76), temp_88, 0.0 - temp_87), temp_79 * cos(temp_76) * sin(temp_77)));
    temp_92 = fma(0.0, temp_84, fma(0.0, temp_83, 0.0 * temp_79)) + 1.0;
    temp_93 = fma(fma(temp_11, temp_82, fma(temp_10, temp_81, temp_9 * temp_80)) + sysEmtMat0Attr.w, temp_92, fma(temp_91, temp_45, fma(temp_90, temp_40, temp_89 * temp_35)));
    temp_94 = fma(fma(temp_14, temp_82, fma(temp_13, temp_81, temp_12 * temp_80)) + sysEmtMat1Attr.w, temp_92, fma(temp_91, temp_44, fma(temp_90, temp_39, temp_89 * temp_33)));
    temp_95 = fma(fma(temp_17, temp_82, fma(temp_16, temp_81, temp_15 * temp_80)) + sysEmtMat2Attr.w, temp_92, fma(temp_91, temp_42, fma(temp_90, temp_37, temp_89 * temp_30)));
    temp_96 = fma(temp_95, _sysViewUniformBlock.data[0].z, fma(temp_94, _sysViewUniformBlock.data[0].y, temp_93 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_97 = fma(temp_95, _sysViewUniformBlock.data[1].z, fma(temp_94, _sysViewUniformBlock.data[1].y, temp_93 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_98 = fma(temp_95, _sysViewUniformBlock.data[2].z, fma(temp_94, _sysViewUniformBlock.data[2].y, temp_93 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_99 = fma(temp_95, _sysViewUniformBlock.data[3].z, fma(temp_94, _sysViewUniformBlock.data[3].y, temp_93 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_100 = fma(temp_95, _sysViewUniformBlock.data[11].z, fma(temp_94, _sysViewUniformBlock.data[11].y, temp_93 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_95, _sysViewUniformBlock.data[8].z, fma(temp_94, _sysViewUniformBlock.data[8].y, temp_93 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_95, _sysViewUniformBlock.data[9].z, fma(temp_94, _sysViewUniformBlock.data[9].y, temp_93 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_99, _sysViewUniformBlock.data[6].w, fma(temp_98, _sysViewUniformBlock.data[6].z, fma(temp_97, _sysViewUniformBlock.data[6].y, temp_96 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_99, _sysViewUniformBlock.data[7].w, fma(temp_98, _sysViewUniformBlock.data[7].z, fma(temp_97, _sysViewUniformBlock.data[7].y, temp_96 * _sysViewUniformBlock.data[7].x)))) * temp_100;
    gl_Position.w = temp_100;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_101 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_102 = temp_101 + 0.0 - floor(temp_101);
    }
    else
    {
        temp_102 = temp_5 * (1.0 / temp_6);
    }
    temp_103 = temp_102 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_104 = temp_102 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_105 = 1.0 / (_sysEmitterStaticUniformBlock.data[61].w + 0.0 - _sysEmitterStaticUniformBlock.data[60].w);
    temp_106 = temp_102 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_107 = fma(temp_104, 0.0 - temp_106, temp_104);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_108 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_109 = temp_108 + 0.0 - floor(temp_108);
    }
    else
    {
        temp_109 = temp_5 * (1.0 / temp_6);
    }
    temp_110 = temp_109 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_111 = temp_109 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_112 = temp_109 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_113 = temp_109 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    out_attr0.x = fma(temp_106, _sysEmitterStaticUniformBlock.data[61].x, fma(fma((_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_105, temp_103, _sysEmitterStaticUniformBlock.data[60].x), temp_107, fma(temp_104, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_106, _sysEmitterStaticUniformBlock.data[61].y, fma(fma((_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_105, temp_103, _sysEmitterStaticUniformBlock.data[60].y), temp_107, fma(temp_104, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_106, _sysEmitterStaticUniformBlock.data[61].z, fma(fma((_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_105, temp_103, _sysEmitterStaticUniformBlock.data[60].z), temp_107, fma(temp_104, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_113, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_109 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_112, 0.0 - temp_113, temp_112), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_109 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_111, 0.0 - temp_112, temp_111), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_109 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_111, 0.0 - temp_110, temp_110), fma(temp_110, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_114 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_115 = temp_114 + 0.0 - floor(temp_114);
    }
    else
    {
        temp_115 = temp_5 * (1.0 / temp_6);
    }
    temp_116 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 256;
    temp_117 = int(trunc(_sysEmitterStaticUniformBlock.data[26].x));
    temp_118 = 1.0 / temp_6;
    temp_119 = abs(0 - (temp_116 > 0 ? -1 : 0) + 0 - (temp_116 >= 0 ? 0 : 1));
    temp_120 = temp_117 < 0 || !(temp_117 == 0);
    temp_121 = floatBitsToInt(1.0 / float(uint(temp_117))) + -2;
    temp_122 = int(trunc(temp_5 * (1.0 / float(int(trunc(_sysEmitterStaticUniformBlock.data[26].y))))));
    temp_123 = uint(max(trunc(intBitsToFloat(temp_121) * float(uint(temp_122))), 0.0));
    temp_124 = (temp_117 & 0xFFFF) * (int(temp_123 >> 16)) & 0xFFFF | int(temp_123) << 16;
    temp_125 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_126 = int(temp_123) + int(uint(max(trunc(intBitsToFloat(temp_121) * float(uint(temp_122 + 0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_124) >> 16)) << 16) + (temp_117 & 0xFFFF) * (int(temp_123) & 0xFFFF) + (temp_124 << 16)))), 0.0)));
    temp_127 = (temp_117 & 0xFFFF) * (int(uint(temp_126) >> 16)) & 0xFFFF | temp_126 << 16;
    temp_128 = 1.0;
    if (temp_125)
    {
        temp_128 = 1.23456001;
    }
    temp_129 = temp_18;
    if (temp_125)
    {
        temp_129 = temp_48;
    }
    temp_130 = 0 - temp_126 + ((uint(temp_122 + 0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_127) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_126 & 0xFFFF) + (temp_127 << 16)) >= uint(temp_117) ? -1 : 0));
    temp_131 = (temp_117 & 0xFFFF) * (int(uint(temp_130) >> 16)) & 0xFFFF | temp_130 << 16;
    temp_132 = abs((float(temp_122) >= float(temp_117) ? -1 : 0));
    temp_133 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x200;
    temp_134 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x4000000;
    temp_135 = 0 - temp_132 + 1;
    temp_136 = temp_120 ? temp_122 + ((int(uint(temp_117) >> 16)) * (int(uint(temp_131) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_130 & 0xFFFF) + (temp_131 << 16) : -1;
    temp_137 = (temp_135 & 0xFFFF) * (int(uint(temp_136) >> 16)) & 0xFFFF | temp_136 << 16;
    temp_138 = temp_128 * temp_129;
    temp_139 = temp_117 + -1;
    temp_140 = abs(0 - (temp_133 > 0 ? -1 : 0) + 0 - (temp_133 >= 0 ? 0 : 1));
    temp_141 = (temp_132 & 0xFFFF) * (int(uint(temp_139) >> 16)) & 0xFFFF | temp_139 << 16;
    temp_142 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x400;
    temp_143 = abs(0 - (temp_134 > 0 ? -1 : 0) + 0 - (temp_134 >= 0 ? 0 : 1));
    temp_144 = ((int(uint(temp_132) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_132 & 0xFFFF) * (temp_139 & 0xFFFF) + ((int(uint(temp_135) >> 16)) * (int(uint(temp_137) >> 16)) << 16) + (temp_135 & 0xFFFF) * (temp_136 & 0xFFFF) + (temp_137 << 16) + (temp_141 << 16);
    temp_145 = int(trunc(float(temp_117) * (temp_138 + 0.0 - floor(temp_138))));
    temp_146 = int(trunc(temp_5 * float(temp_117) * temp_118));
    temp_147 = (temp_140 & 0xFFFF) * (int(uint(temp_144) >> 16)) & 0xFFFF | temp_144 << 16;
    temp_148 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x800;
    temp_149 = (temp_143 & 0xFFFF) * (int(uint(temp_145) >> 16)) & 0xFFFF | temp_145 << 16;
    temp_150 = abs(0 - (temp_142 > 0 ? -1 : 0) + 0 - (temp_142 >= 0 ? 0 : 1));
    temp_151 = (temp_119 & 0xFFFF) * (int(uint(temp_146) >> 16)) & 0xFFFF | temp_146 << 16;
    temp_152 = ((int(uint(temp_143) >> 16)) * (int(uint(temp_149) >> 16)) << 16) + (temp_143 & 0xFFFF) * (temp_145 & 0xFFFF) + temp_122 + (temp_149 << 16);
    temp_153 = (temp_150 & 0xFFFF) * (int(uint(temp_152) >> 16)) & 0xFFFF | temp_152 << 16;
    temp_154 = abs(0 - (temp_148 > 0 ? -1 : 0) + 0 - (temp_148 >= 0 ? 0 : 1));
    temp_155 = (temp_154 & 0xFFFF) * (int(uint(temp_145) >> 16)) & 0xFFFF | temp_145 << 16;
    temp_156 = ((int(uint(temp_154) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (temp_154 & 0xFFFF) * (temp_145 & 0xFFFF) + ((int(uint(temp_150) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (temp_150 & 0xFFFF) * (temp_152 & 0xFFFF) + ((int(uint(temp_119) >> 16)) * (int(uint(temp_151) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_146 & 0xFFFF) + ((int(uint(temp_140) >> 16)) * (int(uint(temp_147) >> 16)) << 16) + (temp_140 & 0xFFFF) * (temp_144 & 0xFFFF) + (temp_147 << 16) + (temp_151 << 16) + (temp_153 << 16) + (temp_155 << 16);
    temp_157 = uint(max(trunc(intBitsToFloat(temp_121) * float(uint(temp_156))), 0.0));
    temp_158 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_159 = (temp_117 & 0xFFFF) * (int(temp_157 >> 16)) & 0xFFFF | int(temp_157) << 16;
    temp_160 = sysTexCoordAttr.x;
    temp_161 = sysTexCoordAttr.y;
    temp_162 = temp_160;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_18 > 0.5) ? -1 : 0)) != 0))
    {
        temp_162 = 0.0 - temp_160 + 1.0;
    }
    temp_163 = int(temp_157) + int(uint(max(trunc(intBitsToFloat(temp_121) * float(uint(temp_156 + 0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_159) >> 16)) << 16) + (temp_117 & 0xFFFF) * (int(temp_157) & 0xFFFF) + (temp_159 << 16)))), 0.0)));
    temp_164 = (temp_117 & 0xFFFF) * (int(uint(temp_163) >> 16)) & 0xFFFF | temp_163 << 16;
    temp_165 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_166 = temp_115 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_167 = 0 - temp_163 + ((uint(temp_156 + 0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_164) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_163 & 0xFFFF) + (temp_164 << 16)) >= uint(temp_117) ? -1 : 0));
    temp_168 = temp_5 * temp_118;
    temp_169 = (temp_117 & 0xFFFF) * (int(uint(temp_167) >> 16)) & 0xFFFF | temp_167 << 16;
    temp_170 = temp_160;
    temp_171 = temp_160;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_170 = 0.0 - temp_160 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_48 > 0.5) ? -1 : 0)) != 0))
    {
        temp_171 = 0.0 - temp_160 + 1.0;
    }
    temp_172 = temp_161;
    temp_173 = temp_161;
    temp_174 = temp_161;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_48 > 0.5) ? -1 : 0)) != 0))
    {
        temp_172 = 0.0 - temp_161 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_173 = 0.0 - temp_161 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_174 = 0.0 - temp_161 + 1.0;
    }
    temp_175 = temp_115 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_176 = temp_120 ? temp_156 + ((int(uint(temp_117) >> 16)) * (int(uint(temp_169) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_167 & 0xFFFF) + (temp_169 << 16) : -1;
    temp_177 = temp_115 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_178 = temp_168 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_179 = temp_168 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_180 = fma(temp_177, 0.0 - temp_175, temp_177);
    temp_181 = temp_168 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_182 = temp_176 + (temp_176 >> 31 & 3) >> 2 << 4;
    temp_183 = uint(temp_182 + 0x1B0) >> 2;
    temp_184 = _sysEmitterStaticUniformBlock.data[int(temp_183 >> 2)][int(temp_183) & 3];
    temp_185 = int(temp_183) + 1;
    temp_186 = _sysEmitterStaticUniformBlock.data[int(uint(temp_185) >> 2)][temp_185 & 3];
    temp_187 = temp_176 & 3;
    temp_188 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_189 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_49, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_190 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_191 = temp_187 + -1;
    temp_192 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_193 = fma(temp_190, temp_172, -0.5);
    temp_194 = temp_187 + -2;
    temp_195 = fma(temp_192, temp_162, -0.5);
    temp_196 = uint(temp_182 + 0x1B8) >> 2;
    temp_197 = _sysEmitterStaticUniformBlock.data[int(temp_196 >> 2)][int(temp_196) & 3];
    temp_198 = int(temp_196) + 1;
    temp_199 = _sysEmitterStaticUniformBlock.data[int(uint(temp_198) >> 2)][temp_198 & 3];
    temp_200 = floatBitsToInt(1.0 / float(uint(temp_165))) + -2;
    temp_201 = temp_168 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_202 = temp_187 + -3;
    temp_203 = uint(max(trunc(float(0u) * intBitsToFloat(temp_200)), 0.0));
    temp_204 = 0;
    if (temp_125)
    {
        temp_204 = 1;
    }
    temp_205 = 0 - abs(0 - (temp_191 > 0 ? -1 : 0) + 0 - (temp_191 >= 0 ? 0 : 1)) + 1;
    temp_206 = floatBitsToInt(1.0 / float(uint(abs(temp_165)))) + -2;
    temp_207 = (floatBitsToInt(temp_186) & 0xFFFF) * (int(uint(temp_205) >> 16)) & 0xFFFF | temp_205 << 16;
    temp_208 = floatBitsToInt(1.0 / float(uint(temp_188))) + -2;
    temp_209 = temp_204 == 1;
    temp_210 = (temp_165 & 0xFFFF) * (int(temp_203 >> 16)) & 0xFFFF | int(temp_203) << 16;
    temp_211 = 0 - abs(0 - (temp_187 > 0 ? -1 : 0) + 0 - (temp_187 >= 0 ? 0 : 1)) + 1;
    temp_212 = uint(max(trunc(float(0u) * intBitsToFloat(temp_208)), 0.0));
    temp_213 = uint(max(trunc(intBitsToFloat(temp_206) * float(0u)), 0.0));
    temp_214 = temp_18;
    temp_215 = temp_48;
    temp_216 = temp_49;
    temp_217 = temp_18;
    temp_218 = temp_48;
    if (temp_209)
    {
        temp_214 = temp_48;
    }
    temp_219 = temp_214;
    temp_220 = temp_214;
    if (temp_209)
    {
        temp_215 = temp_49;
    }
    temp_221 = temp_215;
    temp_222 = temp_215;
    if (temp_209)
    {
        temp_216 = temp_18;
    }
    temp_223 = temp_216;
    temp_224 = temp_216;
    if (temp_209)
    {
        temp_217 = temp_48;
    }
    temp_225 = (floatBitsToInt(temp_184) & 0xFFFF) * (int(uint(temp_211) >> 16)) & 0xFFFF | temp_211 << 16;
    temp_226 = temp_217;
    temp_227 = temp_217;
    if (temp_209)
    {
        temp_218 = temp_49;
    }
    temp_228 = temp_218;
    if (!temp_209)
    {
        temp_229 = temp_204 == 2;
        if (temp_229)
        {
            temp_219 = temp_49;
        }
        temp_220 = temp_219;
        if (temp_229)
        {
            temp_221 = temp_18;
        }
        temp_222 = temp_221;
        if (temp_229)
        {
            temp_223 = temp_48;
        }
        temp_224 = temp_223;
        if (temp_229)
        {
            temp_226 = temp_18;
        }
        temp_227 = temp_226;
        if (temp_229)
        {
            temp_228 = temp_48;
        }
    }
    temp_230 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_231 = floatBitsToInt(1.0 / float(uint(abs(temp_188)))) + -2;
    temp_232 = 0 - abs(0 - (temp_194 > 0 ? -1 : 0) + 0 - (temp_194 >= 0 ? 0 : 1)) + 1;
    temp_233 = (abs(temp_165) & 0xFFFF) * (int(temp_213 >> 16)) & 0xFFFF | int(temp_213) << 16;
    temp_234 = temp_168 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_235 = uint(max(trunc(float(0u) * intBitsToFloat(temp_231)), 0.0));
    temp_236 = (floatBitsToInt(temp_197) & 0xFFFF) * (int(uint(temp_232) >> 16)) & 0xFFFF | temp_232 << 16;
    temp_237 = 0 - abs(0 - (temp_202 > 0 ? -1 : 0) + 0 - (temp_202 >= 0 ? 0 : 1)) + 1;
    temp_238 = (temp_237 & 0xFFFF) * (int(floatBitsToUint(temp_199) >> 16)) & 0xFFFF | floatBitsToInt(temp_199) << 16;
    temp_239 = (temp_188 & 0xFFFF) * (int(temp_212 >> 16)) & 0xFFFF | int(temp_212) << 16;
    temp_240 = (abs(temp_188) & 0xFFFF) * (int(temp_235 >> 16)) & 0xFFFF | int(temp_235) << 16;
    temp_241 = ((int(uint(temp_237) >> 16)) * (int(uint(temp_238) >> 16)) << 16) + (temp_237 & 0xFFFF) * (floatBitsToInt(temp_199) & 0xFFFF) + ((int(floatBitsToUint(temp_197) >> 16)) * (int(uint(temp_236) >> 16)) << 16) + (floatBitsToInt(temp_197) & 0xFFFF) * (temp_232 & 0xFFFF) + ((int(floatBitsToUint(temp_184) >> 16)) * (int(uint(temp_225) >> 16)) << 16) + (floatBitsToInt(temp_184) & 0xFFFF) * (temp_211 & 0xFFFF) + ((int(floatBitsToUint(temp_186) >> 16)) * (int(uint(temp_207) >> 16)) << 16) + (floatBitsToInt(temp_186) & 0xFFFF) * (temp_205 & 0xFFFF) + (temp_207 << 16) + (temp_225 << 16) + (temp_236 << 16) + (temp_238 << 16);
    temp_242 = 0;
    if (temp_125)
    {
        temp_242 = 2;
    }
    temp_243 = floatBitsToInt(1.0 / float(uint(abs(temp_230)))) + -2;
    temp_244 = temp_242 == 1;
    temp_245 = floatBitsToInt(1.0 / float(uint(temp_230))) + -2;
    temp_246 = uint(max(trunc(intBitsToFloat(temp_245) * float(uint(temp_241))), 0.0));
    temp_247 = uint(max(trunc(intBitsToFloat(temp_243) * float(uint(abs(temp_241)))), 0.0));
    temp_248 = temp_168 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_249 = temp_18;
    temp_250 = temp_48;
    temp_251 = temp_18;
    temp_252 = temp_48;
    if (temp_244)
    {
        temp_249 = temp_48;
    }
    temp_253 = temp_249;
    temp_254 = temp_249;
    if (temp_244)
    {
        temp_250 = temp_49;
    }
    temp_255 = temp_250;
    temp_256 = temp_250;
    if (temp_244)
    {
        temp_251 = temp_48;
    }
    temp_257 = temp_251;
    temp_258 = temp_251;
    if (temp_244)
    {
        temp_252 = temp_49;
    }
    temp_259 = temp_252;
    if (!temp_244)
    {
        temp_260 = temp_242 == 2;
        if (temp_260)
        {
            temp_253 = temp_49;
        }
        temp_254 = temp_253;
        if (temp_260)
        {
            temp_255 = temp_18;
        }
        temp_256 = temp_255;
        if (temp_260)
        {
            temp_257 = temp_18;
        }
        temp_258 = temp_257;
        if (temp_260)
        {
            temp_259 = temp_48;
        }
    }
    temp_261 = (temp_230 & 0xFFFF) * (int(temp_246 >> 16)) & 0xFFFF | int(temp_246) << 16;
    temp_262 = (abs(temp_230) & 0xFFFF) * (int(temp_247 >> 16)) & 0xFFFF | int(temp_247) << 16;
    temp_263 = temp_168 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_264 = int(temp_213) + int(uint(max(trunc(intBitsToFloat(temp_206) * float(uint(0 - ((int(uint(abs(temp_165)) >> 16)) * (int(uint(temp_233) >> 16)) << 16) + (abs(temp_165) & 0xFFFF) * (int(temp_213) & 0xFFFF) + (temp_233 << 16)))), 0.0)));
    temp_265 = (abs(temp_165) & 0xFFFF) * (int(uint(temp_264) >> 16)) & 0xFFFF | temp_264 << 16;
    temp_266 = temp_168 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_267 = int(temp_203) + int(uint(max(trunc(intBitsToFloat(temp_200) * float(uint(0 - ((int(uint(temp_165) >> 16)) * (int(uint(temp_210) >> 16)) << 16) + (temp_165 & 0xFFFF) * (int(temp_203) & 0xFFFF) + (temp_210 << 16)))), 0.0)));
    temp_268 = int(temp_212) + int(uint(max(trunc(intBitsToFloat(temp_208) * float(uint(0 - ((int(uint(temp_188) >> 16)) * (int(uint(temp_239) >> 16)) << 16) + (temp_188 & 0xFFFF) * (int(temp_212) & 0xFFFF) + (temp_239 << 16)))), 0.0)));
    temp_269 = (temp_165 & 0xFFFF) * (int(uint(temp_267) >> 16)) & 0xFFFF | temp_267 << 16;
    temp_270 = (temp_188 & 0xFFFF) * (int(uint(temp_268) >> 16)) & 0xFFFF | temp_268 << 16;
    temp_271 = int(temp_235) + int(uint(max(trunc(intBitsToFloat(temp_231) * float(uint(0 - ((int(uint(abs(temp_188)) >> 16)) * (int(uint(temp_240) >> 16)) << 16) + (abs(temp_188) & 0xFFFF) * (int(temp_235) & 0xFFFF) + (temp_240 << 16)))), 0.0)));
    temp_272 = int(temp_246) + int(uint(max(trunc(intBitsToFloat(temp_245) * float(uint(temp_241 + 0 - ((int(uint(temp_230) >> 16)) * (int(uint(temp_261) >> 16)) << 16) + (temp_230 & 0xFFFF) * (int(temp_246) & 0xFFFF) + (temp_261 << 16)))), 0.0)));
    temp_273 = (abs(temp_188) & 0xFFFF) * (int(uint(temp_271) >> 16)) & 0xFFFF | temp_271 << 16;
    temp_274 = int(temp_247) + int(uint(max(trunc(intBitsToFloat(temp_243) * float(uint(abs(temp_241) + 0 - ((int(uint(abs(temp_230)) >> 16)) * (int(uint(temp_262) >> 16)) << 16) + (abs(temp_230) & 0xFFFF) * (int(temp_247) & 0xFFFF) + (temp_262 << 16)))), 0.0)));
    temp_275 = (temp_230 & 0xFFFF) * (int(uint(temp_272) >> 16)) & 0xFFFF | temp_272 << 16;
    temp_276 = 0 - temp_267 + ((uint(0 - ((int(uint(temp_165) >> 16)) * (int(uint(temp_269) >> 16)) << 16) + (temp_165 & 0xFFFF) * (temp_267 & 0xFFFF) + (temp_269 << 16)) >= uint(temp_165) ? -1 : 0));
    temp_277 = (abs(temp_230) & 0xFFFF) * (int(uint(temp_274) >> 16)) & 0xFFFF | temp_274 << 16;
    temp_278 = 0 - temp_268 + ((uint(0 - ((int(uint(temp_188) >> 16)) * (int(uint(temp_270) >> 16)) << 16) + (temp_188 & 0xFFFF) * (temp_268 & 0xFFFF) + (temp_270 << 16)) >= uint(temp_188) ? -1 : 0));
    temp_279 = (temp_165 & 0xFFFF) * (int(uint(temp_276) >> 16)) & 0xFFFF | temp_276 << 16;
    temp_280 = (temp_188 & 0xFFFF) * (int(uint(temp_278) >> 16)) & 0xFFFF | temp_278 << 16;
    temp_281 = 0 - int(uint(temp_165) >> 31);
    temp_282 = 0 - temp_272 + ((uint(temp_241 + 0 - ((int(uint(temp_230) >> 16)) * (int(uint(temp_275) >> 16)) << 16) + (temp_230 & 0xFFFF) * (temp_272 & 0xFFFF) + (temp_275 << 16)) >= uint(temp_230) ? -1 : 0));
    temp_283 = 0 - int(uint(temp_188) >> 31);
    temp_284 = 0 - int((uint(temp_241 ^ temp_230)) >> 31);
    temp_285 = (temp_230 & 0xFFFF) * (int(uint(temp_282) >> 16)) & 0xFFFF | temp_282 << 16;
    temp_286 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[52].x, fma(temp_224, _sysEmitterStaticUniformBlock.data[52].z, _sysEmitterStaticUniformBlock.data[52].z + _sysEmitterStaticUniformBlock.data[52].y));
    temp_287 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_288 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_289 = fma(temp_287, temp_173, -0.5);
    temp_290 = fma(temp_288, temp_170, -0.5);
    temp_291 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_292 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr1.x = fma(temp_175, _sysEmitterStaticUniformBlock.data[77].x, fma(fma(temp_166, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_158, _sysEmitterStaticUniformBlock.data[76].x), temp_180, fma(temp_177, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_175, _sysEmitterStaticUniformBlock.data[77].y, fma(fma(temp_166, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_158, _sysEmitterStaticUniformBlock.data[76].y), temp_180, fma(temp_177, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_175, _sysEmitterStaticUniformBlock.data[77].z, fma(fma(temp_166, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_158, _sysEmitterStaticUniformBlock.data[76].z), temp_180, fma(temp_177, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr4.y = fma(temp_266, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_263, 0.0 - temp_266, temp_263), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_248, 0.0 - temp_263, temp_248), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_234, 0.0 - temp_248, temp_234), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_201, 0.0 - temp_234, temp_201), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_181, 0.0 - temp_201, temp_181), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_179, 0.0 - temp_181, temp_179), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_168 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_179, 0.0 - temp_178, temp_178), fma(temp_178, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    out_attr3.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_258, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_291, temp_171, -0.5), fma(temp_291, float(temp_188 < 0 || !(temp_188 == 0) ? ((int(uint(temp_188) >> 16)) * (int(uint(temp_280) >> 16)) << 16) + (temp_188 & 0xFFFF) * (temp_278 & 0xFFFF) + (temp_280 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_254 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr3.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_259, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_292, temp_174, -0.5), 0.0 - fma(temp_292, 0.0 - float(temp_188 < 0 || !(temp_188 == 0) ? 0 - temp_283 + (temp_271 + 0 - (uint(0 - ((int(uint(abs(temp_188)) >> 16)) * (int(uint(temp_273) >> 16)) << 16) + (abs(temp_188) & 0xFFFF) * (temp_271 & 0xFFFF) + (temp_273 << 16)) >= uint(abs(temp_188)) ? -1 : 0) ^ temp_283) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_256 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    out_attr2.x = fma(fma(temp_195, cos(temp_189), 0.0 - temp_193 * sin(temp_189)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_18, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), fma(temp_192, float(temp_165 < 0 || !(temp_165 == 0) ? ((int(uint(temp_165) >> 16)) * (int(uint(temp_279) >> 16)) << 16) + (temp_165 & 0xFFFF) * (temp_276 & 0xFFFF) + (temp_279 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_18 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_195, sin(temp_189), temp_193 * cos(temp_189)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_48, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_190, 0.0 - float(temp_165 < 0 || !(temp_165 == 0) ? 0 - temp_281 + (temp_264 + 0 - (uint(0 - ((int(uint(abs(temp_165)) >> 16)) * (int(uint(temp_265) >> 16)) << 16) + (abs(temp_165) & 0xFFFF) * (temp_264 & 0xFFFF) + (temp_265 << 16)) >= uint(abs(temp_165)) ? -1 : 0) ^ temp_281) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_48 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_290, cos(temp_286), 0.0 - temp_289 * sin(temp_286)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_227, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_288, float(temp_230 < 0 || !(temp_230 == 0) ? temp_241 + ((int(uint(temp_230) >> 16)) * (int(uint(temp_285) >> 16)) << 16) + (temp_230 & 0xFFFF) * (temp_282 & 0xFFFF) + (temp_285 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_220 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_290, sin(temp_286), temp_289 * cos(temp_286)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_228, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].y + _sysEmitterStaticUniformBlock.data[51].w)), 0.0 - fma(temp_287, 0.0 - float(temp_230 < 0 || !(temp_230 == 0) ? 0 - temp_284 + (temp_274 + 0 - (uint(abs(temp_241) + 0 - ((int(uint(abs(temp_230)) >> 16)) * (int(uint(temp_277) >> 16)) << 16) + (abs(temp_230) & 0xFFFF) * (temp_274 & 0xFFFF) + (temp_277 << 16)) >= uint(abs(temp_230)) ? -1 : 0) ^ temp_284) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_222 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    break;
} while (false);
}
