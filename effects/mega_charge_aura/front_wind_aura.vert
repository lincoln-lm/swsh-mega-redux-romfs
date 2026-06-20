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
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    int temp_17;
    precise float temp_18;
    precise float temp_19;
    int temp_20;
    precise float temp_21;
    int temp_22;
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
    bool temp_37;
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
    int temp_101;
    int temp_102;
    bool temp_103;
    precise float temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    int temp_112;
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
    int temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    int temp_131;
    precise float temp_132;
    precise float temp_133;
    int temp_134;
    uint temp_135;
    precise float temp_136;
    int temp_137;
    bool temp_138;
    uint temp_139;
    uint temp_140;
    int temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    precise float temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    bool temp_151;
    int temp_152;
    int temp_153;
    bool temp_154;
    int temp_155;
    int temp_156;
    int temp_157;
    int temp_158;
    uint temp_159;
    uint temp_160;
    uint temp_161;
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
    bool temp_176;
    int temp_177;
    int temp_178;
    int temp_179;
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
    int temp_193;
    int temp_194;
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
    precise float temp_205;
    precise float temp_206;
    precise float temp_207;
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
    temp_12 = sysRandomAttr.y;
    temp_13 = sysRandomAttr.z;
    temp_14 = sysInitRotateAttr.x;
    temp_15 = sysInitRotateAttr.y;
    temp_16 = sysInitRotateAttr.z;
    temp_17 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_18 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_19 = floor(temp_9 * 2.0);
    temp_20 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_21 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_22 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_23 = floor(temp_12 * 2.0);
    temp_24 = float(abs(0 - (temp_20 > 0 ? -1 : 0) + 0 - (temp_20 >= 0 ? 0 : 1)));
    temp_25 = floor(temp_13 * 2.0);
    temp_26 = sysScaleAttr.w;
    temp_27 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_28 = intBitsToFloat(undef);
    temp_29 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_30 = temp_24;
    if (temp_27)
    {
        temp_28 = temp_5;
    }
    temp_31 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_32 = temp_28;
    if (!temp_27)
    {
        temp_29 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_33 = intBitsToFloat(undef);
    if (!temp_27)
    {
        temp_33 = 1.0 / temp_29;
    }
    temp_34 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_35 = fma(fma(temp_9 + temp_12, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_36 = fma(temp_31, 0.0 - temp_34, temp_31);
    temp_37 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_38 = fma(fma(temp_12 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_39 = temp_34;
    if (!temp_27)
    {
        temp_32 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_33, temp_33);
    }
    temp_40 = (0.0 - (temp_23 < 0.0 ? 1.0 : 0.0 )+ (temp_23 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_17 > 0 ? -1 : 0) + 0 - (temp_17 >= 0 ? 0 : 1)));
    temp_41 = fma(fma(temp_9 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_42 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_43 = (0.0 - (temp_25 < 0.0 ? 1.0 : 0.0) + (temp_25 > 0.0 ? 1.0 : 0.0)) * temp_24;
    temp_44 = (0.0 - (temp_19 < 0.0 ? 1.0 : 0.0) + (temp_19 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_22 > 0 ? -1 : 0) + 0 - (temp_22 >= 0 ? 0 : 1)));
    temp_45 = temp_42;
    if (temp_37)
    {
        temp_39 = temp_42 * temp_42;
    }
    temp_46 = temp_40 * temp_14;
    temp_47 = temp_39;
    temp_48 = temp_46;
    if (temp_37)
    {
        temp_47 = temp_39 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_49 = temp_47;
    if (temp_37)
    {
        temp_48 = temp_47 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_50 = temp_48;
    if (temp_37)
    {
        temp_30 = temp_47 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_51 = temp_30;
    if (temp_37)
    {
        temp_49 = temp_47 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_52 = temp_49;
    if (!temp_37)
    {
        temp_53 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_54 = (temp_42 + 0.0 - fma(temp_53, exp2(temp_42 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_53)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_50 = temp_54 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_51 = temp_54 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_52 = temp_54 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_37)
    {
        temp_55 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_45 = fma(exp2(temp_42 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_55, temp_55);
    }
    temp_56 = fma(fma(temp_45, sysLocalVecAttr.x, temp_50), temp_26, sysLocalPosAttr.x);
    temp_57 = fma(fma(temp_45, sysLocalVecAttr.y, temp_51), temp_26, sysLocalPosAttr.y);
    temp_58 = fma(fma(temp_45, sysLocalVecAttr.z, temp_52), temp_26, sysLocalPosAttr.z);
    temp_59 = fma(fma(temp_35 * temp_40, -2.0, temp_35), temp_32, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_46, -2.0, temp_14)));
    temp_60 = fma(fma(temp_41 * temp_44, -2.0, temp_41), temp_32, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_44 * temp_16, -2.0, temp_16)));
    if (0.0 == abs(_sysViewUniformBlock.data[16].z) && 0.0 == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_61 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.0 : 3.1415927;
        temp_62 = temp_61;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_62 = 0.0 - temp_61 + -0.0;
        }
        temp_63 = temp_62;
    }
    else if (intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].z) && intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_64 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.785398185 : 2.3561945;
        temp_65 = temp_64;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_65 = 0.0 - temp_64 + -0.0;
        }
        temp_63 = temp_65;
    }
    else
    {
        temp_66 = max(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_67 = min(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_68 = temp_66 >= 16.0;
        temp_69 = temp_66;
        temp_70 = temp_67;
        if (temp_68)
        {
            temp_69 = temp_66 * 0.0625;
        }
        if (temp_68)
        {
            temp_70 = temp_67 * 0.0625;
        }
        temp_71 = 1.0 / temp_69 * temp_70;
        temp_72 = temp_71 * temp_71;
        temp_73 = fma(temp_71 * temp_72 * fma(temp_72, fma(temp_72, -0.82336295, -5.67486715), -6.565555), 1.0 / fma(temp_72, fma(temp_72, temp_72 + 11.3353882, 28.842468), 19.69667), temp_71);
        temp_74 = temp_73;
        if (abs(_sysViewUniformBlock.data[16].x) > abs(_sysViewUniformBlock.data[16].z))
        {
            temp_74 = 0.0 - temp_73 + 1.57079637;
        }
        temp_75 = temp_74;
        if (0.0 > _sysViewUniformBlock.data[16].z)
        {
            temp_75 = 0.0 - temp_74 + 3.14159274;
        }
        temp_63 = temp_75;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_63 = 0.0 - temp_75 + -0.0;
        }
    }
    temp_76 = fma(fma(temp_38 * temp_43, -2.0, temp_38), temp_32, fma(temp_12 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_43 * temp_15, -2.0, temp_15))) + temp_63;
    temp_77 = cos(temp_59) * cos(temp_76);
    temp_78 = sin(temp_59) * sin(temp_76);
    temp_79 = fma(temp_34, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_18, _sysEmitterStaticUniformBlock.data[96].z), temp_36, fma(temp_31, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_80 = cos(temp_59) * sin(temp_76);
    temp_81 = fma(temp_34, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_18, _sysEmitterStaticUniformBlock.data[96].y), temp_36, fma(temp_31, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_82 = sin(temp_59) * cos(temp_76);
    temp_83 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_34, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_18, _sysEmitterStaticUniformBlock.data[96].x), temp_36, fma(temp_31, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_84 = fma(temp_58, sysEmtMat0Attr.z, fma(temp_57, sysEmtMat0Attr.y, temp_56 * sysEmtMat0Attr.x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_79, cos(temp_60) * sin(temp_76), fma(temp_83, cos(temp_60) * cos(temp_76), temp_81 * 0.0 - sin(temp_60)));
    temp_85 = fma(temp_58, sysEmtMat1Attr.z, fma(temp_57, sysEmtMat1Attr.y, temp_56 * sysEmtMat1Attr.x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_79, fma(sin(temp_60), temp_80, 0.0 - temp_82), fma(temp_83, fma(sin(temp_60), temp_77, temp_78), temp_81 * cos(temp_60) * cos(temp_59)));
    temp_86 = fma(temp_58, sysEmtMat2Attr.z, fma(temp_57, sysEmtMat2Attr.y, temp_56 * sysEmtMat2Attr.x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_79, fma(sin(temp_60), temp_78, temp_77), fma(temp_83, fma(sin(temp_60), temp_82, 0.0 - temp_80), temp_81 * cos(temp_60) * sin(temp_59)));
    temp_87 = fma(temp_86, _sysViewUniformBlock.data[0].z, fma(temp_85, _sysViewUniformBlock.data[0].y, temp_84 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_88 = fma(temp_86, _sysViewUniformBlock.data[1].z, fma(temp_85, _sysViewUniformBlock.data[1].y, temp_84 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_89 = fma(temp_86, _sysViewUniformBlock.data[2].z, fma(temp_85, _sysViewUniformBlock.data[2].y, temp_84 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_90 = fma(temp_86, _sysViewUniformBlock.data[3].z, fma(temp_85, _sysViewUniformBlock.data[3].y, temp_84 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_91 = fma(temp_86, _sysViewUniformBlock.data[11].z, fma(temp_85, _sysViewUniformBlock.data[11].y, temp_84 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_86, _sysViewUniformBlock.data[8].z, fma(temp_85, _sysViewUniformBlock.data[8].y, temp_84 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_86, _sysViewUniformBlock.data[9].z, fma(temp_85, _sysViewUniformBlock.data[9].y, temp_84 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_90, _sysViewUniformBlock.data[6].w, fma(temp_89, _sysViewUniformBlock.data[6].z, fma(temp_88, _sysViewUniformBlock.data[6].y, temp_87 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_90, _sysViewUniformBlock.data[7].w, fma(temp_89, _sysViewUniformBlock.data[7].z, fma(temp_88, _sysViewUniformBlock.data[7].y, temp_87 * _sysViewUniformBlock.data[7].x)))) * temp_91;
    gl_Position.w = temp_91;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_92 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_93 = temp_92 + 0.0 - floor(temp_92);
    }
    else
    {
        temp_93 = temp_5 * (1.0 / temp_6);
    }
    temp_94 = temp_93 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_95 = temp_93 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_96 = temp_93 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_97 = temp_93 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_98 = temp_93 >= _sysEmitterStaticUniformBlock.data[72].w ? 1.0 : 0.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_98, _sysEmitterStaticUniformBlock.data[72].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[71].x + _sysEmitterStaticUniformBlock.data[72].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[72].w + 0.0 - _sysEmitterStaticUniformBlock.data[71].w)), temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[71].w, _sysEmitterStaticUniformBlock.data[71].x), fma(temp_97, 0.0 - temp_98, temp_97), fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_96, 0.0 - temp_97, temp_96), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_95, 0.0 - temp_96, temp_95), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_95, 0.0 - temp_94, temp_94), fma(temp_94, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x)))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_99 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_100 = temp_99 + 0.0 - floor(temp_99);
    }
    else
    {
        temp_100 = temp_5 * (1.0 / temp_6);
    }
    temp_101 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_102 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_103 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_104 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[78].w;
    temp_105 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_106 = 1.0 / (_sysEmitterStaticUniformBlock.data[78].w + 0.0 - _sysEmitterStaticUniformBlock.data[77].w);
    temp_107 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[78].w + _sysEmitterStaticUniformBlock.data[79].w);
    temp_108 = sysTexCoordAttr.x;
    temp_109 = sysTexCoordAttr.y;
    temp_110 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_111 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[77].w;
    temp_112 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_113 = temp_100 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_114 = temp_100 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_115 = fma(temp_113, 0.0 - temp_114, temp_113);
    temp_116 = temp_100 >= _sysEmitterStaticUniformBlock.data[78].w ? 1.0 : 0.0;
    temp_117 = temp_108;
    temp_118 = temp_108;
    temp_119 = temp_108;
    temp_120 = temp_9;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_117 = 0.0 - temp_108 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_118 = 0.0 - temp_108 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_119 = 0.0 - temp_108 + 1.0;
    }
    temp_121 = temp_109;
    temp_122 = temp_109;
    temp_123 = temp_109;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_121 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_122 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_123 = 0.0 - temp_109 + 1.0;
    }
    temp_124 = fma(temp_114, 0.0 - temp_116, temp_114);
    temp_125 = temp_100 >= _sysEmitterStaticUniformBlock.data[79].w ? 1.0 : 0.0;
    temp_126 = fma(temp_116, 0.0 - temp_125, temp_116);
    temp_127 = 0;
    temp_128 = temp_12;
    if (temp_103)
    {
        temp_127 = 1;
    }
    temp_129 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_13, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_130 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_131 = floatBitsToInt(1.0 / float(uint(temp_101))) + -2;
    temp_132 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_133 = fma(temp_130, temp_121, -0.5);
    temp_134 = floatBitsToInt(1.0 / float(uint(temp_112))) + -2;
    temp_135 = uint(max(trunc(float(0u) * intBitsToFloat(temp_131)), 0.0));
    temp_136 = fma(temp_132, temp_117, -0.5);
    temp_137 = floatBitsToInt(1.0 / float(uint(temp_102))) + -2;
    temp_138 = temp_127 == 1;
    temp_139 = uint(max(trunc(float(0u) * intBitsToFloat(temp_134)), 0.0));
    temp_140 = uint(max(trunc(float(0u) * intBitsToFloat(temp_137)), 0.0));
    temp_141 = (temp_101 & 0xFFFF) * (int(temp_135 >> 16)) & 0xFFFF | int(temp_135) << 16;
    temp_142 = temp_9;
    temp_143 = temp_12;
    if (temp_138)
    {
        temp_120 = temp_12;
    }
    temp_144 = temp_120;
    temp_145 = temp_120;
    if (temp_138)
    {
        temp_128 = temp_13;
    }
    temp_146 = temp_128;
    temp_147 = temp_128;
    if (temp_138)
    {
        temp_142 = temp_12;
    }
    temp_148 = temp_142;
    temp_149 = temp_142;
    if (temp_138)
    {
        temp_143 = temp_13;
    }
    temp_150 = temp_143;
    if (!temp_138)
    {
        temp_151 = temp_127 == 2;
        if (temp_151)
        {
            temp_144 = temp_13;
        }
        temp_145 = temp_144;
        if (temp_151)
        {
            temp_146 = temp_9;
        }
        temp_147 = temp_146;
        if (temp_151)
        {
            temp_148 = temp_9;
        }
        temp_149 = temp_148;
        if (temp_151)
        {
            temp_150 = temp_12;
        }
    }
    temp_152 = 0;
    if (temp_103)
    {
        temp_152 = 2;
    }
    temp_153 = (temp_102 & 0xFFFF) * (int(temp_140 >> 16)) & 0xFFFF | int(temp_140) << 16;
    temp_154 = temp_152 == 1;
    temp_155 = (temp_112 & 0xFFFF) * (int(temp_139 >> 16)) & 0xFFFF | int(temp_139) << 16;
    temp_156 = floatBitsToInt(1.0 / float(uint(abs(temp_101)))) + -2;
    temp_157 = floatBitsToInt(1.0 / float(uint(abs(temp_102)))) + -2;
    temp_158 = floatBitsToInt(1.0 / float(uint(abs(temp_112)))) + -2;
    temp_159 = uint(max(trunc(intBitsToFloat(temp_156) * float(0u)), 0.0));
    temp_160 = uint(max(trunc(float(0u) * intBitsToFloat(temp_157)), 0.0));
    temp_161 = uint(max(trunc(float(0u) * intBitsToFloat(temp_158)), 0.0));
    temp_162 = temp_9;
    temp_163 = temp_12;
    temp_164 = temp_13;
    temp_165 = temp_9;
    temp_166 = temp_12;
    if (temp_154)
    {
        temp_162 = temp_12;
    }
    temp_167 = temp_162;
    temp_168 = temp_162;
    if (temp_154)
    {
        temp_163 = temp_13;
    }
    temp_169 = temp_163;
    temp_170 = temp_163;
    if (temp_154)
    {
        temp_164 = temp_9;
    }
    temp_171 = temp_164;
    temp_172 = temp_164;
    if (temp_154)
    {
        temp_165 = temp_12;
    }
    temp_173 = temp_165;
    temp_174 = temp_165;
    if (temp_154)
    {
        temp_166 = temp_13;
    }
    temp_175 = temp_166;
    if (!temp_154)
    {
        temp_176 = temp_152 == 2;
        if (temp_176)
        {
            temp_167 = temp_13;
        }
        temp_168 = temp_167;
        if (temp_176)
        {
            temp_169 = temp_9;
        }
        temp_170 = temp_169;
        if (temp_176)
        {
            temp_173 = temp_9;
        }
        temp_174 = temp_173;
        if (temp_176)
        {
            temp_171 = temp_12;
        }
        temp_172 = temp_171;
        if (temp_176)
        {
            temp_175 = temp_12;
        }
    }
    temp_177 = (abs(temp_101) & 0xFFFF) * (int(temp_159 >> 16)) & 0xFFFF | int(temp_159) << 16;
    temp_178 = (abs(temp_102) & 0xFFFF) * (int(temp_160 >> 16)) & 0xFFFF | int(temp_160) << 16;
    temp_179 = (abs(temp_112) & 0xFFFF) * (int(temp_161 >> 16)) & 0xFFFF | int(temp_161) << 16;
    temp_180 = int(temp_135) + int(uint(max(trunc(intBitsToFloat(temp_131) * float(uint(0 - ((int(uint(temp_101) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_101 & 0xFFFF) * (int(temp_135) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_181 = int(temp_159) + int(uint(max(trunc(intBitsToFloat(temp_156) * float(uint(0 - ((int(uint(abs(temp_101)) >> 16)) * (int(uint(temp_177) >> 16)) << 16) + (abs(temp_101) & 0xFFFF) * (int(temp_159) & 0xFFFF) + (temp_177 << 16)))), 0.0)));
    temp_182 = (temp_101 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_183 = int(temp_140) + int(uint(max(trunc(intBitsToFloat(temp_137) * float(uint(0 - ((int(uint(temp_102) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (temp_102 & 0xFFFF) * (int(temp_140) & 0xFFFF) + (temp_153 << 16)))), 0.0)));
    temp_184 = (abs(temp_101) & 0xFFFF) * (int(uint(temp_181) >> 16)) & 0xFFFF | temp_181 << 16;
    temp_185 = int(temp_139) + int(uint(max(trunc(intBitsToFloat(temp_134) * float(uint(0 - ((int(uint(temp_112) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (temp_112 & 0xFFFF) * (int(temp_139) & 0xFFFF) + (temp_155 << 16)))), 0.0)));
    temp_186 = int(temp_160) + int(uint(max(trunc(intBitsToFloat(temp_157) * float(uint(0 - ((int(uint(abs(temp_102)) >> 16)) * (int(uint(temp_178) >> 16)) << 16) + (abs(temp_102) & 0xFFFF) * (int(temp_160) & 0xFFFF) + (temp_178 << 16)))), 0.0)));
    temp_187 = (temp_102 & 0xFFFF) * (int(uint(temp_183) >> 16)) & 0xFFFF | temp_183 << 16;
    temp_188 = int(temp_161) + int(uint(max(trunc(intBitsToFloat(temp_158) * float(uint(0 - ((int(uint(abs(temp_112)) >> 16)) * (int(uint(temp_179) >> 16)) << 16) + (abs(temp_112) & 0xFFFF) * (int(temp_161) & 0xFFFF) + (temp_179 << 16)))), 0.0)));
    temp_189 = (temp_112 & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_190 = (abs(temp_102) & 0xFFFF) * (int(uint(temp_186) >> 16)) & 0xFFFF | temp_186 << 16;
    temp_191 = (abs(temp_112) & 0xFFFF) * (int(uint(temp_188) >> 16)) & 0xFFFF | temp_188 << 16;
    temp_192 = 0 - temp_180 + ((uint(0 - ((int(uint(temp_101) >> 16)) * (int(uint(temp_182) >> 16)) << 16) + (temp_101 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_182 << 16)) >= uint(temp_101) ? -1 : 0));
    temp_193 = (temp_101 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_194 = 0 - temp_185 + ((uint(0 - ((int(uint(temp_112) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (temp_112 & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_189 << 16)) >= uint(temp_112) ? -1 : 0));
    temp_195 = 0 - temp_183 + ((uint(0 - ((int(uint(temp_102) >> 16)) * (int(uint(temp_187) >> 16)) << 16) + (temp_102 & 0xFFFF) * (temp_183 & 0xFFFF) + (temp_187 << 16)) >= uint(temp_102) ? -1 : 0));
    temp_196 = 0 - int(uint(temp_102) >> 31);
    temp_197 = 0 - int(uint(temp_101) >> 31);
    temp_198 = (temp_102 & 0xFFFF) * (int(uint(temp_195) >> 16)) & 0xFFFF | temp_195 << 16;
    temp_199 = (temp_112 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_200 = 0 - int(uint(temp_112) >> 31);
    temp_201 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_172, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_204 = fma(temp_202, temp_123, -0.5);
    temp_205 = fma(temp_203, temp_119, -0.5);
    temp_206 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_207 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr4.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr5.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(temp_125, _sysEmitterStaticUniformBlock.data[79].x, fma(fma(temp_104, (0.0 - _sysEmitterStaticUniformBlock.data[78].x + _sysEmitterStaticUniformBlock.data[79].x) * temp_107, _sysEmitterStaticUniformBlock.data[78].x), temp_126, fma(fma((_sysEmitterStaticUniformBlock.data[78].x + 0.0 - _sysEmitterStaticUniformBlock.data[77].x) * temp_106, temp_111, _sysEmitterStaticUniformBlock.data[77].x), temp_124, fma(fma(temp_110, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_105, _sysEmitterStaticUniformBlock.data[76].x), temp_115, fma(temp_113, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_125, _sysEmitterStaticUniformBlock.data[79].y, fma(fma(temp_104, (0.0 - _sysEmitterStaticUniformBlock.data[78].y + _sysEmitterStaticUniformBlock.data[79].y) * temp_107, _sysEmitterStaticUniformBlock.data[78].y), temp_126, fma(fma((_sysEmitterStaticUniformBlock.data[78].y + 0.0 - _sysEmitterStaticUniformBlock.data[77].y) * temp_106, temp_111, _sysEmitterStaticUniformBlock.data[77].y), temp_124, fma(fma(temp_110, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_105, _sysEmitterStaticUniformBlock.data[76].y), temp_115, fma(temp_113, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_125, _sysEmitterStaticUniformBlock.data[79].z, fma(fma(temp_104, (0.0 - _sysEmitterStaticUniformBlock.data[78].z + _sysEmitterStaticUniformBlock.data[79].z) * temp_107, _sysEmitterStaticUniformBlock.data[78].z), temp_126, fma(fma((_sysEmitterStaticUniformBlock.data[78].z + 0.0 - _sysEmitterStaticUniformBlock.data[77].z) * temp_106, temp_111, _sysEmitterStaticUniformBlock.data[77].z), temp_124, fma(fma(temp_110, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_105, _sysEmitterStaticUniformBlock.data[76].z), temp_115, fma(temp_113, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr3.x = fma(fma(temp_205, cos(temp_201), 0.0 - temp_204 * sin(temp_201)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_174, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_203, float(temp_112 < 0 || !(temp_112 == 0) ? ((int(uint(temp_112) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_112 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_199 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_168 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_129), temp_136, 0.0 - temp_133 * sin(temp_129)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_132, float(temp_101 < 0 || !(temp_101 == 0) ? ((int(uint(temp_101) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_101 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_193 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_136, sin(temp_129), temp_133 * cos(temp_129)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_12, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_130, 0.0 - float(temp_101 < 0 || !(temp_101 == 0) ? 0 - temp_197 + (temp_181 + 0 - (uint(0 - ((int(uint(abs(temp_101)) >> 16)) * (int(uint(temp_184) >> 16)) << 16) + (abs(temp_101) & 0xFFFF) * (temp_181 & 0xFFFF) + (temp_184 << 16)) >= uint(abs(temp_101)) ? -1 : 0) ^ temp_197) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_12 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_149, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_206, temp_118, -0.5), fma(temp_206, float(temp_102 < 0 || !(temp_102 == 0) ? ((int(uint(temp_102) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_102 & 0xFFFF) * (temp_195 & 0xFFFF) + (temp_198 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_145 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_150, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_207, temp_122, -0.5), 0.0 - fma(temp_207, 0.0 - float(temp_102 < 0 || !(temp_102 == 0) ? 0 - temp_196 + (temp_186 + 0 - (uint(0 - ((int(uint(abs(temp_102)) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (abs(temp_102) & 0xFFFF) * (temp_186 & 0xFFFF) + (temp_190 << 16)) >= uint(abs(temp_102)) ? -1 : 0) ^ temp_196) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_147 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_205, sin(temp_201), cos(temp_201) * temp_204), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_175, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_202, 0.0 - float(temp_112 < 0 || !(temp_112 == 0) ? 0 - temp_200 + (temp_188 + 0 - (uint(0 - ((int(uint(abs(temp_112)) >> 16)) * (int(uint(temp_191) >> 16)) << 16) + (abs(temp_112) & 0xFFFF) * (temp_188 & 0xFFFF) + (temp_191 << 16)) >= uint(abs(temp_112)) ? -1 : 0) ^ temp_200) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_170 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
