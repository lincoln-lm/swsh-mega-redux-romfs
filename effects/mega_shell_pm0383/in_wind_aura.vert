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
    int temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    int temp_14;
    precise float temp_15;
    int temp_16;
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
    bool temp_29;
    bool temp_30;
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
    bool temp_51;
    precise float temp_52;
    precise float temp_53;
    bool temp_54;
    precise float temp_55;
    bool temp_56;
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
    int temp_112;
    bool temp_113;
    precise float temp_114;
    precise float temp_115;
    int temp_116;
    precise float temp_117;
    precise float temp_118;
    int temp_119;
    precise float temp_120;
    precise float temp_121;
    precise float temp_122;
    precise float temp_123;
    int temp_124;
    precise float temp_125;
    uint temp_126;
    precise float temp_127;
    int temp_128;
    int temp_129;
    precise float temp_130;
    int temp_131;
    int temp_132;
    int temp_133;
    precise float temp_134;
    int temp_135;
    precise float temp_136;
    precise float temp_137;
    uint temp_138;
    uint temp_139;
    precise float temp_140;
    uint temp_141;
    precise float temp_142;
    bool temp_143;
    precise float temp_144;
    uint temp_145;
    int temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    int temp_151;
    precise float temp_152;
    precise float temp_153;
    precise float temp_154;
    precise float temp_155;
    int temp_156;
    int temp_157;
    int temp_158;
    precise float temp_159;
    precise float temp_160;
    precise float temp_161;
    bool temp_162;
    int temp_163;
    bool temp_164;
    uint temp_165;
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
    bool temp_180;
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
    int temp_203;
    int temp_204;
    precise float temp_205;
    precise float temp_206;
    precise float temp_207;
    precise float temp_208;
    precise float temp_209;
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
    temp_10 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_11 = sysEmtMat0Attr.x;
    temp_12 = sysEmtMat0Attr.y;
    temp_13 = sysEmtMat0Attr.z;
    temp_14 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_15 = sysRandomAttr.y;
    temp_16 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_17 = sysRandomAttr.z;
    temp_18 = sysEmtMat1Attr.x;
    temp_19 = sysEmtMat1Attr.y;
    temp_20 = sysEmtMat1Attr.z;
    temp_21 = floor(temp_9 * 2.0);
    temp_22 = sysEmtMat2Attr.x;
    temp_23 = sysEmtMat2Attr.y;
    temp_24 = sysEmtMat2Attr.z;
    temp_25 = floor(temp_15 * 2.0);
    temp_26 = floor(temp_17 * 2.0);
    temp_27 = fma(temp_23, temp_23, fma(temp_19, temp_19, temp_12 * temp_12));
    temp_28 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_29 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_30 = sqrt(temp_27) > 0.0;
    temp_31 = sysInitRotateAttr.x;
    temp_32 = sysInitRotateAttr.y;
    temp_33 = sysInitRotateAttr.z;
    temp_34 = fma(temp_22, temp_22, fma(temp_18, temp_18, temp_11 * temp_11));
    temp_35 = intBitsToFloat(undef);
    temp_36 = temp_31;
    temp_37 = temp_34;
    temp_38 = temp_27;
    temp_39 = temp_19;
    temp_40 = temp_23;
    temp_41 = temp_18;
    temp_42 = temp_20;
    if (!temp_29)
    {
        temp_35 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_43 = fma(temp_24, temp_24, fma(temp_20, temp_20, temp_13 * temp_13));
    temp_44 = intBitsToFloat(undef);
    if (!temp_29)
    {
        temp_44 = 1.0 / temp_35;
    }
    temp_45 = fma(temp_9 + temp_17, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z;
    temp_46 = (0.0 - temp_21 < 0.0 ? 1.0 : 0.0 + (temp_21 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - temp_16 >= 0 ? 0 : 1));
    temp_47 = (0.0 - temp_25 < 0.0 ? 1.0 : 0.0 + (temp_25 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_10 > 0 ? -1 : 0) + 0 - temp_10 >= 0 ? 0 : 1));
    temp_48 = fma(temp_45, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_49 = fma(fma(temp_9 + temp_15, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_50 = temp_45;
    if (temp_29)
    {
        temp_50 = temp_5;
    }
    temp_51 = sqrt(temp_34) > 0.0;
    temp_52 = (0.0 - temp_26 < 0.0 ? 1.0 : 0.0 + (temp_26 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - temp_14 >= 0 ? 0 : 1));
    temp_53 = sysScaleAttr.w;
    temp_54 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_55 = temp_50;
    if (!temp_29)
    {
        temp_55 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_44, temp_44);
    }
    temp_56 = sqrt(temp_43) > 0.0;
    temp_57 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_58 = fma(temp_47 * temp_31, -2.0, temp_31);
    temp_59 = sysLocalPosAttr.x;
    temp_60 = fma(fma(temp_15 + temp_17, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_61 = temp_49 * temp_47;
    temp_62 = temp_61;
    temp_63 = temp_58;
    temp_64 = temp_57;
    temp_65 = temp_59;
    if (temp_54)
    {
        temp_36 = temp_57 * temp_57;
    }
    temp_66 = fma(temp_52 * temp_32, -2.0, temp_32);
    temp_67 = temp_15 + -0.5;
    temp_68 = temp_67;
    temp_69 = temp_66;
    if (temp_54)
    {
        temp_62 = temp_36 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_70 = fma(fma(temp_48 * temp_46, -2.0, temp_48), temp_55, fma(temp_17 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_46 * temp_33, -2.0, temp_33)));
    if (temp_54)
    {
        temp_63 = temp_62 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_71 = temp_63;
    if (temp_54)
    {
        temp_68 = temp_62 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_72 = temp_68;
    if (temp_54)
    {
        temp_69 = temp_62 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_73 = temp_69;
    if (!temp_54)
    {
        temp_74 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_75 = (temp_57 + 0.0 - fma(temp_74, exp2(temp_57 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_74)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_73 = temp_75 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_71 = temp_75 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_72 = temp_75 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_54)
    {
        temp_76 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_64 = fma(exp2(temp_57 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_76, temp_76);
    }
    temp_77 = fma(fma(temp_60 * temp_52, -2.0, temp_60), temp_55, fma(temp_67, _sysEmitterStaticUniformBlock.data[113].y, temp_66));
    if (temp_51)
    {
        temp_37 = inversesqrt(temp_34);
    }
    temp_78 = fma(fma(temp_61, -2.0, temp_49), temp_55, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, temp_58));
    temp_79 = temp_37;
    if (temp_30)
    {
        temp_38 = inversesqrt(temp_27);
    }
    temp_80 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_81 = fma(fma(temp_64, sysLocalVecAttr.x, temp_73), temp_53, temp_59);
    temp_82 = fma(fma(temp_64, sysLocalVecAttr.y, temp_71), temp_53, sysLocalPosAttr.y);
    temp_83 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_84 = temp_38;
    temp_85 = sin(temp_78);
    temp_86 = temp_81;
    if (temp_51)
    {
        temp_65 = temp_37 * temp_11;
    }
    temp_87 = fma(fma(temp_64, sysLocalVecAttr.z, temp_72), temp_53, sysLocalPosAttr.z);
    temp_88 = temp_65;
    if (!temp_51)
    {
        temp_88 = 0.0;
    }
    if (!temp_30)
    {
        temp_84 = 0.0;
    }
    temp_89 = temp_84;
    if (!temp_51)
    {
        temp_79 = 0.0;
    }
    temp_90 = cos(temp_78) * cos(temp_77);
    temp_91 = sin(temp_78) * sin(temp_77);
    temp_92 = cos(temp_78) * sin(temp_77);
    temp_93 = sin(temp_78) * cos(temp_77);
    temp_94 = temp_79;
    if (temp_51)
    {
        temp_85 = temp_79 * temp_18;
    }
    temp_95 = temp_85;
    if (temp_51)
    {
        temp_94 = temp_79 * temp_22;
    }
    if (temp_56)
    {
        temp_86 = inversesqrt(temp_43);
    }
    temp_96 = 0.0 + fma(cos(temp_70) * sin(temp_77), temp_80, fma(temp_83, cos(temp_70) * cos(temp_77), temp_28 * 0.0 - sin(temp_70)));
    if (temp_30)
    {
        temp_39 = temp_84 * temp_19;
    }
    temp_97 = temp_39;
    if (temp_30)
    {
        temp_40 = temp_84 * temp_23;
    }
    temp_98 = temp_40;
    if (temp_30)
    {
        temp_89 = temp_84 * temp_12;
    }
    temp_99 = 0.0 + fma(temp_80, fma(sin(temp_70), temp_92, 0.0 - temp_93), fma(temp_83, fma(sin(temp_70), temp_90, temp_91), temp_28 * cos(temp_70) * cos(temp_78)));
    if (!temp_51)
    {
        temp_95 = 0.0;
    }
    if (temp_56)
    {
        temp_41 = temp_86 * temp_13;
    }
    temp_100 = fma(temp_99, temp_89, temp_96 * temp_88);
    temp_101 = temp_41;
    temp_102 = temp_100;
    if (!temp_30)
    {
        temp_97 = 0.0;
    }
    if (!temp_56)
    {
        temp_101 = 0.0;
    }
    temp_103 = 0.0 + fma(temp_80, fma(sin(temp_70), temp_91, temp_90), fma(temp_83, fma(sin(temp_70), temp_93, 0.0 - temp_92), temp_28 * cos(temp_70) * sin(temp_78)));
    if (!temp_30)
    {
        temp_98 = 0.0;
    }
    if (temp_56)
    {
        temp_42 = temp_86 * temp_20;
    }
    temp_104 = temp_42;
    if (!temp_56)
    {
        temp_104 = 0.0;
    }
    temp_105 = fma(0.0, temp_80, fma(0.0, temp_83, 0.0 * temp_28)) + 1.0;
    if (temp_56)
    {
        temp_102 = temp_86 * temp_24;
    }
    temp_106 = temp_102;
    if (!temp_56)
    {
        temp_106 = 0.0;
    }
    temp_107 = fma(fma(temp_87, temp_13, fma(temp_82, temp_12, temp_81 * temp_11)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_105, fma(temp_103, temp_101, temp_100));
    temp_108 = fma(fma(temp_87, temp_20, fma(temp_82, temp_19, temp_81 * temp_18)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_105, fma(temp_103, temp_104, fma(temp_99, temp_97, temp_96 * temp_95)));
    temp_109 = fma(fma(temp_87, temp_24, fma(temp_82, temp_23, temp_81 * temp_22)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_105, fma(temp_103, temp_106, fma(temp_99, temp_98, temp_96 * temp_94)));
    out_attr7.x = temp_107;
    out_attr7.y = temp_108;
    out_attr7.z = temp_109;
    gl_Position.x = fma(temp_109, _sysViewUniformBlock.data[8].z, fma(temp_108, _sysViewUniformBlock.data[8].y, temp_107 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_109, _sysViewUniformBlock.data[9].z, fma(temp_108, _sysViewUniformBlock.data[9].y, temp_107 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_109, _sysViewUniformBlock.data[10].z, fma(temp_108, _sysViewUniformBlock.data[10].y, temp_107 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_109, _sysViewUniformBlock.data[11].z, fma(temp_108, _sysViewUniformBlock.data[11].y, temp_107 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_110 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_111 = temp_110 + 0.0 - floor(temp_110);
    }
    else
    {
        temp_111 = temp_5 * (1.0 / temp_6);
    }
    temp_112 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_113 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_114 = sysTexCoordAttr.x;
    temp_115 = sysTexCoordAttr.y;
    temp_116 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_117 = temp_111 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_118 = temp_111 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_119 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_120 = temp_114;
    temp_121 = temp_114;
    temp_122 = temp_114;
    temp_123 = temp_115;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_120 = 0.0 - temp_114 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_17 > 0.5) ? -1 : 0)) != 0))
    {
        temp_121 = 0.0 - temp_114 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_15 > 0.5) ? -1 : 0)) != 0))
    {
        temp_122 = 0.0 - temp_114 + 1.0;
    }
    temp_124 = floatBitsToInt(1.0 / float(uint(temp_112))) + -2;
    temp_125 = temp_111 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_126 = uint(max(trunc(float(0u) * intBitsToFloat(temp_124)), 0.0));
    temp_127 = temp_111 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_128 = floatBitsToInt(1.0 / float(uint(temp_116))) + -2;
    temp_129 = (temp_112 & 0xFFFF) * (int(temp_126 >> 16)) & 0xFFFF | int(temp_126) << 16;
    temp_130 = temp_115;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_15 > 0.5) ? -1 : 0)) != 0))
    {
        temp_130 = 0.0 - temp_115 + 1.0;
    }
    temp_131 = floatBitsToInt(1.0 / float(uint(temp_119))) + -2;
    temp_132 = floatBitsToInt(1.0 / float(uint(abs(temp_112)))) + -2;
    temp_133 = floatBitsToInt(1.0 / float(uint(abs(temp_116)))) + -2;
    temp_134 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_135 = 0;
    if (temp_113)
    {
        temp_135 = 1;
    }
    temp_136 = temp_115;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_136 = 0.0 - temp_115 + 1.0;
    }
    temp_137 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_17, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_138 = uint(max(trunc(float(0u) * intBitsToFloat(temp_128)), 0.0));
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_17 > 0.5) ? -1 : 0)) != 0))
    {
        temp_123 = 0.0 - temp_115 + 1.0;
    }
    temp_139 = uint(max(trunc(float(0u) * intBitsToFloat(temp_131)), 0.0));
    temp_140 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_141 = uint(max(trunc(intBitsToFloat(temp_132) * float(0u)), 0.0));
    temp_142 = fma(temp_134, temp_130, -0.5);
    temp_143 = temp_135 == 1;
    temp_144 = fma(temp_140, temp_120, -0.5);
    temp_145 = uint(max(trunc(float(0u) * intBitsToFloat(temp_133)), 0.0));
    temp_146 = (temp_116 & 0xFFFF) * (int(temp_138 >> 16)) & 0xFFFF | int(temp_138) << 16;
    temp_147 = temp_9;
    temp_148 = temp_15;
    temp_149 = temp_9;
    temp_150 = temp_15;
    temp_151 = 0;
    if (temp_143)
    {
        temp_147 = temp_15;
    }
    temp_152 = temp_147;
    temp_153 = temp_147;
    if (temp_143)
    {
        temp_148 = temp_17;
    }
    temp_154 = temp_148;
    temp_155 = temp_148;
    if (temp_143)
    {
        temp_149 = temp_15;
    }
    temp_156 = (temp_119 & 0xFFFF) * (int(temp_139 >> 16)) & 0xFFFF | int(temp_139) << 16;
    temp_157 = (abs(temp_112) & 0xFFFF) * (int(temp_141 >> 16)) & 0xFFFF | int(temp_141) << 16;
    temp_158 = (abs(temp_116) & 0xFFFF) * (int(temp_145 >> 16)) & 0xFFFF | int(temp_145) << 16;
    temp_159 = temp_149;
    temp_160 = temp_149;
    if (temp_143)
    {
        temp_150 = temp_17;
    }
    temp_161 = temp_150;
    if (!temp_143)
    {
        temp_162 = temp_135 == 2;
        if (temp_162)
        {
            temp_152 = temp_17;
        }
        temp_153 = temp_152;
        if (temp_162)
        {
            temp_154 = temp_9;
        }
        temp_155 = temp_154;
        if (temp_162)
        {
            temp_159 = temp_9;
        }
        temp_160 = temp_159;
        if (temp_162)
        {
            temp_161 = temp_15;
        }
    }
    if (temp_113)
    {
        temp_151 = 2;
    }
    temp_163 = floatBitsToInt(1.0 / float(uint(abs(temp_119)))) + -2;
    temp_164 = temp_151 == 1;
    temp_165 = uint(max(trunc(float(0u) * intBitsToFloat(temp_163)), 0.0));
    temp_166 = temp_9;
    temp_167 = temp_15;
    temp_168 = temp_17;
    temp_169 = temp_9;
    temp_170 = temp_15;
    if (temp_164)
    {
        temp_166 = temp_15;
    }
    temp_171 = temp_166;
    temp_172 = temp_166;
    if (temp_164)
    {
        temp_167 = temp_17;
    }
    temp_173 = temp_167;
    temp_174 = temp_167;
    if (temp_164)
    {
        temp_168 = temp_9;
    }
    temp_175 = temp_168;
    temp_176 = temp_168;
    if (temp_164)
    {
        temp_169 = temp_15;
    }
    temp_177 = temp_169;
    temp_178 = temp_169;
    if (temp_164)
    {
        temp_170 = temp_17;
    }
    temp_179 = temp_170;
    if (!temp_164)
    {
        temp_180 = temp_151 == 2;
        if (temp_180)
        {
            temp_171 = temp_17;
        }
        temp_172 = temp_171;
        if (temp_180)
        {
            temp_173 = temp_9;
        }
        temp_174 = temp_173;
        if (temp_180)
        {
            temp_177 = temp_9;
        }
        temp_178 = temp_177;
        if (temp_180)
        {
            temp_175 = temp_15;
        }
        temp_176 = temp_175;
        if (temp_180)
        {
            temp_179 = temp_15;
        }
    }
    temp_181 = (abs(temp_119) & 0xFFFF) * (int(temp_165 >> 16)) & 0xFFFF | int(temp_165) << 16;
    temp_182 = int(temp_141) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(abs(temp_112)) >> 16)) * (int(uint(temp_157) >> 16)) << 16) + (abs(temp_112) & 0xFFFF) * (int(temp_141) & 0xFFFF) + (temp_157 << 16)))), 0.0)));
    temp_183 = int(temp_126) + int(uint(max(trunc(intBitsToFloat(temp_124) * float(uint(0 - ((int(uint(temp_112) >> 16)) * (int(uint(temp_129) >> 16)) << 16) + (temp_112 & 0xFFFF) * (int(temp_126) & 0xFFFF) + (temp_129 << 16)))), 0.0)));
    temp_184 = int(temp_138) + int(uint(max(trunc(intBitsToFloat(temp_128) * float(uint(0 - ((int(uint(temp_116) >> 16)) * (int(uint(temp_146) >> 16)) << 16) + (temp_116 & 0xFFFF) * (int(temp_138) & 0xFFFF) + (temp_146 << 16)))), 0.0)));
    temp_185 = int(temp_139) + int(uint(max(trunc(intBitsToFloat(temp_131) * float(uint(0 - ((int(uint(temp_119) >> 16)) * (int(uint(temp_156) >> 16)) << 16) + (temp_119 & 0xFFFF) * (int(temp_139) & 0xFFFF) + (temp_156 << 16)))), 0.0)));
    temp_186 = (abs(temp_112) & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_187 = (temp_112 & 0xFFFF) * (int(uint(temp_183) >> 16)) & 0xFFFF | temp_183 << 16;
    temp_188 = int(temp_145) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(0 - ((int(uint(abs(temp_116)) >> 16)) * (int(uint(temp_158) >> 16)) << 16) + (abs(temp_116) & 0xFFFF) * (int(temp_145) & 0xFFFF) + (temp_158 << 16)))), 0.0)));
    temp_189 = int(temp_165) + int(uint(max(trunc(intBitsToFloat(temp_163) * float(uint(0 - ((int(uint(abs(temp_119)) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (abs(temp_119) & 0xFFFF) * (int(temp_165) & 0xFFFF) + (temp_181 << 16)))), 0.0)));
    temp_190 = (temp_119 & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_191 = (temp_116 & 0xFFFF) * (int(uint(temp_184) >> 16)) & 0xFFFF | temp_184 << 16;
    temp_192 = (abs(temp_116) & 0xFFFF) * (int(uint(temp_188) >> 16)) & 0xFFFF | temp_188 << 16;
    temp_193 = (abs(temp_119) & 0xFFFF) * (int(uint(temp_189) >> 16)) & 0xFFFF | temp_189 << 16;
    temp_194 = 0 - temp_183 + ((uint(0 - ((int(uint(temp_112) >> 16)) * (int(uint(temp_187) >> 16)) << 16) + (temp_112 & 0xFFFF) * (temp_183 & 0xFFFF) + (temp_187 << 16)) >= uint(temp_112) ? -1 : 0));
    temp_195 = 0 - temp_184 + ((uint(0 - ((int(uint(temp_116) >> 16)) * (int(uint(temp_191) >> 16)) << 16) + (temp_116 & 0xFFFF) * (temp_184 & 0xFFFF) + (temp_191 << 16)) >= uint(temp_116) ? -1 : 0));
    temp_196 = (temp_112 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_197 = 0 - int(uint(temp_112) >> 31);
    temp_198 = 0 - temp_185 + ((uint(0 - ((int(uint(temp_119) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_190 << 16)) >= uint(temp_119) ? -1 : 0));
    temp_199 = (temp_116 & 0xFFFF) * (int(uint(temp_195) >> 16)) & 0xFFFF | temp_195 << 16;
    temp_200 = (temp_119 & 0xFFFF) * (int(uint(temp_198) >> 16)) & 0xFFFF | temp_198 << 16;
    temp_201 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_176, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_203 = 0 - int(uint(temp_116) >> 31);
    temp_204 = 0 - int(uint(temp_119) >> 31);
    temp_205 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_206 = fma(temp_202, temp_123, -0.5);
    temp_207 = fma(temp_205, temp_122, -0.5);
    out_attr4.y = _sysEmitterStaticUniformBlock.data[104].x;
    temp_208 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_209 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr5.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_127, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_125, 0.0 - temp_127, temp_125), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_118, 0.0 - temp_125, temp_118), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_118, 0.0 - temp_117, temp_117), fma(temp_117, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = fma(fma(temp_207, cos(temp_201), 0.0 - temp_206 * sin(temp_201)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_178, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_205, float(temp_119 < 0 || !(temp_119 == 0) ? ((int(uint(temp_119) >> 16)) * (int(uint(temp_200) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_198 & 0xFFFF) + (temp_200 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_172 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_137), temp_144, 0.0 - temp_142 * sin(temp_137)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), fma(temp_140, float(temp_112 < 0 || !(temp_112 == 0) ? ((int(uint(temp_112) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (temp_112 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_196 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_144, sin(temp_137), cos(temp_137) * temp_142), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_15, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_134, 0.0 - float(temp_112 < 0 || !(temp_112 == 0) ? 0 - temp_197 + (temp_182 + 0 - (uint(0 - ((int(uint(abs(temp_112)) >> 16)) * (int(uint(temp_186) >> 16)) << 16) + (abs(temp_112) & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_186 << 16)) >= uint(abs(temp_112)) ? -1 : 0) ^ temp_197) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_15 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_160, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_208, temp_121, -0.5), fma(temp_208, float(temp_116 < 0 || !(temp_116 == 0) ? ((int(uint(temp_116) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_116 & 0xFFFF) * (temp_195 & 0xFFFF) + (temp_199 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_153 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_161, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_209, temp_136, -0.5), 0.0 - fma(temp_209, 0.0 - float(temp_116 < 0 || !(temp_116 == 0) ? 0 - temp_203 + (temp_188 + 0 - (uint(0 - ((int(uint(abs(temp_116)) >> 16)) * (int(uint(temp_192) >> 16)) << 16) + (abs(temp_116) & 0xFFFF) * (temp_188 & 0xFFFF) + (temp_192 << 16)) >= uint(abs(temp_116)) ? -1 : 0) ^ temp_203) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_155 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_207, sin(temp_201), cos(temp_201) * temp_206), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_179, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_202, 0.0 - float(temp_119 < 0 || !(temp_119 == 0) ? 0 - temp_204 + (temp_189 + 0 - (uint(0 - ((int(uint(abs(temp_119)) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (abs(temp_119) & 0xFFFF) * (temp_189 & 0xFFFF) + (temp_193 << 16)) >= uint(abs(temp_119)) ? -1 : 0) ^ temp_204) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_174 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
