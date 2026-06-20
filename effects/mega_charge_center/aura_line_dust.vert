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
layout (location = 3) in vec4 sysVertexColor0Attr;
layout (location = 4) in vec4 sysLocalPosAttr;
layout (location = 5) in vec4 sysLocalVecAttr;
layout (location = 6) in vec4 sysScaleAttr;
layout (location = 7) in vec4 sysRandomAttr;
layout (location = 8) in vec4 sysInitRotateAttr;
layout (location = 9) in vec4 sysEmtMat0Attr;
layout (location = 10) in vec4 sysEmtMat1Attr;
layout (location = 11) in vec4 sysEmtMat2Attr;

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
    bool temp_51;
    int temp_52;
    int temp_53;
    precise float temp_54;
    int temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    precise float temp_60;
    precise float temp_61;
    int temp_62;
    precise float temp_63;
    precise float temp_64;
    bool temp_65;
    precise float temp_66;
    int temp_67;
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
    int temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    precise float temp_83;
    precise float temp_84;
    precise float temp_85;
    precise float temp_86;
    bool temp_87;
    precise float temp_88;
    precise float temp_89;
    int temp_90;
    int temp_91;
    int temp_92;
    precise float temp_93;
    precise float temp_94;
    precise float temp_95;
    uint temp_96;
    uint temp_97;
    uint temp_98;
    precise float temp_99;
    int temp_100;
    int temp_101;
    int temp_102;
    precise float temp_103;
    uint temp_104;
    uint temp_105;
    int temp_106;
    uint temp_107;
    int temp_108;
    int temp_109;
    int temp_110;
    int temp_111;
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
    bool temp_122;
    precise float temp_123;
    int temp_124;
    int temp_125;
    int temp_126;
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
    bool temp_146;
    int temp_147;
    bool temp_148;
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
    bool temp_160;
    int temp_161;
    int temp_162;
    precise float temp_163;
    precise float temp_164;
    precise float temp_165;
    precise float temp_166;
    int temp_167;
    int temp_168;
    int temp_169;
    int temp_170;
    int temp_171;
    int temp_172;
    int temp_173;
    precise float temp_174;
    int temp_175;
    int temp_176;
    int temp_177;
    precise float temp_178;
    precise float temp_179;
    int temp_180;
    int temp_181;
    precise float temp_182;
    int temp_183;
    precise float temp_184;
    precise float temp_185;
    precise float temp_186;
    int temp_187;
    int temp_188;
    int temp_189;
    int temp_190;
    int temp_191;
    int temp_192;
    precise float temp_193;
    precise float temp_194;
    precise float temp_195;
    precise float temp_196;
    precise float temp_197;
    precise float temp_198;
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
    temp_23 = sysScaleAttr.x;
    temp_24 = sqrt(temp_20) > 0.0;
    temp_25 = sqrt(temp_21) > 0.0;
    temp_26 = temp_19;
    temp_27 = sqrt(temp_20);
    temp_28 = sqrt(temp_21);
    temp_29 = temp_23;
    if (temp_22)
    {
        temp_26 = inversesqrt(temp_19);
    }
    if (!temp_22)
    {
        temp_27 = 0.0;
    }
    temp_30 = intBitsToFloat(undef);
    temp_31 = temp_27;
    if (temp_24)
    {
        temp_30 = inversesqrt(temp_20);
    }
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_30;
    if (!temp_22)
    {
        temp_32 = 0.0;
    }
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_32;
    if (temp_25)
    {
        temp_34 = inversesqrt(temp_21);
    }
    temp_36 = temp_34;
    if (!temp_22)
    {
        temp_28 = 0.0;
    }
    temp_37 = temp_28;
    if (!temp_24)
    {
        temp_33 = 0.0;
    }
    temp_38 = intBitsToFloat(undef);
    temp_39 = temp_33;
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
    if (!temp_25)
    {
        temp_36 = 0.0;
    }
    temp_43 = intBitsToFloat(undef);
    temp_44 = temp_36;
    if (!temp_25)
    {
        temp_43 = 0.0;
    }
    temp_45 = temp_43;
    if (!temp_25)
    {
        temp_29 = 0.0;
    }
    temp_46 = temp_29;
    if (temp_22)
    {
        temp_37 = temp_26 * temp_9;
    }
    if (temp_22)
    {
        temp_35 = temp_26 * temp_12;
    }
    if (temp_24)
    {
        temp_42 = temp_33 * temp_10;
    }
    if (temp_24)
    {
        temp_41 = temp_33 * temp_13;
    }
    if (temp_25)
    {
        temp_46 = temp_36 * temp_11;
    }
    if (temp_25)
    {
        temp_45 = temp_36 * temp_14;
    }
    if (temp_22)
    {
        temp_31 = temp_26 * temp_15;
    }
    if (temp_24)
    {
        temp_39 = temp_33 * temp_16;
    }
    if (temp_25)
    {
        temp_44 = temp_36 * temp_17;
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
    temp_51 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_52 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_53 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_54 = floor(temp_18 * 2.0);
    temp_55 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_56 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_57 = floor(temp_50 * 2.0);
    temp_58 = sysTexCoordAttr.x;
    temp_59 = sysTexCoordAttr.y;
    temp_60 = floor(temp_49 * 2.0);
    temp_61 = temp_48 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_62 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_63 = temp_58;
    temp_64 = _sysEmitterStaticUniformBlock.data[114].w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_18 > 0.5) ? -1 : 0)) != 0))
    {
        temp_63 = 0.0 - temp_58 + 1.0;
    }
    temp_65 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_66 = fma(fma(temp_18 + temp_49, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_67 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_68 = temp_58;
    temp_69 = temp_58;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_50 > 0.5) ? -1 : 0)) != 0))
    {
        temp_68 = 0.0 - temp_58 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_69 = 0.0 - temp_58 + 1.0;
    }
    temp_70 = temp_48 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_71 = fma(fma(temp_49 + temp_50, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_72 = fma(fma(temp_18 + temp_50, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_73 = temp_59;
    temp_74 = temp_59;
    temp_75 = temp_59;
    if (!temp_65)
    {
        temp_64 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_76 = temp_64;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_49 > 0.5) ? -1 : 0)) != 0))
    {
        temp_73 = 0.0 - temp_59 + 1.0;
    }
    if (!temp_65)
    {
        temp_76 = 1.0 / temp_64;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_74 = 0.0 - temp_59 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_50 > 0.5) ? -1 : 0)) != 0))
    {
        temp_75 = 0.0 - temp_59 + 1.0;
    }
    temp_77 = temp_48 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_78 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_79 = (0.0 - (temp_60 < 0.0 ? 1.0 : 0.0) + (temp_60 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_52 > 0 ? -1 : 0) + 0 - (temp_52 >= 0 ? 0 : 1)));
    temp_80 = fma(temp_77, 0.0 - temp_70, temp_70);
    temp_81 = intBitsToFloat(undef);
    if (!temp_65)
    {
        temp_81 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_76, temp_76);
    }
    temp_82 = (0.0 - (temp_57 < 0.0 ? 1.0 : 0.0) + (temp_57 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_53 > 0 ? -1 : 0) + 0 - (temp_53 >= 0 ? 0 : 1)));
    temp_83 = (0.0 - (temp_54 < 0.0 ? 1.0 : 0.0) + (temp_54 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_55 > 0 ? -1 : 0) + 0 - (temp_55 >= 0 ? 0 : 1)));
    temp_84 = sysInitRotateAttr.x;
    temp_85 = sysInitRotateAttr.y;
    temp_86 = sysInitRotateAttr.z;
    temp_87 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_88 = temp_72 * temp_83;
    temp_89 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_90 = floatBitsToInt(1.0 / float(uint(temp_62))) + -2;
    temp_91 = floatBitsToInt(1.0 / float(uint(temp_67))) + -2;
    temp_92 = floatBitsToInt(1.0 / float(uint(temp_78))) + -2;
    temp_93 = temp_88;
    temp_94 = temp_81;
    temp_95 = temp_89;
    if (temp_87)
    {
        temp_93 = temp_89 * temp_89;
    }
    temp_96 = uint(max(trunc(float(0u) * intBitsToFloat(temp_90)), 0.0));
    temp_97 = uint(max(trunc(float(0u) * intBitsToFloat(temp_91)), 0.0));
    temp_98 = uint(max(trunc(float(0u) * intBitsToFloat(temp_92)), 0.0));
    temp_99 = intBitsToFloat(undef);
    if (temp_87)
    {
        temp_99 = temp_93 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_100 = floatBitsToInt(1.0 / float(uint(abs(temp_62)))) + -2;
    temp_101 = floatBitsToInt(1.0 / float(uint(abs(temp_67)))) + -2;
    temp_102 = floatBitsToInt(1.0 / float(uint(abs(temp_78)))) + -2;
    temp_103 = temp_99;
    if (temp_65)
    {
        temp_94 = temp_5;
    }
    temp_104 = uint(max(trunc(intBitsToFloat(temp_100) * float(0u)), 0.0));
    temp_105 = uint(max(trunc(float(0u) * intBitsToFloat(temp_101)), 0.0));
    temp_106 = (temp_62 & 0xFFFF) * (int(temp_96 >> 16)) & 0xFFFF | int(temp_96) << 16;
    temp_107 = uint(max(trunc(float(0u) * intBitsToFloat(temp_102)), 0.0));
    temp_108 = (temp_67 & 0xFFFF) * (int(temp_97) & 0xFFFF);
    temp_109 = (temp_67 & 0xFFFF) * (int(temp_97 >> 16)) & 0xFFFF | int(temp_97) << 16;
    temp_110 = (temp_78 & 0xFFFF) * (int(temp_98) & 0xFFFF);
    temp_111 = (temp_78 & 0xFFFF) * (int(temp_98 >> 16)) & 0xFFFF | int(temp_98) << 16;
    temp_112 = intBitsToFloat(temp_108);
    temp_113 = intBitsToFloat(temp_110);
    if (temp_87)
    {
        temp_112 = temp_99 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_114 = temp_112;
    if (temp_87)
    {
        temp_113 = temp_99 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_115 = temp_113;
    if (temp_87)
    {
        temp_103 = temp_99 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_116 = temp_103;
    if (!temp_87)
    {
        temp_117 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_118 = (temp_89 + 0.0 - fma(temp_117, exp2(temp_89 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_117)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_116 = temp_118 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_115 = temp_118 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_114 = temp_118 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_87)
    {
        temp_119 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_95 = fma(exp2(temp_89 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_119, temp_119);
    }
    temp_120 = sysScaleAttr.w;
    temp_121 = 0;
    if (temp_51)
    {
        temp_121 = 1;
    }
    temp_122 = temp_121 == 1;
    temp_123 = fma(temp_77, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_61, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_56, _sysEmitterStaticUniformBlock.data[96].z), temp_80, fma(temp_70, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_124 = (abs(temp_62) & 0xFFFF) * (int(temp_104 >> 16)) & 0xFFFF | int(temp_104) << 16;
    temp_125 = (abs(temp_67) & 0xFFFF) * (int(temp_105 >> 16)) & 0xFFFF | int(temp_105) << 16;
    temp_126 = (abs(temp_78) & 0xFFFF) * (int(temp_107 >> 16)) & 0xFFFF | int(temp_107) << 16;
    temp_127 = fma(fma(temp_66 * temp_79, -2.0, temp_66), temp_94, fma(temp_18 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_79 * temp_84, -2.0, temp_84)));
    temp_128 = fma(fma(temp_95, sysLocalVecAttr.x, temp_116), temp_120, sysLocalPosAttr.x);
    temp_129 = fma(fma(temp_95, sysLocalVecAttr.y, temp_115), temp_120, sysLocalPosAttr.y);
    temp_130 = fma(fma(temp_88, -2.0, temp_72), temp_94, fma(temp_50 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_83 * temp_86, -2.0, temp_86)));
    temp_131 = fma(fma(temp_71 * temp_82, -2.0, temp_71), temp_94, fma(temp_49 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_82 * temp_85, -2.0, temp_85)));
    temp_132 = (clamp(min(0.0, temp_18) + -0.0, 0.0, 1.0) + temp_23) * fma(temp_77, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_61, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_56, _sysEmitterStaticUniformBlock.data[96].x), temp_80, fma(temp_70, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_133 = fma(temp_77, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_61, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_56, _sysEmitterStaticUniformBlock.data[96].y), temp_80, fma(temp_70, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_134 = fma(fma(temp_95, sysLocalVecAttr.z, temp_114), temp_120, sysLocalPosAttr.z);
    temp_135 = temp_18;
    temp_136 = temp_49;
    temp_137 = temp_18;
    temp_138 = temp_49;
    if (temp_122)
    {
        temp_135 = temp_49;
    }
    temp_139 = temp_135;
    temp_140 = temp_135;
    if (temp_122)
    {
        temp_136 = temp_50;
    }
    temp_141 = temp_136;
    temp_142 = temp_136;
    if (temp_122)
    {
        temp_137 = temp_49;
    }
    temp_143 = temp_137;
    temp_144 = temp_137;
    if (temp_122)
    {
        temp_138 = temp_50;
    }
    temp_145 = temp_138;
    if (!temp_122)
    {
        temp_146 = temp_121 == 2;
        if (temp_146)
        {
            temp_139 = temp_50;
        }
        temp_140 = temp_139;
        if (temp_146)
        {
            temp_141 = temp_18;
        }
        temp_142 = temp_141;
        if (temp_146)
        {
            temp_143 = temp_18;
        }
        temp_144 = temp_143;
        if (temp_146)
        {
            temp_145 = temp_49;
        }
    }
    temp_147 = 0;
    if (temp_51)
    {
        temp_147 = 2;
    }
    temp_148 = temp_147 == 1;
    temp_149 = temp_18;
    temp_150 = temp_49;
    temp_151 = temp_18;
    temp_152 = temp_49;
    if (temp_148)
    {
        temp_149 = temp_49;
    }
    temp_153 = temp_149;
    temp_154 = temp_149;
    if (temp_148)
    {
        temp_150 = temp_50;
    }
    temp_155 = temp_150;
    temp_156 = temp_150;
    if (temp_148)
    {
        temp_151 = temp_49;
    }
    temp_157 = temp_151;
    temp_158 = temp_151;
    if (temp_148)
    {
        temp_152 = temp_50;
    }
    temp_159 = temp_152;
    if (!temp_148)
    {
        temp_160 = temp_147 == 2;
        if (temp_160)
        {
            temp_153 = temp_50;
        }
        temp_154 = temp_153;
        if (temp_160)
        {
            temp_155 = temp_18;
        }
        temp_156 = temp_155;
        if (temp_160)
        {
            temp_157 = temp_18;
        }
        temp_158 = temp_157;
        if (temp_160)
        {
            temp_159 = temp_49;
        }
    }
    temp_161 = int(temp_98) + int(uint(max(trunc(intBitsToFloat(temp_92) * float(uint(0 - ((int(uint(temp_78) >> 16)) * (int(uint(temp_111) >> 16)) << 16) + temp_110 + (temp_111 << 16)))), 0.0)));
    temp_162 = int(temp_96) + int(uint(max(trunc(intBitsToFloat(temp_90) * float(uint(0 - ((int(uint(temp_62) >> 16)) * (int(uint(temp_106) >> 16)) << 16) + (temp_62 & 0xFFFF) * (int(temp_96) & 0xFFFF) + (temp_106 << 16)))), 0.0)));
    temp_163 = sin(temp_127) * cos(temp_131);
    temp_164 = sin(temp_127) * sin(temp_131);
    temp_165 = cos(temp_127) * sin(temp_131);
    temp_166 = cos(temp_127) * cos(temp_131);
    temp_167 = int(temp_97) + int(uint(max(trunc(intBitsToFloat(temp_91) * float(uint(0 - ((int(uint(temp_67) >> 16)) * (int(uint(temp_109) >> 16)) << 16) + temp_108 + (temp_109 << 16)))), 0.0)));
    temp_168 = int(temp_104) + int(uint(max(trunc(intBitsToFloat(temp_100) * float(uint(0 - ((int(uint(abs(temp_62)) >> 16)) * (int(uint(temp_124) >> 16)) << 16) + (abs(temp_62) & 0xFFFF) * (int(temp_104) & 0xFFFF) + (temp_124 << 16)))), 0.0)));
    temp_169 = int(temp_107) + int(uint(max(trunc(intBitsToFloat(temp_102) * float(uint(0 - ((int(uint(abs(temp_78)) >> 16)) * (int(uint(temp_126) >> 16)) << 16) + (abs(temp_78) & 0xFFFF) * (int(temp_107) & 0xFFFF) + (temp_126 << 16)))), 0.0)));
    temp_170 = (abs(temp_62) & 0xFFFF) * (int(uint(temp_168) >> 16)) & 0xFFFF | temp_168 << 16;
    temp_171 = int(temp_105) + int(uint(max(trunc(intBitsToFloat(temp_101) * float(uint(0 - ((int(uint(abs(temp_67)) >> 16)) * (int(uint(temp_125) >> 16)) << 16) + (abs(temp_67) & 0xFFFF) * (int(temp_105) & 0xFFFF) + (temp_125 << 16)))), 0.0)));
    temp_172 = (temp_62 & 0xFFFF) * (int(uint(temp_162) >> 16)) & 0xFFFF | temp_162 << 16;
    temp_173 = (temp_67 & 0xFFFF) * (int(uint(temp_167) >> 16)) & 0xFFFF | temp_167 << 16;
    temp_174 = 0.0 + fma(cos(temp_130) * sin(temp_131), temp_123, fma(temp_132, cos(temp_130) * cos(temp_131), temp_133 * 0.0 - sin(temp_130)));
    temp_175 = (abs(temp_67) & 0xFFFF) * (int(uint(temp_171) >> 16)) & 0xFFFF | temp_171 << 16;
    temp_176 = (abs(temp_78) & 0xFFFF) * (int(uint(temp_169) >> 16)) & 0xFFFF | temp_169 << 16;
    temp_177 = (temp_78 & 0xFFFF) * (int(uint(temp_161) >> 16)) & 0xFFFF | temp_161 << 16;
    temp_178 = 0.0 + fma(fma(sin(temp_130), temp_165, 0.0 - temp_163), temp_123, fma(temp_132, fma(sin(temp_130), temp_166, temp_164), temp_133 * cos(temp_130) * cos(temp_127)));
    temp_179 = 0.0 + fma(fma(sin(temp_130), temp_164, temp_166), temp_123, fma(temp_132, fma(sin(temp_130), temp_163, 0.0 - temp_165), temp_133 * cos(temp_130) * sin(temp_127)));
    temp_180 = 0 - temp_167 + ((uint(0 - ((int(uint(temp_67) >> 16)) * (int(uint(temp_173) >> 16)) << 16) + (temp_67 & 0xFFFF) * (temp_167 & 0xFFFF) + (temp_173 << 16)) >= uint(temp_67) ? -1 : 0));
    temp_181 = 0 - temp_162 + ((uint(0 - ((int(uint(temp_62) >> 16)) * (int(uint(temp_172) >> 16)) << 16) + (temp_62 & 0xFFFF) * (temp_162 & 0xFFFF) + (temp_172 << 16)) >= uint(temp_62) ? -1 : 0));
    temp_182 = fma(0.0, temp_123, fma(0.0, temp_132, 0.0 * temp_133)) + 1.0;
    temp_183 = (temp_62 & 0xFFFF) * (int(uint(temp_181) >> 16)) & 0xFFFF | temp_181 << 16;
    temp_184 = fma(fma(temp_134, temp_17, fma(temp_129, temp_16, temp_128 * temp_15)) + sysEmtMat2Attr.w, temp_182, fma(temp_179, temp_44, fma(temp_178, temp_39, temp_174 * temp_31)));
    temp_185 = fma(fma(temp_134, temp_14, fma(temp_129, temp_13, temp_128 * temp_12)) + sysEmtMat1Attr.w, temp_182, fma(temp_179, temp_45, fma(temp_178, temp_41, temp_174 * temp_35)));
    temp_186 = fma(fma(temp_134, temp_11, fma(temp_129, temp_10, temp_128 * temp_9)) + sysEmtMat0Attr.w, temp_182, fma(temp_179, temp_46, fma(temp_178, temp_42, temp_174 * temp_37)));
    temp_187 = 0 - int(uint(temp_62) >> 31);
    temp_188 = 0 - int(uint(temp_67) >> 31);
    temp_189 = 0 - int(uint(temp_78) >> 31);
    temp_190 = 0 - temp_161 + ((uint(0 - ((int(uint(temp_78) >> 16)) * (int(uint(temp_177) >> 16)) << 16) + (temp_78 & 0xFFFF) * (temp_161 & 0xFFFF) + (temp_177 << 16)) >= uint(temp_78) ? -1 : 0));
    temp_191 = (temp_67 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_192 = (temp_78 & 0xFFFF) * (int(uint(temp_190) >> 16)) & 0xFFFF | temp_190 << 16;
    out_attr5.y = sysVertexColor0Attr.y;
    temp_193 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_194 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_195 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_196 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_197 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.x = sysVertexColor0Attr.x;
    temp_198 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr5.z = sysVertexColor0Attr.z;
    out_attr5.w = sysVertexColor0Attr.w;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    gl_Position.x = fma(temp_184, _sysViewUniformBlock.data[8].z, fma(temp_185, _sysViewUniformBlock.data[8].y, temp_186 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_184, _sysViewUniformBlock.data[9].z, fma(temp_185, _sysViewUniformBlock.data[9].y, temp_186 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_184, _sysViewUniformBlock.data[10].z, fma(temp_185, _sysViewUniformBlock.data[10].y, temp_186 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_184, _sysViewUniformBlock.data[11].z, fma(temp_185, _sysViewUniformBlock.data[11].y, temp_186 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr2.x = fma(fma(temp_193, temp_63, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_18, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_193, float(temp_62 < 0 || !(temp_62 == 0) ? ((int(uint(temp_62) >> 16)) * (int(uint(temp_183) >> 16)) << 16) + (temp_62 & 0xFFFF) * (temp_181 & 0xFFFF) + (temp_183 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_18 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_49, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_196, temp_73, -0.5), 0.0 - fma(temp_196, 0.0 - float(temp_62 < 0 || !(temp_62 == 0) ? 0 - temp_187 + (temp_168 + 0 - (uint(0 - ((int(uint(abs(temp_62)) >> 16)) * (int(uint(temp_170) >> 16)) << 16) + (abs(temp_62) & 0xFFFF) * (temp_168 & 0xFFFF) + (temp_170 << 16)) >= uint(abs(temp_62)) ? -1 : 0) ^ temp_187) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_49 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_144, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_194, temp_68, -0.5), fma(temp_194, float(temp_67 < 0 || !(temp_67 == 0) ? ((int(uint(temp_67) >> 16)) * (int(uint(temp_191) >> 16)) << 16) + (temp_67 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_191 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_140 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_145, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_197, temp_74, -0.5), 0.0 - fma(temp_197, 0.0 - float(temp_67 < 0 || !(temp_67 == 0) ? 0 - temp_188 + (temp_171 + 0 - (uint(0 - ((int(uint(abs(temp_67)) >> 16)) * (int(uint(temp_175) >> 16)) << 16) + (abs(temp_67) & 0xFFFF) * (temp_171 & 0xFFFF) + (temp_175 << 16)) >= uint(abs(temp_67)) ? -1 : 0) ^ temp_188) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_142 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_158, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_195, temp_69, -0.5), fma(temp_195, float(temp_78 < 0 || !(temp_78 == 0) ? ((int(uint(temp_78) >> 16)) * (int(uint(temp_192) >> 16)) << 16) + (temp_78 & 0xFFFF) * (temp_190 & 0xFFFF) + (temp_192 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_154 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr3.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_159, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_198, temp_75, -0.5), 0.0 - fma(temp_198, 0.0 - float(temp_78 < 0 || !(temp_78 == 0) ? 0 - temp_189 + (temp_169 + 0 - (uint(0 - ((int(uint(abs(temp_78)) >> 16)) * (int(uint(temp_176) >> 16)) << 16) + (abs(temp_78) & 0xFFFF) * (temp_169 & 0xFFFF) + (temp_176 << 16)) >= uint(abs(temp_78)) ? -1 : 0) ^ temp_189) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_156 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
