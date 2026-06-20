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
layout (location = 2) in vec4 sysNormalAttr;
layout (location = 3) in vec4 sysVertexColor0Attr;
layout (location = 4) in vec4 sysLocalPosAttr;
layout (location = 5) in vec4 sysLocalVecAttr;
layout (location = 6) in vec4 sysScaleAttr;
layout (location = 7) in vec4 sysRandomAttr;
layout (location = 8) in vec4 sysInitRotateAttr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;
layout (location = 5) out vec4 out_attr5;
layout (location = 6) out vec4 out_attr6;
layout (location = 7) out vec4 out_attr7;


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
    bool temp_13;
    bool temp_14;
    precise float temp_15;
    bool temp_16;
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
    int temp_41;
    int temp_42;
    int temp_43;
    precise float temp_44;
    precise float temp_45;
    precise float temp_46;
    precise float temp_47;
    bool temp_48;
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
    int temp_126;
    bool temp_127;
    int temp_128;
    int temp_129;
    int temp_130;
    precise float temp_131;
    precise float temp_132;
    precise float temp_133;
    uint temp_134;
    int temp_135;
    int temp_136;
    precise float temp_137;
    int temp_138;
    precise float temp_139;
    int temp_140;
    int temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    precise float temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    uint temp_149;
    int temp_150;
    int temp_151;
    precise float temp_152;
    uint temp_153;
    bool temp_154;
    precise float temp_155;
    precise float temp_156;
    uint temp_157;
    uint temp_158;
    uint temp_159;
    int temp_160;
    precise float temp_161;
    precise float temp_162;
    precise float temp_163;
    precise float temp_164;
    int temp_165;
    int temp_166;
    precise float temp_167;
    precise float temp_168;
    precise float temp_169;
    bool temp_170;
    int temp_171;
    int temp_172;
    bool temp_173;
    int temp_174;
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
    bool temp_186;
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
    int temp_201;
    int temp_202;
    int temp_203;
    int temp_204;
    int temp_205;
    int temp_206;
    int temp_207;
    precise float temp_208;
    precise float temp_209;
    precise float temp_210;
    precise float temp_211;
    precise float temp_212;
    precise float temp_213;
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
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_10) > 0.0;
    temp_14 = sqrt(temp_11) > 0.0;
    temp_15 = intBitsToFloat(undef);
    if (temp_13)
    {
        temp_15 = inversesqrt(temp_10);
    }
    temp_16 = sqrt(temp_12) > 0.0;
    temp_17 = intBitsToFloat(undef);
    temp_18 = temp_15;
    if (temp_14)
    {
        temp_17 = inversesqrt(temp_11);
    }
    temp_19 = temp_17;
    if (!temp_13)
    {
        temp_18 = 0.0;
    }
    temp_20 = intBitsToFloat(undef);
    temp_21 = temp_18;
    if (!temp_13)
    {
        temp_20 = 0.0;
    }
    temp_22 = intBitsToFloat(undef);
    temp_23 = temp_20;
    if (!temp_13)
    {
        temp_22 = 0.0;
    }
    temp_24 = temp_22;
    if (!temp_14)
    {
        temp_19 = 0.0;
    }
    temp_25 = intBitsToFloat(undef);
    temp_26 = temp_19;
    if (temp_16)
    {
        temp_25 = inversesqrt(temp_12);
    }
    temp_27 = temp_25;
    if (temp_13)
    {
        temp_24 = temp_18 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    if (temp_13)
    {
        temp_23 = temp_18 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_28 = intBitsToFloat(undef);
    if (temp_14)
    {
        temp_28 = temp_19 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_29 = intBitsToFloat(undef);
    temp_30 = temp_28;
    if (temp_14)
    {
        temp_29 = temp_19 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_31 = temp_29;
    if (temp_13)
    {
        temp_21 = temp_18 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    if (temp_14)
    {
        temp_26 = temp_19 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    if (!temp_14)
    {
        temp_31 = 0.0;
    }
    if (!temp_14)
    {
        temp_30 = 0.0;
    }
    if (!temp_16)
    {
        temp_27 = 0.0;
    }
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_27;
    if (!temp_16)
    {
        temp_32 = 0.0;
    }
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_32;
    if (!temp_16)
    {
        temp_34 = 0.0;
    }
    temp_36 = temp_34;
    if (temp_16)
    {
        temp_36 = temp_27 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    if (temp_16)
    {
        temp_35 = temp_27 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    if (temp_16)
    {
        temp_33 = temp_27 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_37 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_38 = temp_37 + 0.0 - floor(temp_37);
    }
    else
    {
        temp_38 = temp_5 * (1.0 / temp_6);
    }
    temp_39 = sysRandomAttr.y;
    temp_40 = sysRandomAttr.z;
    temp_41 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_42 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_43 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_44 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_45 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_46 = floor(temp_39 * 2.0);
    temp_47 = floor(temp_9 * 2.0);
    temp_48 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_49 = temp_38 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_50 = floor(temp_40 * 2.0);
    temp_51 = 0.0 - (temp_46 < 0.0 ? 1.0 : 0.0) + (temp_46 > 0.0 ? 1.0 : 0.0);
    temp_52 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_53 = temp_51;
    if (!temp_48)
    {
        temp_52 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_54 = temp_38 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_55 = temp_52;
    if (!temp_48)
    {
        temp_55 = 1.0 / temp_52;
    }
    temp_56 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_57 = fma(temp_54, 0.0 - temp_49, temp_49);
    temp_58 = sysInitRotateAttr.x;
    temp_59 = sysInitRotateAttr.y;
    temp_60 = sysInitRotateAttr.z;
    temp_61 = fma(fma(temp_9 + temp_39, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_62 = fma(fma(temp_39 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_63 = temp_56;
    if (temp_48)
    {
        temp_63 = temp_5;
    }
    temp_64 = fma(fma(temp_9 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_65 = temp_63;
    if (!temp_48)
    {
        temp_65 = fma(exp2(temp_56), 0.0 - temp_55, temp_55);
    }
    temp_66 = temp_51 * float(abs(0 - (temp_41 > 0 ? -1 : 0) + 0 - (temp_41 >= 0 ? 0 : 1)));
    temp_67 = sysScaleAttr.w;
    temp_68 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_69 = (0.0 - (temp_47 < 0.0 ? 1.0 : 0.0) + (temp_47 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_43 > 0 ? -1 : 0) + 0 - (temp_43 >= 0 ? 0 : 1)));
    temp_70 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_71 = (0.0 - (temp_50 < 0.0 ? 1.0 : 0.0) + (temp_50 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_42 > 0 ? -1 : 0) + 0 - (temp_42 >= 0 ? 0 : 1)));
    temp_72 = temp_64 * temp_69;
    temp_73 = temp_69 * temp_60;
    temp_74 = temp_69;
    temp_75 = temp_72;
    temp_76 = temp_73;
    temp_77 = temp_70;
    if (temp_68)
    {
        temp_53 = temp_70 * temp_70;
    }
    if (temp_68)
    {
        temp_74 = temp_53 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_68)
    {
        temp_75 = temp_74 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_78 = temp_75;
    if (temp_68)
    {
        temp_76 = temp_74 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_79 = intBitsToFloat(undef);
    temp_80 = temp_76;
    if (temp_68)
    {
        temp_79 = temp_74 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_81 = temp_79;
    if (!temp_68)
    {
        temp_82 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_83 = (0.0 - fma(temp_82, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_70), 0.0 - temp_82) + temp_70) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_81 = temp_83 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_78 = temp_83 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_80 = temp_83 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_68)
    {
        temp_84 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_77 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_70), 0.0 - temp_84, temp_84);
    }
    temp_85 = fma(fma(temp_72, -2.0, temp_64), temp_65, fma(temp_40 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_73, -2.0, temp_60)));
    temp_86 = fma(fma(temp_62 * temp_71, -2.0, temp_62), temp_65, fma(temp_39 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_71 * temp_59, -2.0, temp_59)));
    temp_87 = fma(fma(temp_61 * temp_66, -2.0, temp_61), temp_65, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_66 * temp_58, -2.0, temp_58)));
    temp_88 = fma(fma(temp_77, sysLocalVecAttr.y, temp_78), temp_67, sysLocalPosAttr.y);
    temp_89 = fma(fma(temp_77, sysLocalVecAttr.x, temp_81), temp_67, sysLocalPosAttr.x);
    temp_90 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_54, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_44, _sysEmitterStaticUniformBlock.data[96].x), temp_57, fma(temp_49, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_91 = fma(temp_54, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_44, _sysEmitterStaticUniformBlock.data[96].z), temp_57, fma(temp_49, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_92 = sysNormalAttr.x;
    temp_93 = sysNormalAttr.y;
    temp_94 = fma(temp_54, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_44, _sysEmitterStaticUniformBlock.data[96].y), temp_57, fma(temp_49, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_95 = fma(fma(temp_77, sysLocalVecAttr.z, temp_80), temp_67, sysLocalPosAttr.z);
    temp_96 = sysNormalAttr.z;
    temp_97 = cos(temp_85) * cos(temp_87);
    temp_98 = cos(temp_85) * sin(temp_87);
    temp_99 = cos(temp_87) * sin(temp_86);
    temp_100 = cos(temp_85) * sin(temp_86);
    temp_101 = sin(temp_86) * sin(temp_87);
    temp_102 = sin(temp_87) * cos(temp_86);
    temp_103 = cos(temp_87) * cos(temp_86);
    temp_104 = cos(temp_85) * cos(temp_86);
    temp_105 = fma(sin(temp_85), temp_102, 0.0 - temp_99);
    temp_106 = fma(sin(temp_85), temp_99, 0.0 - temp_102);
    temp_107 = fma(sin(temp_85), temp_103, temp_101);
    temp_108 = fma(sin(temp_85), temp_101, temp_103);
    temp_109 = fma(temp_95, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_88, _sysEmitterDynamicUniformBlock.data[4].y, temp_89 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_110 = fma(temp_95, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_88, _sysEmitterDynamicUniformBlock.data[5].y, temp_89 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_111 = fma(temp_100, temp_96, fma(temp_104, temp_92, sin(temp_85) * 0.0 - temp_93));
    temp_112 = fma(temp_106, temp_96, fma(temp_107, temp_92, temp_97 * temp_93));
    temp_113 = fma(temp_108, temp_96, fma(temp_105, temp_92, temp_98 * temp_93));
    temp_114 = fma(temp_95, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_88, _sysEmitterDynamicUniformBlock.data[6].y, temp_89 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_115 = 0.0 + fma(temp_100, temp_91, fma(temp_90, temp_104, temp_94 * 0.0 - sin(temp_85)));
    temp_116 = 0.0 + fma(temp_106, temp_91, fma(temp_90, temp_107, temp_94 * temp_97));
    temp_117 = fma(temp_114, _sysViewUniformBlock.data[11].z, fma(temp_110, _sysViewUniformBlock.data[11].y, temp_109 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_118 = fma(temp_114, _sysViewUniformBlock.data[10].z, fma(temp_110, _sysViewUniformBlock.data[10].y, temp_109 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_119 = 0.0 + fma(temp_108, temp_91, fma(temp_90, temp_105, temp_94 * temp_98));
    temp_120 = fma(0.0, temp_91, fma(0.0, temp_90, 0.0 * temp_94)) + 1.0;
    temp_121 = fma(temp_109, temp_120, fma(temp_119, temp_36, fma(temp_116, temp_30, temp_115 * temp_24)));
    temp_122 = fma(temp_110, temp_120, fma(temp_119, temp_35, fma(temp_116, temp_31, temp_115 * temp_23)));
    temp_123 = fma(temp_114, temp_120, fma(temp_119, temp_33, fma(temp_116, temp_26, temp_115 * temp_21)));
    gl_Position.x = fma(temp_123, _sysViewUniformBlock.data[8].z, fma(temp_122, _sysViewUniformBlock.data[8].y, temp_121 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_123, _sysViewUniformBlock.data[9].z, fma(temp_122, _sysViewUniformBlock.data[9].y, temp_121 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    out_attr6.x = fma(0.0, temp_109, fma(temp_113, temp_36, fma(temp_112, temp_30, temp_111 * temp_24)));
    out_attr6.y = fma(0.0, temp_110, fma(temp_113, temp_35, fma(temp_112, temp_31, temp_111 * temp_23)));
    out_attr6.z = fma(0.0, temp_114, fma(temp_113, temp_33, fma(temp_112, temp_26, temp_111 * temp_21)));
    out_attr7.x = temp_121 + 0.0 - _sysViewUniformBlock.data[17].x;
    out_attr7.y = temp_122 + 0.0 - _sysViewUniformBlock.data[17].y;
    out_attr7.z = temp_123 + 0.0 - _sysViewUniformBlock.data[17].z;
    gl_Position.z = fma(temp_123, _sysViewUniformBlock.data[10].z, fma(temp_122, _sysViewUniformBlock.data[10].y, temp_121 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_123, _sysViewUniformBlock.data[11].z, fma(temp_122, _sysViewUniformBlock.data[11].y, temp_121 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_124 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_125 = temp_124 + 0.0 - floor(temp_124);
    }
    else
    {
        temp_125 = temp_5 * (1.0 / temp_6);
    }
    temp_126 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_127 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_128 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_129 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_130 = floatBitsToInt(1.0 / float(uint(temp_126))) + -2;
    temp_131 = sysTexCoordAttr.x;
    temp_132 = sysTexCoordAttr.y;
    temp_133 = clamp(fma(1.0 / fma(fma(0.0, temp_117, temp_118) * (1.0 / fma(0.0, temp_118, temp_117)), _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - _sysEmitterStaticUniformBlock.data[93].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[93].x + _sysEmitterStaticUniformBlock.data[93].y)), 0.0, 1.0);
    temp_134 = uint(max(trunc(float(0u) * intBitsToFloat(temp_130)), 0.0));
    temp_135 = floatBitsToInt(1.0 / float(uint(abs(temp_129)))) + -2;
    temp_136 = floatBitsToInt(1.0 / float(uint(temp_128))) + -2;
    temp_137 = temp_125 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_138 = floatBitsToInt(1.0 / float(uint(abs(temp_126)))) + -2;
    temp_139 = temp_125 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_140 = floatBitsToInt(1.0 / float(uint(abs(temp_128)))) + -2;
    temp_141 = (temp_126 & 0xFFFF) * (int(temp_134 >> 16)) & 0xFFFF | int(temp_134) << 16;
    temp_142 = temp_132;
    temp_143 = temp_132;
    temp_144 = temp_131;
    temp_145 = temp_9;
    temp_146 = temp_39;
    temp_147 = temp_9;
    temp_148 = temp_39;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_142 = 0.0 - temp_132 + 1.0;
    }
    temp_149 = uint(max(trunc(float(0u) * intBitsToFloat(temp_136)), 0.0));
    temp_150 = floatBitsToInt(1.0 / float(uint(temp_129))) + -2;
    temp_151 = 0;
    if (temp_127)
    {
        temp_151 = 1;
    }
    temp_152 = temp_132;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_39 > 0.5) ? -1 : 0)) != 0))
    {
        temp_152 = 0.0 - temp_132 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_40 > 0.5) ? -1 : 0)) != 0))
    {
        temp_143 = 0.0 - temp_132 + 1.0;
    }
    temp_153 = uint(max(trunc(float(0u) * intBitsToFloat(temp_150)), 0.0));
    temp_154 = temp_151 == 1;
    temp_155 = temp_131;
    temp_156 = temp_131;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_144 = 0.0 - temp_131 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_40 > 0.5) ? -1 : 0)) != 0))
    {
        temp_155 = 0.0 - temp_131 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_39 > 0.5) ? -1 : 0)) != 0))
    {
        temp_156 = 0.0 - temp_131 + 1.0;
    }
    temp_157 = uint(max(trunc(intBitsToFloat(temp_138) * float(0u)), 0.0));
    temp_158 = uint(max(trunc(float(0u) * intBitsToFloat(temp_140)), 0.0));
    temp_159 = uint(max(trunc(float(0u) * intBitsToFloat(temp_135)), 0.0));
    temp_160 = 0;
    if (temp_154)
    {
        temp_145 = temp_39;
    }
    temp_161 = temp_145;
    temp_162 = temp_145;
    if (temp_154)
    {
        temp_146 = temp_40;
    }
    temp_163 = temp_146;
    temp_164 = temp_146;
    if (temp_154)
    {
        temp_147 = temp_39;
    }
    temp_165 = (temp_128 & 0xFFFF) * (int(temp_149 >> 16)) & 0xFFFF | int(temp_149) << 16;
    temp_166 = (temp_129 & 0xFFFF) * (int(temp_153 >> 16)) & 0xFFFF | int(temp_153) << 16;
    temp_167 = temp_147;
    temp_168 = temp_147;
    if (temp_154)
    {
        temp_148 = temp_40;
    }
    temp_169 = temp_148;
    if (!temp_154)
    {
        temp_170 = temp_151 == 2;
        if (temp_170)
        {
            temp_161 = temp_40;
        }
        temp_162 = temp_161;
        if (temp_170)
        {
            temp_163 = temp_9;
        }
        temp_164 = temp_163;
        if (temp_170)
        {
            temp_167 = temp_9;
        }
        temp_168 = temp_167;
        if (temp_170)
        {
            temp_169 = temp_39;
        }
    }
    temp_171 = (abs(temp_126) & 0xFFFF) * (int(temp_157 >> 16)) & 0xFFFF | int(temp_157) << 16;
    if (temp_127)
    {
        temp_160 = 2;
    }
    temp_172 = (abs(temp_128) & 0xFFFF) * (int(temp_158 >> 16)) & 0xFFFF | int(temp_158) << 16;
    temp_173 = temp_160 == 1;
    temp_174 = (abs(temp_129) & 0xFFFF) * (int(temp_159 >> 16)) & 0xFFFF | int(temp_159) << 16;
    temp_175 = temp_9;
    temp_176 = temp_39;
    temp_177 = temp_9;
    temp_178 = temp_39;
    if (temp_173)
    {
        temp_175 = temp_39;
    }
    temp_179 = temp_175;
    temp_180 = temp_175;
    if (temp_173)
    {
        temp_176 = temp_40;
    }
    temp_181 = temp_176;
    temp_182 = temp_176;
    if (temp_173)
    {
        temp_177 = temp_39;
    }
    temp_183 = temp_177;
    temp_184 = temp_177;
    if (temp_173)
    {
        temp_178 = temp_40;
    }
    temp_185 = temp_178;
    if (!temp_173)
    {
        temp_186 = temp_160 == 2;
        if (temp_186)
        {
            temp_179 = temp_40;
        }
        temp_180 = temp_179;
        if (temp_186)
        {
            temp_181 = temp_9;
        }
        temp_182 = temp_181;
        if (temp_186)
        {
            temp_183 = temp_9;
        }
        temp_184 = temp_183;
        if (temp_186)
        {
            temp_185 = temp_39;
        }
    }
    temp_187 = int(temp_157) + int(uint(max(trunc(intBitsToFloat(temp_138) * float(uint(0 - ((int(uint(abs(temp_126)) >> 16)) * (int(uint(temp_171) >> 16)) << 16) + (abs(temp_126) & 0xFFFF) * (int(temp_157) & 0xFFFF) + (temp_171 << 16)))), 0.0)));
    temp_188 = int(temp_158) + int(uint(max(trunc(intBitsToFloat(temp_140) * float(uint(0 - ((int(uint(abs(temp_128)) >> 16)) * (int(uint(temp_172) >> 16)) << 16) + (abs(temp_128) & 0xFFFF) * (int(temp_158) & 0xFFFF) + (temp_172 << 16)))), 0.0)));
    temp_189 = (abs(temp_126) & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_190 = int(temp_159) + int(uint(max(trunc(intBitsToFloat(temp_135) * float(uint(0 - ((int(uint(abs(temp_129)) >> 16)) * (int(uint(temp_174) >> 16)) << 16) + (abs(temp_129) & 0xFFFF) * (int(temp_159) & 0xFFFF) + (temp_174 << 16)))), 0.0)));
    temp_191 = (abs(temp_129) & 0xFFFF) * (int(uint(temp_190) >> 16)) & 0xFFFF | temp_190 << 16;
    temp_192 = (abs(temp_128) & 0xFFFF) * (int(uint(temp_188) >> 16)) & 0xFFFF | temp_188 << 16;
    temp_193 = int(temp_134) + int(uint(max(trunc(intBitsToFloat(temp_130) * float(uint(0 - ((int(uint(temp_126) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_126 & 0xFFFF) * (int(temp_134) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_194 = int(temp_149) + int(uint(max(trunc(intBitsToFloat(temp_136) * float(uint(0 - ((int(uint(temp_128) >> 16)) * (int(uint(temp_165) >> 16)) << 16) + (temp_128 & 0xFFFF) * (int(temp_149) & 0xFFFF) + (temp_165 << 16)))), 0.0)));
    temp_195 = int(temp_153) + int(uint(max(trunc(intBitsToFloat(temp_150) * float(uint(0 - ((int(uint(temp_129) >> 16)) * (int(uint(temp_166) >> 16)) << 16) + (temp_129 & 0xFFFF) * (int(temp_153) & 0xFFFF) + (temp_166 << 16)))), 0.0)));
    temp_196 = (temp_128 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_197 = (temp_126 & 0xFFFF) * (int(uint(temp_193) >> 16)) & 0xFFFF | temp_193 << 16;
    temp_198 = (temp_129 & 0xFFFF) * (int(uint(temp_195) >> 16)) & 0xFFFF | temp_195 << 16;
    temp_199 = 0 - temp_194 + ((uint(0 - ((int(uint(temp_128) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (temp_128 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_196 << 16)) >= uint(temp_128) ? -1 : 0));
    temp_200 = 0 - temp_193 + ((uint(0 - ((int(uint(temp_126) >> 16)) * (int(uint(temp_197) >> 16)) << 16) + (temp_126 & 0xFFFF) * (temp_193 & 0xFFFF) + (temp_197 << 16)) >= uint(temp_126) ? -1 : 0));
    temp_201 = 0 - temp_195 + ((uint(0 - ((int(uint(temp_129) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_129 & 0xFFFF) * (temp_195 & 0xFFFF) + (temp_198 << 16)) >= uint(temp_129) ? -1 : 0));
    temp_202 = 0 - int(uint(temp_129) >> 31);
    temp_203 = (temp_126 & 0xFFFF) * (int(uint(temp_200) >> 16)) & 0xFFFF | temp_200 << 16;
    temp_204 = (temp_129 & 0xFFFF) * (int(uint(temp_201) >> 16)) & 0xFFFF | temp_201 << 16;
    temp_205 = 0 - int(uint(temp_126) >> 31);
    temp_206 = 0 - int(uint(temp_128) >> 31);
    temp_207 = (temp_128 & 0xFFFF) * (int(uint(temp_199) >> 16)) & 0xFFFF | temp_199 << 16;
    temp_208 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_209 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_210 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    out_attr0.w = fma(temp_139, _sysEmitterStaticUniformBlock.data[69].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_125 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_137, 0.0 - temp_139, temp_137), fma(temp_137, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))) * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_211 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    out_attr5.y = sysVertexColor0Attr.y;
    out_attr5.z = sysVertexColor0Attr.z;
    out_attr5.x = sysVertexColor0Attr.x;
    temp_212 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_213 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr5.w = sysVertexColor0Attr.w;
    out_attr4.x = temp_133 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr2.x = fma(fma(temp_208, temp_144, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_208, float(temp_126 < 0 || !(temp_126 == 0) ? ((int(uint(temp_126) >> 16)) * (int(uint(temp_203) >> 16)) << 16) + (temp_126 & 0xFFFF) * (temp_200 & 0xFFFF) + (temp_203 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_39, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_211, temp_152, -0.5), 0.0 - fma(temp_211, 0.0 - float(temp_126 < 0 || !(temp_126 == 0) ? 0 - temp_205 + (temp_187 + 0 - (uint(0 - ((int(uint(abs(temp_126)) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (abs(temp_126) & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_189 << 16)) >= uint(abs(temp_126)) ? -1 : 0) ^ temp_205) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_39 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_210, temp_155, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_168, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_210, float(temp_128 < 0 || !(temp_128 == 0) ? ((int(uint(temp_128) >> 16)) * (int(uint(temp_207) >> 16)) << 16) + (temp_128 & 0xFFFF) * (temp_199 & 0xFFFF) + (temp_207 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_162 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_169, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_209, temp_142, -0.5), 0.0 - fma(temp_209, 0.0 - float(temp_128 < 0 || !(temp_128 == 0) ? 0 - temp_206 + (temp_188 + 0 - (uint(0 - ((int(uint(abs(temp_128)) >> 16)) * (int(uint(temp_192) >> 16)) << 16) + (abs(temp_128) & 0xFFFF) * (temp_188 & 0xFFFF) + (temp_192 << 16)) >= uint(abs(temp_128)) ? -1 : 0) ^ temp_206) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_164 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_184, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_212, temp_156, -0.5), fma(temp_212, float(temp_129 < 0 || !(temp_129 == 0) ? ((int(uint(temp_129) >> 16)) * (int(uint(temp_204) >> 16)) << 16) + (temp_129 & 0xFFFF) * (temp_201 & 0xFFFF) + (temp_204 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_180 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr3.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_185, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_213, temp_143, -0.5), 0.0 - fma(temp_213, 0.0 - float(temp_129 < 0 || !(temp_129 == 0) ? 0 - temp_202 + (temp_190 + 0 - (uint(0 - ((int(uint(abs(temp_129)) >> 16)) * (int(uint(temp_191) >> 16)) << 16) + (abs(temp_129) & 0xFFFF) * (temp_190 & 0xFFFF) + (temp_191 << 16)) >= uint(abs(temp_129)) ? -1 : 0) ^ temp_202) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_182 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    if (!(temp_133 <= 0.0))
    {
        break;
    }
    out_attr4.x = 0.0;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = _sysViewUniformBlock.data[18].y * 5.0;
    break;
} while (false);
}
