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
    precise float temp_53;
    int temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    precise float temp_60;
    bool temp_61;
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
    bool temp_83;
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
    int temp_125;
    int temp_126;
    int temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    int temp_132;
    int temp_133;
    int temp_134;
    precise float temp_135;
    int temp_136;
    uint temp_137;
    precise float temp_138;
    uint temp_139;
    uint temp_140;
    precise float temp_141;
    uint temp_142;
    bool temp_143;
    int temp_144;
    int temp_145;
    int temp_146;
    int temp_147;
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
    bool temp_167;
    precise float temp_168;
    precise float temp_169;
    precise float temp_170;
    precise float temp_171;
    int temp_172;
    int temp_173;
    int temp_174;
    int temp_175;
    int temp_176;
    int temp_177;
    int temp_178;
    int temp_179;
    int temp_180;
    int temp_181;
    int temp_182;
    int temp_183;
    int temp_184;
    int temp_185;
    precise float temp_186;
    precise float temp_187;
    precise float temp_188;
    precise float temp_189;
    precise float temp_190;
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
    temp_27 = sqrt(temp_20);
    if (temp_22)
    {
        temp_25 = inversesqrt(temp_19);
    }
    temp_28 = intBitsToFloat(undef);
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
    temp_43 = temp_41;
    if (temp_22)
    {
        temp_35 = temp_25 * temp_9;
    }
    if (temp_22)
    {
        temp_33 = temp_25 * temp_12;
    }
    if (temp_23)
    {
        temp_40 = temp_31 * temp_10;
    }
    if (temp_23)
    {
        temp_39 = temp_31 * temp_13;
    }
    temp_44 = intBitsToFloat(undef);
    if (temp_24)
    {
        temp_44 = temp_34 * temp_11;
    }
    temp_45 = temp_44;
    if (temp_24)
    {
        temp_43 = temp_34 * temp_14;
    }
    if (temp_22)
    {
        temp_30 = temp_25 * temp_15;
    }
    if (temp_23)
    {
        temp_37 = temp_31 * temp_16;
    }
    if (temp_24)
    {
        temp_42 = temp_34 * temp_17;
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
    temp_48 = sysRandomAttr.y;
    temp_49 = sysRandomAttr.z;
    temp_50 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_51 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_52 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_53 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_54 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_55 = floor(temp_48 * 2.0);
    temp_56 = floor(temp_49 * 2.0);
    temp_57 = floor(temp_18 * 2.0);
    temp_58 = temp_47 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_59 = temp_47 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_60 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_61 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_62 = sysInitRotateAttr.x;
    temp_63 = sysInitRotateAttr.y;
    temp_64 = sysInitRotateAttr.z;
    temp_65 = temp_47 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_66 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_67 = temp_60;
    temp_68 = 2.0;
    temp_69 = temp_62;
    if (!temp_61)
    {
        temp_66 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_70 = temp_47 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    if (!temp_61)
    {
        temp_67 = 1.0 / temp_66;
    }
    temp_71 = fma(temp_65, 0.0 - temp_70, temp_65);
    temp_72 = temp_47 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_73 = fma(fma(temp_18 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_74 = (0.0 - temp_55 < 0.0 ? 1.0 : 0.0 + (temp_55 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_50 > 0 ? -1 : 0) + 0 - temp_50 >= 0 ? 0 : 1));
    temp_75 = fma(temp_70, 0.0 - temp_72, temp_70);
    temp_76 = (0.0 - temp_57 < 0.0 ? 1.0 : 0.0 + (temp_57 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_54 > 0 ? -1 : 0) + 0 - temp_54 >= 0 ? 0 : 1));
    temp_77 = fma(fma(temp_18 + temp_48, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_78 = fma(fma(temp_48 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_79 = temp_77;
    temp_80 = temp_78;
    if (!temp_61)
    {
        temp_68 = fma(exp2(temp_60), 0.0 - temp_67, temp_67);
    }
    temp_81 = temp_68;
    if (temp_61)
    {
        temp_81 = temp_5;
    }
    temp_82 = (0.0 - temp_56 < 0.0 ? 1.0 : 0.0 + (temp_56 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_52 > 0 ? -1 : 0) + 0 - temp_52 >= 0 ? 0 : 1));
    temp_83 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_84 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_85 = fma(temp_76 * temp_64, -2.0, temp_64);
    temp_86 = temp_85;
    temp_87 = temp_84;
    if (temp_83)
    {
        temp_69 = temp_84 * temp_84;
    }
    temp_88 = temp_48 + -0.5;
    temp_89 = temp_88;
    if (temp_83)
    {
        temp_86 = temp_69 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_90 = fma(fma(temp_73 * temp_76, -2.0, temp_73), temp_81, fma(temp_49 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, temp_85));
    if (temp_83)
    {
        temp_89 = temp_86 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_91 = temp_89;
    if (temp_83)
    {
        temp_79 = temp_86 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_92 = temp_79;
    if (temp_83)
    {
        temp_80 = temp_86 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_93 = temp_80;
    if (!temp_83)
    {
        temp_94 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_95 = (temp_84 + 0.0 - fma(temp_94, exp2(temp_84 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_94)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_91 = temp_95 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_92 = temp_95 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_93 = temp_95 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    if (!temp_83)
    {
        temp_96 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_87 = fma(exp2(temp_84 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_96, temp_96);
    }
    temp_97 = sysScaleAttr.w;
    temp_98 = fma(fma(temp_77 * temp_74, -2.0, temp_77), temp_81, fma(temp_18 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_74 * temp_62, -2.0, temp_62)));
    temp_99 = fma(fma(temp_78 * temp_82, -2.0, temp_78), temp_81, fma(temp_88, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_82 * temp_63, -2.0, temp_63)));
    temp_100 = fma(temp_72, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_59, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_53, _sysEmitterStaticUniformBlock.data[97].y), temp_75, fma(fma(temp_58, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_51, _sysEmitterStaticUniformBlock.data[96].y), temp_71, fma(temp_65, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_101 = (clamp(min(0.0, temp_18) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_72, _sysEmitterStaticUniformBlock.data[98].x, fma(fma(temp_59, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_53, _sysEmitterStaticUniformBlock.data[97].x), temp_75, fma(fma(temp_58, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_51, _sysEmitterStaticUniformBlock.data[96].x), temp_71, fma(temp_65, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_102 = fma(temp_72, _sysEmitterStaticUniformBlock.data[98].z, fma(fma(temp_59, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_53, _sysEmitterStaticUniformBlock.data[97].z), temp_75, fma(fma(temp_58, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_51, _sysEmitterStaticUniformBlock.data[96].z), temp_71, fma(temp_65, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_103 = sin(temp_98) * sin(temp_99);
    temp_104 = cos(temp_98) * cos(temp_99);
    temp_105 = sin(temp_98) * cos(temp_99);
    temp_106 = cos(temp_98) * sin(temp_99);
    temp_107 = fma(fma(temp_87, sysLocalVecAttr.x, temp_93), temp_97, sysLocalPosAttr.x);
    temp_108 = fma(fma(temp_87, sysLocalVecAttr.y, temp_91), temp_97, sysLocalPosAttr.y);
    temp_109 = 0.0 + fma(cos(temp_90) * sin(temp_99), temp_102, fma(temp_101, cos(temp_90) * cos(temp_99), temp_100 * 0.0 - sin(temp_90)));
    temp_110 = fma(fma(temp_87, sysLocalVecAttr.z, temp_92), temp_97, sysLocalPosAttr.z);
    temp_111 = 0.0 + fma(fma(sin(temp_90), temp_106, 0.0 - temp_105), temp_102, fma(temp_101, fma(sin(temp_90), temp_104, temp_103), temp_100 * cos(temp_90) * cos(temp_98)));
    temp_112 = 0.0 + fma(fma(sin(temp_90), temp_103, temp_104), temp_102, fma(temp_101, fma(sin(temp_90), temp_105, 0.0 - temp_106), temp_100 * cos(temp_90) * sin(temp_98)));
    temp_113 = fma(0.0, temp_102, fma(0.0, temp_101, 0.0 * temp_100)) + 1.0;
    temp_114 = fma(fma(temp_110, temp_11, fma(temp_108, temp_10, temp_107 * temp_9)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_113, fma(temp_112, temp_45, fma(temp_111, temp_40, temp_109 * temp_35)));
    temp_115 = fma(fma(temp_110, temp_14, fma(temp_108, temp_13, temp_107 * temp_12)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_113, fma(temp_112, temp_43, fma(temp_111, temp_39, temp_109 * temp_33)));
    temp_116 = fma(fma(temp_110, temp_17, fma(temp_108, temp_16, temp_107 * temp_15)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_113, fma(temp_112, temp_42, fma(temp_111, temp_37, temp_109 * temp_30)));
    out_attr5.x = temp_114;
    out_attr5.y = temp_115;
    out_attr5.z = temp_116;
    gl_Position.x = fma(temp_116, _sysViewUniformBlock.data[8].z, fma(temp_115, _sysViewUniformBlock.data[8].y, temp_114 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_116, _sysViewUniformBlock.data[9].z, fma(temp_115, _sysViewUniformBlock.data[9].y, temp_114 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_116, _sysViewUniformBlock.data[10].z, fma(temp_115, _sysViewUniformBlock.data[10].y, temp_114 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_116, _sysViewUniformBlock.data[11].z, fma(temp_115, _sysViewUniformBlock.data[11].y, temp_114 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_117 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_118 = temp_117 + 0.0 - floor(temp_117);
    }
    else
    {
        temp_118 = temp_5 * (1.0 / temp_6);
    }
    temp_119 = temp_118 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_120 = temp_118 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_121 = temp_118 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_122 = temp_118 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_122, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_118 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_121, 0.0 - temp_122, temp_121), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_118 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_120, 0.0 - temp_121, temp_120), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_118 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_120, 0.0 - temp_119, temp_119), fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_123 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_124 = temp_123 + 0.0 - floor(temp_123);
    }
    else
    {
        temp_124 = temp_5 * (1.0 / temp_6);
    }
    temp_125 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_126 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_127 = 0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_127 = 1;
    }
    temp_128 = sysTexCoordAttr.x;
    temp_129 = sysTexCoordAttr.y;
    temp_130 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_131 = temp_124 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_132 = floatBitsToInt(1.0 / float(uint(temp_125))) + -2;
    temp_133 = floatBitsToInt(1.0 / float(uint(temp_126))) + -2;
    temp_134 = floatBitsToInt(1.0 / float(uint(abs(temp_125)))) + -2;
    temp_135 = temp_124 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_136 = floatBitsToInt(1.0 / float(uint(abs(temp_126)))) + -2;
    temp_137 = uint(max(trunc(float(0u) * intBitsToFloat(temp_132)), 0.0));
    temp_138 = temp_124 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_139 = uint(max(trunc(intBitsToFloat(temp_136) * float(0u)), 0.0));
    temp_140 = uint(max(trunc(float(0u) * intBitsToFloat(temp_133)), 0.0));
    temp_141 = fma(temp_135, 0.0 - temp_138, temp_135);
    temp_142 = uint(max(trunc(float(0u) * intBitsToFloat(temp_134)), 0.0));
    temp_143 = temp_127 == 1;
    temp_144 = (temp_125 & 0xFFFF) * (int(temp_137 >> 16)) & 0xFFFF | int(temp_137) << 16;
    temp_145 = (abs(temp_126) & 0xFFFF) * (int(temp_139 >> 16)) & 0xFFFF | int(temp_139) << 16;
    temp_146 = (temp_126 & 0xFFFF) * (int(temp_140 >> 16)) & 0xFFFF | int(temp_140) << 16;
    temp_147 = (abs(temp_125) & 0xFFFF) * (int(temp_142 >> 16)) & 0xFFFF | int(temp_142) << 16;
    temp_148 = temp_128;
    temp_149 = temp_129;
    temp_150 = temp_128;
    temp_151 = temp_129;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_18 > 0.5) ? -1 : 0)) != 0))
    {
        temp_148 = 0.0 - temp_128 + 1.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_48 > 0.5) ? -1 : 0)) != 0))
    {
        temp_149 = 0.0 - temp_129 + 1.0;
    }
    temp_152 = temp_18;
    temp_153 = temp_48;
    temp_154 = temp_49;
    temp_155 = temp_18;
    temp_156 = temp_48;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_150 = 0.0 - temp_128 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_151 = 0.0 - temp_129 + 1.0;
    }
    temp_157 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_49, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    if (temp_143)
    {
        temp_152 = temp_48;
    }
    temp_158 = temp_152;
    temp_159 = temp_152;
    if (temp_143)
    {
        temp_153 = temp_49;
    }
    temp_160 = temp_153;
    temp_161 = temp_153;
    if (temp_143)
    {
        temp_154 = temp_18;
    }
    temp_162 = temp_154;
    temp_163 = temp_154;
    if (temp_143)
    {
        temp_155 = temp_48;
    }
    temp_164 = temp_155;
    temp_165 = temp_155;
    if (temp_143)
    {
        temp_156 = temp_49;
    }
    temp_166 = temp_156;
    if (!temp_143)
    {
        temp_167 = temp_127 == 2;
        if (temp_167)
        {
            temp_158 = temp_49;
        }
        temp_159 = temp_158;
        if (temp_167)
        {
            temp_160 = temp_18;
        }
        temp_161 = temp_160;
        if (temp_167)
        {
            temp_164 = temp_18;
        }
        temp_165 = temp_164;
        if (temp_167)
        {
            temp_162 = temp_48;
        }
        temp_163 = temp_162;
        if (temp_167)
        {
            temp_166 = temp_48;
        }
    }
    temp_168 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_169 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_170 = fma(temp_168, temp_149, -0.5);
    temp_171 = fma(temp_169, temp_148, -0.5);
    temp_172 = int(temp_140) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(0 - ((int(uint(temp_126) >> 16)) * (int(uint(temp_146) >> 16)) << 16) + (temp_126 & 0xFFFF) * (int(temp_140) & 0xFFFF) + (temp_146 << 16)))), 0.0)));
    temp_173 = int(temp_137) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(temp_125) >> 16)) * (int(uint(temp_144) >> 16)) << 16) + (temp_125 & 0xFFFF) * (int(temp_137) & 0xFFFF) + (temp_144 << 16)))), 0.0)));
    temp_174 = int(temp_142) + int(uint(max(trunc(intBitsToFloat(temp_134) * float(uint(0 - ((int(uint(abs(temp_125)) >> 16)) * (int(uint(temp_147) >> 16)) << 16) + (abs(temp_125) & 0xFFFF) * (int(temp_142) & 0xFFFF) + (temp_147 << 16)))), 0.0)));
    temp_175 = int(temp_139) + int(uint(max(trunc(intBitsToFloat(temp_136) * float(uint(0 - ((int(uint(abs(temp_126)) >> 16)) * (int(uint(temp_145) >> 16)) << 16) + (abs(temp_126) & 0xFFFF) * (int(temp_139) & 0xFFFF) + (temp_145 << 16)))), 0.0)));
    temp_176 = (temp_126 & 0xFFFF) * (int(uint(temp_172) >> 16)) & 0xFFFF | temp_172 << 16;
    temp_177 = (temp_125 & 0xFFFF) * (int(uint(temp_173) >> 16)) & 0xFFFF | temp_173 << 16;
    temp_178 = (abs(temp_125) & 0xFFFF) * (int(uint(temp_174) >> 16)) & 0xFFFF | temp_174 << 16;
    temp_179 = (abs(temp_126) & 0xFFFF) * (int(uint(temp_175) >> 16)) & 0xFFFF | temp_175 << 16;
    temp_180 = 0 - temp_172 + ((uint(0 - ((int(uint(temp_126) >> 16)) * (int(uint(temp_176) >> 16)) << 16) + (temp_126 & 0xFFFF) * (temp_172 & 0xFFFF) + (temp_176 << 16)) >= uint(temp_126) ? -1 : 0));
    temp_181 = (temp_126 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_182 = 0 - temp_173 + ((uint(0 - ((int(uint(temp_125) >> 16)) * (int(uint(temp_177) >> 16)) << 16) + (temp_125 & 0xFFFF) * (temp_173 & 0xFFFF) + (temp_177 << 16)) >= uint(temp_125) ? -1 : 0));
    temp_183 = 0 - int(uint(temp_126) >> 31);
    temp_184 = 0 - int(uint(temp_125) >> 31);
    temp_185 = (temp_125 & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_186 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_187 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[52].x, fma(temp_163, _sysEmitterStaticUniformBlock.data[52].z, _sysEmitterStaticUniformBlock.data[52].z + _sysEmitterStaticUniformBlock.data[52].y));
    temp_188 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_189 = fma(temp_186, temp_150, -0.5);
    temp_190 = fma(temp_188, temp_151, -0.5);
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(temp_138, _sysEmitterStaticUniformBlock.data[77].x, fma(fma(temp_131, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_130, _sysEmitterStaticUniformBlock.data[76].x), temp_141, fma(temp_135, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_138, _sysEmitterStaticUniformBlock.data[77].y, fma(fma(temp_131, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_130, _sysEmitterStaticUniformBlock.data[76].y), temp_141, fma(temp_135, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_138, _sysEmitterStaticUniformBlock.data[77].z, fma(fma(temp_131, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_130, _sysEmitterStaticUniformBlock.data[76].z), temp_141, fma(temp_135, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr2.x = fma(fma(cos(temp_157), temp_171, 0.0 - temp_170 * sin(temp_157)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_18, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), fma(temp_169, float(temp_126 < 0 || !(temp_126 == 0) ? ((int(uint(temp_126) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (temp_126 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_181 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_18 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_171, sin(temp_157), temp_170 * cos(temp_157)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_48, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_168, 0.0 - float(temp_126 < 0 || !(temp_126 == 0) ? 0 - temp_183 + (temp_175 + 0 - (uint(0 - ((int(uint(abs(temp_126)) >> 16)) * (int(uint(temp_179) >> 16)) << 16) + (abs(temp_126) & 0xFFFF) * (temp_175 & 0xFFFF) + (temp_179 << 16)) >= uint(abs(temp_126)) ? -1 : 0) ^ temp_183) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_48 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(cos(temp_187), temp_189, 0.0 - temp_190 * sin(temp_187)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_165, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].x + _sysEmitterStaticUniformBlock.data[51].z)), fma(temp_186, float(temp_125 < 0 || !(temp_125 == 0) ? ((int(uint(temp_125) >> 16)) * (int(uint(temp_185) >> 16)) << 16) + (temp_125 & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_185 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_159 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_189, sin(temp_187), temp_190 * cos(temp_187)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_166, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].y + _sysEmitterStaticUniformBlock.data[51].w)), 0.0 - fma(temp_188, 0.0 - float(temp_125 < 0 || !(temp_125 == 0) ? 0 - temp_184 + (temp_174 + 0 - (uint(0 - ((int(uint(abs(temp_125)) >> 16)) * (int(uint(temp_178) >> 16)) << 16) + (abs(temp_125) & 0xFFFF) * (temp_174 & 0xFFFF) + (temp_178 << 16)) >= uint(abs(temp_125)) ? -1 : 0) ^ temp_184) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_161 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    break;
} while (false);
}
