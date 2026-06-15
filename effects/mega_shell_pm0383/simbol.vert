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

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;


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
    int temp_12;
    int temp_13;
    int temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    int temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    int temp_27;
    precise float temp_28;
    precise float temp_29;
    precise float temp_30;
    bool temp_31;
    precise float temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    precise float temp_39;
    int temp_40;
    precise float temp_41;
    precise float temp_42;
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
    int temp_46;
    uint temp_47;
    bool temp_48;
    uint temp_49;
    int temp_50;
    precise float temp_51;
    int temp_52;
    int temp_53;
    uint temp_54;
    int temp_55;
    uint temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    int temp_60;
    precise float temp_61;
    precise float temp_62;
    precise float temp_63;
    precise float temp_64;
    precise float temp_65;
    precise float temp_66;
    precise float temp_67;
    precise float temp_68;
    precise float temp_69;
    int temp_70;
    precise float temp_71;
    precise float temp_72;
    precise float temp_73;
    precise float temp_74;
    int temp_75;
    precise float temp_76;
    precise float temp_77;
    int temp_78;
    int temp_79;
    int temp_80;
    int temp_81;
    int temp_82;
    int temp_83;
    int temp_84;
    precise float temp_85;
    int temp_86;
    precise float temp_87;
    bool temp_88;
    precise float temp_89;
    bool temp_90;
    int temp_91;
    precise float temp_92;
    int temp_93;
    precise float temp_94;
    precise float temp_95;
    int temp_96;
    bool temp_97;
    precise float temp_98;
    precise float temp_99;
    int temp_100;
    int temp_101;
    int temp_102;
    precise float temp_103;
    int temp_104;
    int temp_105;
    precise float temp_106;
    bool temp_107;
    precise float temp_108;
    int temp_109;
    int temp_110;
    precise float temp_111;
    precise float temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    int temp_116;
    int temp_117;
    precise float temp_118;
    bool temp_119;
    precise float temp_120;
    bool temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    bool temp_127;
    bool temp_128;
    bool temp_129;
    precise float temp_130;
    precise float temp_131;
    precise float temp_132;
    precise float temp_133;
    bool temp_134;
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
    bool temp_151;
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
    temp_9 = sysRandomAttr.y;
    temp_10 = sysRandomAttr.x;
    temp_11 = sysRandomAttr.z;
    temp_12 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_13 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_14 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_15 = floor(temp_11 * 2.0);
    temp_16 = floor(temp_10 * 2.0);
    temp_17 = sysTexCoordAttr.x;
    temp_18 = sysTexCoordAttr.y;
    temp_19 = floor(temp_9 * 2.0);
    temp_20 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_21 = temp_5 * (1.0 / temp_6);
    temp_22 = fma(fma(temp_10 + temp_9, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_23 = fma(fma(temp_9 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_24 = fma(fma(temp_10 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_25 = temp_18;
    temp_26 = temp_18;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_25 = 0.0 - temp_18 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_26 = 0.0 - temp_18 + 1.0;
    }
    temp_27 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_28 = temp_17;
    temp_29 = temp_17;
    temp_30 = _sysEmitterStaticUniformBlock.data[114].w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_28 = 0.0 - temp_17 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_29 = 0.0 - temp_17 + 1.0;
    }
    temp_31 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_32 = temp_21 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_33 = temp_21 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    if (!temp_31)
    {
        temp_30 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_34 = fma(temp_33, 0.0 - temp_32, temp_32);
    temp_35 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_36 = intBitsToFloat(undef);
    temp_37 = temp_34;
    temp_38 = temp_35;
    if (!temp_31)
    {
        temp_36 = 1.0 / temp_30;
    }
    temp_39 = temp_21 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_40 = floatBitsToInt(1.0 / float(uint(temp_20))) + -2;
    temp_41 = temp_21 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_42 = temp_41;
    if (temp_31)
    {
        temp_37 = temp_5;
    }
    temp_43 = float(uint(abs(temp_27)));
    temp_44 = temp_37;
    temp_45 = temp_43;
    if (!temp_31)
    {
        temp_44 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_36, temp_36);
    }
    temp_46 = floatBitsToInt(1.0 / float(uint(temp_27))) + -2;
    temp_47 = uint(max(trunc(float(0u) * intBitsToFloat(temp_40)), 0.0));
    temp_48 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_49 = uint(max(trunc(float(0u) * intBitsToFloat(temp_46)), 0.0));
    temp_50 = floatBitsToInt(1.0 / float(uint(abs(temp_20)))) + -2;
    temp_51 = sysScaleAttr.w;
    temp_52 = (temp_20 & 0xFFFF) * (int(temp_47 >> 16)) & 0xFFFF | int(temp_47) << 16;
    temp_53 = floatBitsToInt(1.0 / temp_43) + -2;
    temp_54 = uint(max(trunc(intBitsToFloat(temp_50) * float(0u)), 0.0));
    temp_55 = (temp_27 & 0xFFFF) * (int(temp_49 >> 16)) & 0xFFFF | int(temp_49) << 16;
    if (temp_48)
    {
        temp_45 = temp_35 * temp_35;
    }
    temp_56 = uint(max(trunc(float(0u) * intBitsToFloat(temp_53)), 0.0));
    temp_57 = temp_21 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_58 = intBitsToFloat(undef);
    if (temp_48)
    {
        temp_58 = temp_45 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_59 = temp_21 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_60 = (abs(temp_20) & 0xFFFF) * (int(temp_54 >> 16)) & 0xFFFF | int(temp_54) << 16;
    temp_61 = intBitsToFloat(undef);
    temp_62 = temp_58;
    if (temp_48)
    {
        temp_61 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_63 = temp_61;
    if (temp_48)
    {
        temp_42 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_64 = temp_42;
    if (temp_48)
    {
        temp_62 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_65 = temp_62;
    if (!temp_48)
    {
        temp_66 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_67 = (temp_35 + 0.0 - fma(temp_66, exp2(temp_35 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_66)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_65 = temp_67 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_63 = temp_67 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_64 = temp_67 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    if (!temp_48)
    {
        temp_68 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_38 = fma(exp2(temp_35 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_68, temp_68);
    }
    temp_69 = fma(fma(temp_22 * (0.0 - temp_19 < 0.0 ? 1.0 : 0.0 + (temp_19 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_12 > 0 ? -1 : 0) + 0 - temp_12 >= 0 ? 0 : 1)), -2.0, temp_22), temp_44, (temp_10 + -0.5) * _sysEmitterStaticUniformBlock.data[113].x);
    temp_70 = (abs(temp_27) & 0xFFFF) * (int(temp_56 >> 16)) & 0xFFFF | int(temp_56) << 16;
    temp_71 = temp_21 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_72 = fma(fma(temp_38, sysLocalVecAttr.x, temp_63), temp_51, sysLocalPosAttr.x);
    temp_73 = fma(fma(temp_38, sysLocalVecAttr.y, temp_64), temp_51, sysLocalPosAttr.y);
    temp_74 = temp_21 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_75 = int(temp_47) + int(uint(max(trunc(intBitsToFloat(temp_40) * float(uint(0 - ((int(uint(temp_20) >> 16)) * (int(uint(temp_52) >> 16)) << 16) + (temp_20 & 0xFFFF) * (int(temp_47) & 0xFFFF) + (temp_52 << 16)))), 0.0)));
    temp_76 = fma(fma(temp_38, sysLocalVecAttr.z, temp_65), temp_51, sysLocalPosAttr.z);
    temp_77 = fma(fma(temp_24 * (0.0 - temp_16 < 0.0 ? 1.0 : 0.0 + (temp_16 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - temp_14 >= 0 ? 0 : 1)), -2.0, temp_24), temp_44, (temp_11 + -0.5) * _sysEmitterStaticUniformBlock.data[113].z);
    temp_78 = int(temp_49) + int(uint(max(trunc(intBitsToFloat(temp_46) * float(uint(0 - ((int(uint(temp_27) >> 16)) * (int(uint(temp_55) >> 16)) << 16) + (temp_27 & 0xFFFF) * (int(temp_49) & 0xFFFF) + (temp_55 << 16)))), 0.0)));
    temp_79 = (temp_20 & 0xFFFF) * (int(uint(temp_75) >> 16)) & 0xFFFF | temp_75 << 16;
    temp_80 = int(temp_54) + int(uint(max(trunc(intBitsToFloat(temp_50) * float(uint(0 - ((int(uint(abs(temp_20)) >> 16)) * (int(uint(temp_60) >> 16)) << 16) + (abs(temp_20) & 0xFFFF) * (int(temp_54) & 0xFFFF) + (temp_60 << 16)))), 0.0)));
    temp_81 = (temp_27 & 0xFFFF) * (int(uint(temp_78) >> 16)) & 0xFFFF | temp_78 << 16;
    temp_82 = int(temp_56) + int(uint(max(trunc(intBitsToFloat(temp_53) * float(uint(0 - ((int(uint(abs(temp_27)) >> 16)) * (int(uint(temp_70) >> 16)) << 16) + (abs(temp_27) & 0xFFFF) * (int(temp_56) & 0xFFFF) + (temp_70 << 16)))), 0.0)));
    temp_83 = (abs(temp_20) & 0xFFFF) * (temp_80 & 0xFFFF);
    temp_84 = (abs(temp_20) & 0xFFFF) * (int(uint(temp_80) >> 16)) & 0xFFFF | temp_80 << 16;
    temp_85 = fma(temp_76, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_73, _sysEmitterDynamicUniformBlock.data[4].y, temp_72 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_86 = (abs(temp_27) & 0xFFFF) * (int(uint(temp_82) >> 16)) & 0xFFFF | temp_82 << 16;
    temp_87 = 0.0 - temp_85 + _sysViewUniformBlock.data[17].x;
    temp_88 = uint(0 - ((int(uint(temp_20) >> 16)) * (int(uint(temp_79) >> 16)) << 16) + (temp_20 & 0xFFFF) * (temp_75 & 0xFFFF) + (temp_79 << 16)) >= uint(temp_20);
    temp_89 = fma(temp_76, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_73, _sysEmitterDynamicUniformBlock.data[6].y, temp_72 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_90 = abs(temp_87) == 0.0;
    temp_91 = 0 - temp_75 + (temp_88 ? -1 : 0);
    temp_92 = 0.0 - temp_89 + _sysViewUniformBlock.data[17].z;
    temp_93 = (temp_20 & 0xFFFF) * (int(uint(temp_91) >> 16)) & 0xFFFF | temp_91 << 16;
    temp_94 = fma(temp_76, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_73, _sysEmitterDynamicUniformBlock.data[5].y, temp_72 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_95 = temp_85 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_96 = 0 - temp_78 + ((uint(0 - ((int(uint(temp_27) >> 16)) * (int(uint(temp_81) >> 16)) << 16) + (temp_27 & 0xFFFF) * (temp_78 & 0xFFFF) + (temp_81 << 16)) >= uint(temp_27) ? -1 : 0));
    temp_97 = abs(temp_92) == 0.0 && temp_90;
    temp_98 = temp_94 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_99 = temp_89 + 0.0 - _sysViewUniformBlock.data[17].z;
    temp_100 = (temp_27 & 0xFFFF) * (int(uint(temp_96) >> 16)) & 0xFFFF | temp_96 << 16;
    temp_101 = 0 - int(uint(temp_20) >> 31);
    temp_102 = undef;
    temp_103 = intBitsToFloat((temp_88 ? -1 : 0));
    temp_104 = temp_83;
    if (temp_97)
    {
        temp_102 = (0.0 - temp_89 < 0.0 - _sysViewUniformBlock.data[17].z ? -1 : 0);
    }
    temp_105 = 0 - int(uint(temp_27) >> 31);
    temp_106 = inversesqrt(fma(temp_99, temp_99, fma(temp_98, temp_98, temp_95 * temp_95)));
    temp_107 = temp_20 < 0 || !(temp_20 == 0);
    temp_108 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_109 = (temp_107 ? -1 : 0);
    if (temp_97)
    {
        temp_103 = (~temp_102 != 0) ? 0.0 : 3.1415927;
    }
    temp_110 = floatBitsToInt(temp_103);
    if (temp_97)
    {
        temp_104 = floatBitsToInt(0.0 - temp_103 + -0.0);
    }
    temp_111 = temp_95 * 0.0 - temp_106;
    temp_112 = temp_98 * 0.0 - temp_106;
    if (0.0 - temp_85 > 0.0 - _sysViewUniformBlock.data[17].x && temp_97)
    {
        temp_110 = temp_104;
    }
    temp_113 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_114 = temp_99 * 0.0 - temp_106;
    temp_115 = fma(temp_111, _sysEmitterStaticUniformBlock.data[13].z, temp_85);
    temp_116 = 0;
    temp_117 = temp_110;
    temp_118 = intBitsToFloat(temp_110);
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_116 = 1;
    }
    temp_119 = abs(temp_92) == 0.0;
    temp_120 = temp_115 * _sysViewUniformBlock.data[11].x;
    temp_121 = temp_116 == 1;
    temp_122 = fma(temp_112, _sysEmitterStaticUniformBlock.data[13].z, temp_94);
    temp_123 = temp_120;
    temp_124 = temp_10;
    temp_125 = temp_9;
    temp_126 = temp_10;
    if (!(temp_90 && ((temp_119 ? -1 : 0) < 0 || !((temp_119 ? -1 : 0) == 0))))
    {
        temp_127 = abs(temp_87) == intBitsToFloat(0x7F800000);
        temp_128 = abs(temp_92) == intBitsToFloat(0x7F800000);
        temp_129 = abs(temp_92) == intBitsToFloat(0x7F800000) && temp_127;
        if (temp_129)
        {
            temp_109 = (0.0 - temp_89 < 0.0 - _sysViewUniformBlock.data[17].z ? -1 : 0);
        }
        if (temp_129)
        {
            temp_117 = 0x3F490FDB;
        }
        temp_130 = intBitsToFloat(temp_117);
        if (temp_129)
        {
            temp_130 = (~temp_109 != 0) ? intBitsToFloat(temp_117) : 2.3561945;
        }
        temp_131 = temp_130;
        if (temp_129)
        {
            temp_123 = 0.0 - temp_130 + -0.0;
        }
        if (0.0 - temp_85 > 0.0 - _sysViewUniformBlock.data[17].x && temp_129)
        {
            temp_131 = temp_123;
        }
        temp_118 = temp_131;
        if (!(temp_127 && ((temp_128 ? -1 : 0) < 0 || !((temp_128 ? -1 : 0) == 0))))
        {
            temp_132 = max(abs(temp_87), abs(temp_92));
            temp_133 = min(abs(temp_87), abs(temp_92));
            temp_134 = temp_132 >= 16.0;
            temp_135 = temp_132;
            temp_136 = temp_133;
            if (temp_134)
            {
                temp_135 = temp_132 * 0.0625;
            }
            if (temp_134)
            {
                temp_136 = temp_133 * 0.0625;
            }
            temp_137 = 1.0 / temp_135 * temp_136;
            temp_138 = temp_137 * temp_137;
            temp_139 = fma(1.0 / fma(temp_138, fma(temp_138, temp_138 + 11.3353882, 28.842468), 19.69667), temp_137 * temp_138 * fma(temp_138, fma(temp_138, -0.82336295, -5.67486715), -6.565555), temp_137);
            temp_140 = temp_139;
            if (abs(temp_87) > abs(temp_92))
            {
                temp_140 = 0.0 - temp_139 + 1.57079637;
            }
            temp_141 = temp_140;
            if (0.0 - temp_89 < 0.0 - _sysViewUniformBlock.data[17].z)
            {
                temp_141 = 0.0 - temp_140 + 3.14159274;
            }
            temp_118 = temp_141;
            if (0.0 - temp_85 > 0.0 - _sysViewUniformBlock.data[17].x)
            {
                temp_118 = 0.0 - temp_141 + -0.0;
            }
        }
    }
    temp_142 = temp_9;
    if (temp_121)
    {
        temp_124 = temp_9;
    }
    temp_143 = temp_124;
    temp_144 = temp_124;
    if (temp_121)
    {
        temp_125 = temp_11;
    }
    temp_145 = temp_125;
    temp_146 = temp_125;
    if (temp_121)
    {
        temp_126 = temp_9;
    }
    temp_147 = fma(temp_114, _sysEmitterStaticUniformBlock.data[13].z, temp_89);
    temp_148 = temp_126;
    temp_149 = temp_126;
    if (temp_121)
    {
        temp_142 = temp_11;
    }
    temp_150 = temp_142;
    if (!temp_121)
    {
        temp_151 = temp_116 == 2;
        if (temp_151)
        {
            temp_143 = temp_11;
        }
        temp_144 = temp_143;
        if (temp_151)
        {
            temp_145 = temp_10;
        }
        temp_146 = temp_145;
        if (temp_151)
        {
            temp_148 = temp_10;
        }
        temp_149 = temp_148;
        if (temp_151)
        {
            temp_150 = temp_9;
        }
    }
    out_attr3.y = fma(temp_74, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_71, 0.0 - temp_74, temp_71), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_59, 0.0 - temp_71, temp_59), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_57, 0.0 - temp_59, temp_57), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_41, 0.0 - temp_57, temp_41), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_39, 0.0 - temp_41, temp_39), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_33, 0.0 - temp_39, temp_33), fma(fma(temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, (_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), _sysEmitterStaticUniformBlock.data[104].x), temp_34, fma(temp_32, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    temp_152 = temp_106 * sqrt(fma(fma(temp_114, _sysEmitterStaticUniformBlock.data[13].z, temp_99), fma(temp_114, _sysEmitterStaticUniformBlock.data[13].z, temp_99), fma(fma(temp_112, _sysEmitterStaticUniformBlock.data[13].z, temp_98), fma(temp_112, _sysEmitterStaticUniformBlock.data[13].z, temp_98), fma(temp_111, _sysEmitterStaticUniformBlock.data[13].z, temp_95) * fma(temp_111, _sysEmitterStaticUniformBlock.data[13].z, temp_95))));
    temp_153 = fma(fma(temp_23 * (0.0 - temp_15 < 0.0 ? 1.0 : 0.0 + (temp_15 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_13 > 0 ? -1 : 0) + 0 - temp_13 >= 0 ? 0 : 1)), -2.0, temp_23), temp_44, (temp_9 + -0.5) * _sysEmitterStaticUniformBlock.data[113].y) + 0.0 - temp_118;
    temp_154 = fma(temp_147, _sysViewUniformBlock.data[11].z, fma(temp_122, _sysViewUniformBlock.data[11].y, temp_120)) + _sysViewUniformBlock.data[11].w;
    temp_155 = fma(temp_147, _sysViewUniformBlock.data[10].z, fma(temp_122, _sysViewUniformBlock.data[10].y, temp_115 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_156 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x) * (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * temp_152;
    temp_157 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * temp_152 * sysPosAttr.z;
    temp_158 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y) * sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * temp_152;
    temp_159 = cos(temp_69) * sin(temp_153);
    temp_160 = sin(temp_69) * cos(temp_153);
    temp_161 = cos(temp_69) * cos(temp_153);
    temp_162 = sin(temp_69) * sin(temp_153);
    temp_163 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_164 = clamp(fma(1.0 / fma(fma(0.0, temp_154, temp_155) * (1.0 / fma(0.0, temp_155, temp_154)), _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - _sysEmitterStaticUniformBlock.data[93].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[93].x + _sysEmitterStaticUniformBlock.data[93].y)), 0.0, 1.0);
    temp_165 = fma(temp_111, _sysEmitterStaticUniformBlock.data[13].z, temp_85 + fma(cos(temp_77) * sin(temp_153), temp_157, fma(temp_156, cos(temp_77) * cos(temp_153), sin(temp_77) * 0.0 - temp_158)));
    temp_166 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_167 = fma(temp_112, _sysEmitterStaticUniformBlock.data[13].z, temp_94 + fma(fma(sin(temp_77), temp_159, 0.0 - temp_160), temp_157, fma(temp_156, fma(sin(temp_77), temp_161, temp_162), temp_158 * cos(temp_77) * cos(temp_69))));
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    temp_168 = fma(temp_114, _sysEmitterStaticUniformBlock.data[13].z, temp_89 + fma(fma(sin(temp_77), temp_162, temp_161), temp_157, fma(temp_156, fma(sin(temp_77), temp_160, 0.0 - temp_159), temp_158 * cos(temp_77) * sin(temp_69))));
    out_attr3.x = temp_164 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = fma(fma(temp_108, temp_28, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_108, float(temp_20 < 0 || !(temp_20 == 0) ? ((int(uint(temp_20) >> 16)) * (int(uint(temp_93) >> 16)) << 16) + (temp_20 & 0xFFFF) * (temp_91 & 0xFFFF) + (temp_93 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_113, temp_25, -0.5), 0.0 - fma(temp_113, 0.0 - float(temp_107 ? 0 - temp_101 + (temp_80 + 0 - (uint(0 - ((int(uint(abs(temp_20)) >> 16)) * (int(uint(temp_84) >> 16)) << 16) + temp_83 + (temp_84 << 16)) >= uint(abs(temp_20)) ? -1 : 0) ^ temp_101) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_149, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_163, temp_29, -0.5), fma(temp_163, float(temp_27 < 0 || !(temp_27 == 0) ? ((int(uint(temp_27) >> 16)) * (int(uint(temp_100) >> 16)) << 16) + (temp_27 & 0xFFFF) * (temp_96 & 0xFFFF) + (temp_100 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_144 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_150, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_166, temp_26, -0.5), 0.0 - fma(temp_166, 0.0 - float(temp_27 < 0 || !(temp_27 == 0) ? 0 - temp_105 + (temp_82 + 0 - (uint(0 - ((int(uint(abs(temp_27)) >> 16)) * (int(uint(temp_86) >> 16)) << 16) + (abs(temp_27) & 0xFFFF) * (temp_82 & 0xFFFF) + (temp_86 << 16)) >= uint(abs(temp_27)) ? -1 : 0) ^ temp_105) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_146 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    gl_Position.x = fma(temp_168, _sysViewUniformBlock.data[8].z, fma(temp_167, _sysViewUniformBlock.data[8].y, temp_165 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_168, _sysViewUniformBlock.data[9].z, fma(temp_167, _sysViewUniformBlock.data[9].y, temp_165 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_168, _sysViewUniformBlock.data[10].z, fma(temp_167, _sysViewUniformBlock.data[10].y, temp_165 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_168, _sysViewUniformBlock.data[11].z, fma(temp_167, _sysViewUniformBlock.data[11].y, temp_165 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (!(temp_164 <= 0.0))
    {
        break;
    }
    out_attr3.x = 0.0;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = _sysViewUniformBlock.data[18].y * 5.0;
    break;
} while (false);
}
