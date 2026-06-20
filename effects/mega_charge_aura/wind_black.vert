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
    int temp_13;
    int temp_14;
    int temp_15;
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
    bool temp_27;
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
    bool temp_46;
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
    bool temp_77;
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
    bool temp_99;
    precise float temp_100;
    precise float temp_101;
    precise float temp_102;
    precise float temp_103;
    precise float temp_104;
    precise float temp_105;
    int temp_106;
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
    int temp_121;
    precise float temp_122;
    int temp_123;
    precise float temp_124;
    precise float temp_125;
    int temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    uint temp_130;
    precise float temp_131;
    int temp_132;
    int temp_133;
    precise float temp_134;
    precise float temp_135;
    precise float temp_136;
    precise float temp_137;
    precise float temp_138;
    int temp_139;
    int temp_140;
    int temp_141;
    uint temp_142;
    uint temp_143;
    bool temp_144;
    precise float temp_145;
    uint temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    int temp_150;
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
    int temp_162;
    int temp_163;
    precise float temp_164;
    precise float temp_165;
    precise float temp_166;
    bool temp_167;
    int temp_168;
    uint temp_169;
    int temp_170;
    uint temp_171;
    int temp_172;
    bool temp_173;
    int temp_174;
    int temp_175;
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
    precise float temp_191;
    precise float temp_192;
    bool temp_193;
    precise float temp_194;
    precise float temp_195;
    precise float temp_196;
    precise float temp_197;
    int temp_198;
    precise float temp_199;
    int temp_200;
    int temp_201;
    int temp_202;
    precise float temp_203;
    precise float temp_204;
    precise float temp_205;
    int temp_206;
    int temp_207;
    int temp_208;
    int temp_209;
    int temp_210;
    int temp_211;
    int temp_212;
    int temp_213;
    precise float temp_214;
    precise float temp_215;
    precise float temp_216;
    precise float temp_217;
    precise float temp_218;
    int temp_219;
    int temp_220;
    int temp_221;
    int temp_222;
    int temp_223;
    int temp_224;
    int temp_225;
    int temp_226;
    precise float temp_227;
    int temp_228;
    precise float temp_229;
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
    temp_9 = sysRandomAttr.x;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_10 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_11 = temp_10 + 0.0 - floor(temp_10);
    }
    else
    {
        temp_11 = temp_5 * (1.0 / temp_6);
    }
    temp_12 = floor(temp_9 * 2.0);
    temp_13 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_14 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_15 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_16 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_17 = sysRandomAttr.y;
    temp_18 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_19 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_20 = sysRandomAttr.z;
    temp_21 = floor(temp_17 * 2.0);
    temp_22 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_23 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_24 = fma(temp_22, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_19, _sysEmitterStaticUniformBlock.data[96].x);
    temp_25 = floor(temp_20 * 2.0);
    temp_26 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_27 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_28 = fma(temp_26, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z);
    temp_29 = fma(temp_26, 0.0 - temp_23, temp_26);
    temp_30 = sysScaleAttr.w;
    temp_31 = fma(fma(temp_17 + temp_20, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_32 = fma(fma(temp_9 + temp_17, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_33 = fma(fma(temp_9 + temp_20, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_34 = temp_24;
    temp_35 = temp_28;
    if (!temp_27)
    {
        temp_34 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_36 = intBitsToFloat(undef);
    if (!temp_27)
    {
        temp_36 = 1.0 / temp_34;
    }
    temp_37 = (0.0 - (temp_12 < 0.0 ? 1.0 : 0.0) + (temp_12 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_15 > 0 ? -1 : 0) + 0 - (temp_15 >= 0 ? 0 : 1)));
    temp_38 = temp_11 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_39 = sysInitRotateAttr.x;
    temp_40 = sysInitRotateAttr.y;
    temp_41 = sysInitRotateAttr.z;
    temp_42 = fma(temp_23, 0.0 - temp_38, temp_23);
    temp_43 = temp_38;
    if (temp_27)
    {
        temp_35 = temp_5;
    }
    temp_44 = temp_35;
    if (!temp_27)
    {
        temp_44 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_36, temp_36);
    }
    temp_45 = (0.0 - (temp_21 < 0.0 ? 1.0 : 0.0) + (temp_21 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - (temp_14 >= 0 ? 0 : 1)));
    temp_46 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_47 = (0.0 - (temp_25 < 0.0 ? 1.0 : 0.0) + (temp_25 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_13 > 0 ? -1 : 0) + 0 - (temp_13 >= 0 ? 0 : 1)));
    temp_48 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_49 = temp_48;
    if (temp_46)
    {
        temp_43 = temp_48 * temp_48;
    }
    temp_50 = temp_47 * temp_40;
    temp_51 = temp_37 * temp_41;
    temp_52 = temp_43;
    temp_53 = temp_51;
    temp_54 = temp_50;
    if (temp_46)
    {
        temp_52 = temp_43 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_46)
    {
        temp_53 = temp_52 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_55 = temp_53;
    if (temp_46)
    {
        temp_54 = temp_52 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_56 = intBitsToFloat(undef);
    temp_57 = temp_54;
    if (temp_46)
    {
        temp_56 = temp_52 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_58 = temp_56;
    if (!temp_46)
    {
        temp_59 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_60 = (temp_48 + 0.0 - fma(temp_59, exp2(temp_48 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_59)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_55 = temp_60 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_57 = temp_60 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_58 = temp_60 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_46)
    {
        temp_61 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_49 = fma(exp2(temp_48 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_61, temp_61);
    }
    temp_62 = fma(fma(temp_49, sysLocalVecAttr.x, temp_55), temp_30, sysLocalPosAttr.x);
    temp_63 = fma(fma(temp_49, sysLocalVecAttr.y, temp_57), temp_30, sysLocalPosAttr.y);
    temp_64 = fma(fma(temp_49, sysLocalVecAttr.z, temp_58), temp_30, sysLocalPosAttr.z);
    temp_65 = fma(fma(temp_32 * temp_45, -2.0, temp_32), temp_44, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_45 * temp_39, -2.0, temp_39)));
    temp_66 = fma(fma(temp_33 * temp_37, -2.0, temp_33), temp_44, fma(temp_20 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_51, -2.0, temp_41)));
    temp_67 = fma(temp_64, sysEmtMat2Attr.z, fma(temp_63, sysEmtMat2Attr.y, temp_62 * sysEmtMat2Attr.x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_68 = fma(temp_64, sysEmtMat1Attr.z, fma(temp_63, sysEmtMat1Attr.y, temp_62 * sysEmtMat1Attr.x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_69 = fma(temp_64, sysEmtMat0Attr.z, fma(temp_63, sysEmtMat0Attr.y, temp_62 * sysEmtMat0Attr.x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    if (0.0 == abs(_sysViewUniformBlock.data[16].z) && 0.0 == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_70 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.0 : 3.1415927;
        temp_71 = temp_70;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_71 = 0.0 - temp_70 + -0.0;
        }
        temp_72 = temp_71;
    }
    else if (intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].z) && intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_73 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.785398185 : 2.3561945;
        temp_74 = temp_73;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_74 = 0.0 - temp_73 + -0.0;
        }
        temp_72 = temp_74;
    }
    else
    {
        temp_75 = max(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_76 = min(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_77 = temp_75 >= 16.0;
        temp_78 = temp_75;
        temp_79 = temp_76;
        if (temp_77)
        {
            temp_78 = temp_75 * 0.0625;
        }
        if (temp_77)
        {
            temp_79 = temp_76 * 0.0625;
        }
        temp_80 = 1.0 / temp_78 * temp_79;
        temp_81 = temp_80 * temp_80;
        temp_82 = fma(1.0 / fma(temp_81, fma(temp_81, temp_81 + 11.3353882, 28.842468), 19.69667), temp_80 * temp_81 * fma(temp_81, fma(temp_81, -0.82336295, -5.67486715), -6.565555), temp_80);
        temp_83 = temp_82;
        if (abs(_sysViewUniformBlock.data[16].x) > abs(_sysViewUniformBlock.data[16].z))
        {
            temp_83 = 0.0 - temp_82 + 1.57079637;
        }
        temp_84 = temp_83;
        if (0.0 > _sysViewUniformBlock.data[16].z)
        {
            temp_84 = 0.0 - temp_83 + 3.14159274;
        }
        temp_72 = temp_84;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_72 = 0.0 - temp_84 + -0.0;
        }
    }
    temp_85 = fma(fma(temp_31 * temp_47, -2.0, temp_31), temp_44, fma(temp_17 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_50, -2.0, temp_40))) + temp_72;
    temp_86 = fma(temp_38, _sysEmitterStaticUniformBlock.data[98].z, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_16, temp_18, _sysEmitterStaticUniformBlock.data[97].z), temp_42, fma(fma(temp_22, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_19, _sysEmitterStaticUniformBlock.data[96].z), temp_29, temp_28))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_87 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_38, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_16, temp_18, _sysEmitterStaticUniformBlock.data[97].x), temp_42, fma(temp_24, temp_29, fma(temp_26, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_88 = fma(temp_38, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_16, temp_18, _sysEmitterStaticUniformBlock.data[97].y), temp_42, fma(fma(temp_22, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_19, _sysEmitterStaticUniformBlock.data[96].y), temp_29, fma(temp_26, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_89 = sin(temp_65) * cos(temp_85);
    temp_90 = cos(temp_65) * cos(temp_85);
    temp_91 = sin(temp_65) * sin(temp_85);
    temp_92 = cos(temp_65) * sin(temp_85);
    temp_93 = min(sqrt(fma(temp_67 + 0.0 - _sysViewUniformBlock.data[17].z, temp_67 + 0.0 - _sysViewUniformBlock.data[17].z, fma(temp_68 + 0.0 - _sysViewUniformBlock.data[17].y, temp_68 + 0.0 - _sysViewUniformBlock.data[17].y, (temp_69 + 0.0 - _sysViewUniformBlock.data[17].x) * (temp_69 + 0.0 - _sysViewUniformBlock.data[17].x)))), _sysEmitterStaticUniformBlock.data[116].x) * (1.0 / _sysEmitterStaticUniformBlock.data[116].x);
    temp_94 = fma(temp_93, fma(cos(temp_66) * sin(temp_85), temp_86, fma(temp_87, cos(temp_66) * cos(temp_85), temp_88 * 0.0 - sin(temp_66))), temp_69);
    temp_95 = fma(temp_93, fma(temp_86, fma(sin(temp_66), temp_92, 0.0 - temp_89), fma(temp_87, fma(sin(temp_66), temp_90, temp_91), temp_88 * cos(temp_65) * cos(temp_66))), temp_68);
    temp_96 = fma(temp_93, fma(fma(sin(temp_66), temp_91, temp_90), temp_86, fma(temp_87, fma(sin(temp_66), temp_89, 0.0 - temp_92), temp_88 * sin(temp_65) * cos(temp_66))), temp_67);
    gl_Position.x = fma(temp_96, _sysViewUniformBlock.data[8].z, fma(temp_95, _sysViewUniformBlock.data[8].y, temp_94 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_96, _sysViewUniformBlock.data[9].z, fma(temp_95, _sysViewUniformBlock.data[9].y, temp_94 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_96, _sysViewUniformBlock.data[10].z, fma(temp_95, _sysViewUniformBlock.data[10].y, temp_94 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_96, _sysViewUniformBlock.data[11].z, fma(temp_95, _sysViewUniformBlock.data[11].y, temp_94 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_97 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_98 = temp_97 + 0.0 - floor(temp_97);
    }
    else
    {
        temp_98 = temp_5 * (1.0 / temp_6);
    }
    temp_99 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_100 = 1.0 / (_sysEmitterStaticUniformBlock.data[105].w + 0.0 - _sysEmitterStaticUniformBlock.data[104].w);
    temp_101 = 1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w);
    temp_102 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w);
    temp_103 = 1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w);
    temp_104 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w);
    temp_105 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w);
    temp_106 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_107 = 1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w);
    temp_108 = temp_5 * (1.0 / temp_6);
    temp_109 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w;
    temp_110 = sysTexCoordAttr.x;
    temp_111 = sysTexCoordAttr.y;
    temp_112 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w;
    temp_113 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w;
    temp_114 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w;
    temp_115 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w;
    temp_116 = temp_98 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_117 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w;
    temp_118 = temp_98 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_119 = temp_108 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_120 = temp_108 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_121 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_122 = fma(temp_119, 0.0 - temp_120, temp_119);
    temp_123 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_124 = temp_108 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w;
    temp_125 = temp_108 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_126 = floatBitsToInt(1.0 / float(uint(temp_106))) + -2;
    temp_127 = fma(temp_120, 0.0 - temp_125, temp_120);
    temp_128 = temp_98 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_129 = temp_98 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_130 = uint(max(trunc(float(0u) * intBitsToFloat(temp_126)), 0.0));
    temp_131 = temp_108 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_132 = floatBitsToInt(1.0 / float(uint(temp_121))) + -2;
    temp_133 = 0;
    temp_134 = temp_111;
    temp_135 = temp_110;
    if (temp_99)
    {
        temp_133 = 1;
    }
    temp_136 = fma(temp_125, 0.0 - temp_131, temp_125);
    temp_137 = temp_111;
    temp_138 = temp_111;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_17 > 0.5) ? -1 : 0)) != 0))
    {
        temp_137 = 0.0 - temp_111 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_138 = 0.0 - temp_111 + 1.0;
    }
    temp_139 = floatBitsToInt(1.0 / float(uint(temp_123))) + -2;
    temp_140 = (temp_106 & 0xFFFF) * (int(temp_130 >> 16)) & 0xFFFF | int(temp_130) << 16;
    temp_141 = floatBitsToInt(1.0 / float(uint(abs(temp_106)))) + -2;
    temp_142 = uint(max(trunc(float(0u) * intBitsToFloat(temp_132)), 0.0));
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_20 > 0.5) ? -1 : 0)) != 0))
    {
        temp_134 = 0.0 - temp_111 + 1.0;
    }
    temp_143 = uint(max(trunc(float(0u) * intBitsToFloat(temp_139)), 0.0));
    temp_144 = temp_133 == 1;
    temp_145 = temp_108 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_146 = uint(max(trunc(intBitsToFloat(temp_141) * float(0u)), 0.0));
    temp_147 = temp_110;
    temp_148 = temp_110;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_147 = 0.0 - temp_110 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_20 > 0.5) ? -1 : 0)) != 0))
    {
        temp_148 = 0.0 - temp_110 + 1.0;
    }
    temp_149 = fma(temp_131, 0.0 - temp_145, temp_131);
    temp_150 = floatBitsToInt(1.0 / float(uint(abs(temp_121)))) + -2;
    temp_151 = temp_9;
    temp_152 = temp_17;
    temp_153 = temp_20;
    temp_154 = temp_9;
    temp_155 = temp_17;
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_17 > 0.5) ? -1 : 0)) != 0))
    {
        temp_135 = 0.0 - temp_110 + 1.0;
    }
    if (temp_144)
    {
        temp_151 = temp_17;
    }
    temp_156 = temp_151;
    temp_157 = temp_151;
    if (temp_144)
    {
        temp_152 = temp_20;
    }
    temp_158 = temp_152;
    temp_159 = temp_152;
    if (temp_144)
    {
        temp_153 = temp_9;
    }
    temp_160 = temp_153;
    temp_161 = temp_153;
    if (temp_144)
    {
        temp_154 = temp_17;
    }
    temp_162 = (temp_121 & 0xFFFF) * (int(temp_142 >> 16)) & 0xFFFF | int(temp_142) << 16;
    temp_163 = (temp_123 & 0xFFFF) * (int(temp_143 >> 16)) & 0xFFFF | int(temp_143) << 16;
    temp_164 = temp_154;
    temp_165 = temp_154;
    if (temp_144)
    {
        temp_155 = temp_20;
    }
    temp_166 = temp_155;
    if (!temp_144)
    {
        temp_167 = temp_133 == 2;
        if (temp_167)
        {
            temp_156 = temp_20;
        }
        temp_157 = temp_156;
        if (temp_167)
        {
            temp_158 = temp_9;
        }
        temp_159 = temp_158;
        if (temp_167)
        {
            temp_160 = temp_17;
        }
        temp_161 = temp_160;
        if (temp_167)
        {
            temp_164 = temp_9;
        }
        temp_165 = temp_164;
        if (temp_167)
        {
            temp_166 = temp_17;
        }
    }
    temp_168 = floatBitsToInt(1.0 / float(uint(abs(temp_123)))) + -2;
    temp_169 = uint(max(trunc(float(0u) * intBitsToFloat(temp_150)), 0.0));
    temp_170 = (abs(temp_106) & 0xFFFF) * (int(temp_146 >> 16)) & 0xFFFF | int(temp_146) << 16;
    temp_171 = uint(max(trunc(float(0u) * intBitsToFloat(temp_168)), 0.0));
    temp_172 = 0;
    if (temp_99)
    {
        temp_172 = 2;
    }
    temp_173 = temp_172 == 1;
    temp_174 = (abs(temp_121) & 0xFFFF) * (int(temp_169 >> 16)) & 0xFFFF | int(temp_169) << 16;
    temp_175 = (abs(temp_123) & 0xFFFF) * (int(temp_171 >> 16)) & 0xFFFF | int(temp_171) << 16;
    temp_176 = temp_108 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_177 = fma(temp_145, 0.0 - temp_176, temp_145);
    temp_178 = temp_108 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_179 = temp_9;
    temp_180 = temp_17;
    temp_181 = temp_20;
    temp_182 = temp_9;
    temp_183 = temp_17;
    if (temp_173)
    {
        temp_179 = temp_17;
    }
    temp_184 = temp_179;
    temp_185 = temp_179;
    if (temp_173)
    {
        temp_180 = temp_20;
    }
    temp_186 = temp_180;
    temp_187 = temp_180;
    if (temp_173)
    {
        temp_181 = temp_9;
    }
    temp_188 = temp_181;
    temp_189 = temp_181;
    if (temp_173)
    {
        temp_182 = temp_17;
    }
    temp_190 = temp_182;
    temp_191 = temp_182;
    if (temp_173)
    {
        temp_183 = temp_20;
    }
    temp_192 = temp_183;
    if (!temp_173)
    {
        temp_193 = temp_172 == 2;
        if (temp_193)
        {
            temp_184 = temp_20;
        }
        temp_185 = temp_184;
        if (temp_193)
        {
            temp_186 = temp_9;
        }
        temp_187 = temp_186;
        if (temp_193)
        {
            temp_190 = temp_9;
        }
        temp_191 = temp_190;
        if (temp_193)
        {
            temp_188 = temp_17;
        }
        temp_189 = temp_188;
        if (temp_193)
        {
            temp_192 = temp_17;
        }
    }
    temp_194 = fma(temp_176, 0.0 - temp_178, temp_176);
    temp_195 = temp_108 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_196 = fma(temp_178, 0.0 - temp_195, temp_178);
    temp_197 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[52].x, fma(temp_161, _sysEmitterStaticUniformBlock.data[52].z, _sysEmitterStaticUniformBlock.data[52].z + _sysEmitterStaticUniformBlock.data[52].y));
    temp_198 = int(temp_130) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(0 - ((int(uint(temp_106) >> 16)) * (int(uint(temp_140) >> 16)) << 16) + (temp_106 & 0xFFFF) * (int(temp_130) & 0xFFFF) + (temp_140 << 16)))), 0.0)));
    temp_199 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_200 = int(temp_143) + int(uint(max(trunc(intBitsToFloat(temp_139) * float(uint(0 - ((int(uint(temp_123) >> 16)) * (int(uint(temp_163) >> 16)) << 16) + (temp_123 & 0xFFFF) * (int(temp_143) & 0xFFFF) + (temp_163 << 16)))), 0.0)));
    temp_201 = int(temp_142) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(temp_121) >> 16)) * (int(uint(temp_162) >> 16)) << 16) + (temp_121 & 0xFFFF) * (int(temp_142) & 0xFFFF) + (temp_162 << 16)))), 0.0)));
    temp_202 = int(temp_146) + int(uint(max(trunc(intBitsToFloat(temp_141) * float(uint(0 - ((int(uint(abs(temp_106)) >> 16)) * (int(uint(temp_170) >> 16)) << 16) + (abs(temp_106) & 0xFFFF) * (int(temp_146) & 0xFFFF) + (temp_170 << 16)))), 0.0)));
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_204 = fma(temp_199, temp_138, -0.5);
    temp_205 = fma(temp_203, temp_148, -0.5);
    temp_206 = (abs(temp_106) & 0xFFFF) * (int(uint(temp_202) >> 16)) & 0xFFFF | temp_202 << 16;
    temp_207 = int(temp_169) + int(uint(max(trunc(intBitsToFloat(temp_150) * float(uint(0 - ((int(uint(abs(temp_121)) >> 16)) * (int(uint(temp_174) >> 16)) << 16) + (abs(temp_121) & 0xFFFF) * (int(temp_169) & 0xFFFF) + (temp_174 << 16)))), 0.0)));
    temp_208 = (temp_106 & 0xFFFF) * (int(uint(temp_198) >> 16)) & 0xFFFF | temp_198 << 16;
    temp_209 = (temp_121 & 0xFFFF) * (int(uint(temp_201) >> 16)) & 0xFFFF | temp_201 << 16;
    temp_210 = int(temp_171) + int(uint(max(trunc(intBitsToFloat(temp_168) * float(uint(0 - ((int(uint(abs(temp_123)) >> 16)) * (int(uint(temp_175) >> 16)) << 16) + (abs(temp_123) & 0xFFFF) * (int(temp_171) & 0xFFFF) + (temp_175 << 16)))), 0.0)));
    temp_211 = (temp_123 & 0xFFFF) * (int(uint(temp_200) >> 16)) & 0xFFFF | temp_200 << 16;
    temp_212 = (abs(temp_121) & 0xFFFF) * (int(uint(temp_207) >> 16)) & 0xFFFF | temp_207 << 16;
    temp_213 = (abs(temp_123) & 0xFFFF) * (int(uint(temp_210) >> 16)) & 0xFFFF | temp_210 << 16;
    out_attr0.w = fma(temp_129, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_98 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_128, 0.0 - temp_129, temp_128), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_98 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_118, 0.0 - temp_128, temp_118), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_98 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_118, 0.0 - temp_116, temp_116), fma(temp_116, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_214 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_189, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_215 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_216 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_217 = fma(temp_215, temp_134, -0.5);
    temp_218 = fma(temp_216, temp_135, -0.5);
    temp_219 = 0 - temp_198 + ((uint(0 - ((int(uint(temp_106) >> 16)) * (int(uint(temp_208) >> 16)) << 16) + (temp_106 & 0xFFFF) * (temp_198 & 0xFFFF) + (temp_208 << 16)) >= uint(temp_106) ? -1 : 0));
    temp_220 = 0 - temp_201 + ((uint(0 - ((int(uint(temp_121) >> 16)) * (int(uint(temp_209) >> 16)) << 16) + (temp_121 & 0xFFFF) * (temp_201 & 0xFFFF) + (temp_209 << 16)) >= uint(temp_121) ? -1 : 0));
    temp_221 = 0 - temp_200 + ((uint(0 - ((int(uint(temp_123) >> 16)) * (int(uint(temp_211) >> 16)) << 16) + (temp_123 & 0xFFFF) * (temp_200 & 0xFFFF) + (temp_211 << 16)) >= uint(temp_123) ? -1 : 0));
    temp_222 = (temp_106 & 0xFFFF) * (int(uint(temp_219) >> 16)) & 0xFFFF | temp_219 << 16;
    temp_223 = (temp_121 & 0xFFFF) * (int(uint(temp_220) >> 16)) & 0xFFFF | temp_220 << 16;
    temp_224 = 0 - int(uint(temp_106) >> 31);
    temp_225 = 0 - int(uint(temp_121) >> 31);
    temp_226 = (temp_123 & 0xFFFF) * (int(uint(temp_221) >> 16)) & 0xFFFF | temp_221 << 16;
    temp_227 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_228 = 0 - int(uint(temp_123) >> 31);
    temp_229 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr5.y = fma(temp_195, _sysEmitterStaticUniformBlock.data[111].y, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[110].y + _sysEmitterStaticUniformBlock.data[111].y) * temp_105, temp_124, _sysEmitterStaticUniformBlock.data[110].y), temp_196, fma(fma(temp_117, (_sysEmitterStaticUniformBlock.data[110].y + 0.0 - _sysEmitterStaticUniformBlock.data[109].y) * temp_107, _sysEmitterStaticUniformBlock.data[109].y), temp_194, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[108].y + _sysEmitterStaticUniformBlock.data[109].y) * temp_104, temp_115, _sysEmitterStaticUniformBlock.data[108].y), temp_177, fma(fma((_sysEmitterStaticUniformBlock.data[108].y + 0.0 - _sysEmitterStaticUniformBlock.data[107].y) * temp_103, temp_114, _sysEmitterStaticUniformBlock.data[107].y), temp_149, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[106].y + _sysEmitterStaticUniformBlock.data[107].y) * temp_102, temp_109, _sysEmitterStaticUniformBlock.data[106].y), temp_136, fma(fma((_sysEmitterStaticUniformBlock.data[106].y + 0.0 - _sysEmitterStaticUniformBlock.data[105].y) * temp_101, temp_112, _sysEmitterStaticUniformBlock.data[105].y), temp_127, fma(fma((_sysEmitterStaticUniformBlock.data[105].y + 0.0 - _sysEmitterStaticUniformBlock.data[104].y) * temp_100, temp_113, _sysEmitterStaticUniformBlock.data[104].y), temp_122, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[104].y, _sysEmitterStaticUniformBlock.data[104].y)))))))));
    out_attr5.z = fma(temp_195, _sysEmitterStaticUniformBlock.data[111].z, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[110].z + _sysEmitterStaticUniformBlock.data[111].z) * temp_105, temp_124, _sysEmitterStaticUniformBlock.data[110].z), temp_196, fma(fma(temp_117, (_sysEmitterStaticUniformBlock.data[110].z + 0.0 - _sysEmitterStaticUniformBlock.data[109].z) * temp_107, _sysEmitterStaticUniformBlock.data[109].z), temp_194, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[108].z + _sysEmitterStaticUniformBlock.data[109].z) * temp_104, temp_115, _sysEmitterStaticUniformBlock.data[108].z), temp_177, fma(fma((_sysEmitterStaticUniformBlock.data[108].z + 0.0 - _sysEmitterStaticUniformBlock.data[107].z) * temp_103, temp_114, _sysEmitterStaticUniformBlock.data[107].z), temp_149, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[106].z + _sysEmitterStaticUniformBlock.data[107].z) * temp_102, temp_109, _sysEmitterStaticUniformBlock.data[106].z), temp_136, fma(fma((_sysEmitterStaticUniformBlock.data[106].z + 0.0 - _sysEmitterStaticUniformBlock.data[105].z) * temp_101, temp_112, _sysEmitterStaticUniformBlock.data[105].z), temp_127, fma(fma((_sysEmitterStaticUniformBlock.data[105].z + 0.0 - _sysEmitterStaticUniformBlock.data[104].z) * temp_100, temp_113, _sysEmitterStaticUniformBlock.data[104].z), temp_122, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[104].z, _sysEmitterStaticUniformBlock.data[104].z)))))))));
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr4.y = fma(temp_195, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[110].x + _sysEmitterStaticUniformBlock.data[111].x) * temp_105, temp_124, _sysEmitterStaticUniformBlock.data[110].x), temp_196, fma(fma(temp_117, (_sysEmitterStaticUniformBlock.data[110].x + 0.0 - _sysEmitterStaticUniformBlock.data[109].x) * temp_107, _sysEmitterStaticUniformBlock.data[109].x), temp_194, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[108].x + _sysEmitterStaticUniformBlock.data[109].x) * temp_104, temp_115, _sysEmitterStaticUniformBlock.data[108].x), temp_177, fma(fma((_sysEmitterStaticUniformBlock.data[108].x + 0.0 - _sysEmitterStaticUniformBlock.data[107].x) * temp_103, temp_114, _sysEmitterStaticUniformBlock.data[107].x), temp_149, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[106].x + _sysEmitterStaticUniformBlock.data[107].x) * temp_102, temp_109, _sysEmitterStaticUniformBlock.data[106].x), temp_136, fma(fma((_sysEmitterStaticUniformBlock.data[106].x + 0.0 - _sysEmitterStaticUniformBlock.data[105].x) * temp_101, temp_112, _sysEmitterStaticUniformBlock.data[105].x), temp_127, fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * temp_100, temp_113, _sysEmitterStaticUniformBlock.data[104].x), temp_122, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_227, temp_147, -0.5), fma(temp_227, float(temp_106 < 0 || !(temp_106 == 0) ? ((int(uint(temp_106) >> 16)) * (int(uint(temp_222) >> 16)) << 16) + (temp_106 & 0xFFFF) * (temp_219 & 0xFFFF) + (temp_222 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_17, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_229, temp_137, -0.5), 0.0 - fma(temp_229, 0.0 - float(temp_106 < 0 || !(temp_106 == 0) ? 0 - temp_224 + (temp_202 + 0 - (uint(0 - ((int(uint(abs(temp_106)) >> 16)) * (int(uint(temp_206) >> 16)) << 16) + (abs(temp_106) & 0xFFFF) * (temp_202 & 0xFFFF) + (temp_206 << 16)) >= uint(abs(temp_106)) ? -1 : 0) ^ temp_224) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_17 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_205, cos(temp_197), 0.0 - sin(temp_197) * temp_204), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_165, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_203, float(temp_121 < 0 || !(temp_121 == 0) ? ((int(uint(temp_121) >> 16)) * (int(uint(temp_223) >> 16)) << 16) + (temp_121 & 0xFFFF) * (temp_220 & 0xFFFF) + (temp_223 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_157 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_205, sin(temp_197), cos(temp_197) * temp_204), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_166, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].y + _sysEmitterStaticUniformBlock.data[51].w)), 0.0 - fma(temp_199, 0.0 - float(temp_121 < 0 || !(temp_121 == 0) ? 0 - temp_225 + (temp_207 + 0 - (uint(0 - ((int(uint(abs(temp_121)) >> 16)) * (int(uint(temp_212) >> 16)) << 16) + (abs(temp_121) & 0xFFFF) * (temp_207 & 0xFFFF) + (temp_212 << 16)) >= uint(abs(temp_121)) ? -1 : 0) ^ temp_225) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_159 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.x = fma(fma(temp_218, cos(temp_214), 0.0 - temp_217 * sin(temp_214)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_191, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_216, float(temp_123 < 0 || !(temp_123 == 0) ? ((int(uint(temp_123) >> 16)) * (int(uint(temp_226) >> 16)) << 16) + (temp_123 & 0xFFFF) * (temp_221 & 0xFFFF) + (temp_226 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_185 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr3.y = fma(fma(temp_218, sin(temp_214), cos(temp_214) * temp_217), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_192, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_215, 0.0 - float(temp_123 < 0 || !(temp_123 == 0) ? 0 - temp_228 + (temp_210 + 0 - (uint(0 - ((int(uint(abs(temp_123)) >> 16)) * (int(uint(temp_213) >> 16)) << 16) + (abs(temp_123) & 0xFFFF) * (temp_210 & 0xFFFF) + (temp_213 << 16)) >= uint(abs(temp_123)) ? -1 : 0) ^ temp_228) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_187 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
