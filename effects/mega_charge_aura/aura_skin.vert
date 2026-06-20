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
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;
layout (location = 7) in vec4 sysInitRotateAttr;

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
    int temp_11;
    int temp_12;
    precise float temp_13;
    bool temp_14;
    precise float temp_15;
    precise float temp_16;
    int temp_17;
    precise float temp_18;
    bool temp_19;
    precise float temp_20;
    int temp_21;
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
    bool temp_101;
    precise float temp_102;
    precise float temp_103;
    int temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    precise float temp_112;
    int temp_113;
    precise float temp_114;
    precise float temp_115;
    int temp_116;
    precise float temp_117;
    precise float temp_118;
    precise float temp_119;
    precise float temp_120;
    int temp_121;
    precise float temp_122;
    uint temp_123;
    int temp_124;
    int temp_125;
    int temp_126;
    int temp_127;
    precise float temp_128;
    precise float temp_129;
    int temp_130;
    uint temp_131;
    int temp_132;
    int temp_133;
    bool temp_134;
    uint temp_135;
    uint temp_136;
    uint temp_137;
    uint temp_138;
    int temp_139;
    precise float temp_140;
    precise float temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    precise float temp_145;
    precise float temp_146;
    int temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    bool temp_151;
    int temp_152;
    int temp_153;
    bool temp_154;
    int temp_155;
    int temp_156;
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
    bool temp_169;
    precise float temp_170;
    precise float temp_171;
    precise float temp_172;
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
    int temp_186;
    int temp_187;
    int temp_188;
    int temp_189;
    int temp_190;
    int temp_191;
    int temp_192;
    int temp_193;
    precise float temp_194;
    precise float temp_195;
    precise float temp_196;
    precise float temp_197;
    precise float temp_198;
    precise float temp_199;
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
    temp_10 = sysRandomAttr.z;
    temp_11 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_12 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_13 = sysRandomAttr.x;
    temp_14 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_15 = floor(temp_9 * 2.0);
    temp_16 = floor(temp_10 * 2.0);
    temp_17 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_18 = floor(temp_13 * 2.0);
    temp_19 = temp_17 > 0;
    temp_20 = fma(temp_13 + temp_10, 0.5, -0.5);
    temp_21 = 0 - (temp_19 ? -1 : 0) + 0 - (temp_17 >= 0 ? 0 : 1);
    temp_22 = sysInitRotateAttr.x;
    temp_23 = sysInitRotateAttr.y;
    temp_24 = sysInitRotateAttr.z;
    temp_25 = intBitsToFloat((temp_19 ? -1 : 0));
    temp_26 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_27 = temp_20;
    temp_28 = intBitsToFloat(temp_21);
    temp_29 = temp_23;
    if (!temp_14)
    {
        temp_25 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    if (!temp_14)
    {
        temp_26 = 1.0 / temp_25;
    }
    temp_30 = (0.0 - (temp_15 < 0.0 ? 1.0 : 0.0) + (temp_15 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_11 > 0 ? -1 : 0) + 0 - (temp_11 >= 0 ? 0 : 1)));
    temp_31 = fma(fma(temp_13 + temp_9, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_32 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_33 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_34 = fma(fma(temp_9 + temp_10, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_35 = sysScaleAttr.w;
    temp_36 = fma(temp_20 * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_37 = (0.0 - (temp_16 < 0.0 ? 1.0 : 0.0) + (temp_16 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_12 > 0 ? -1 : 0) + 0 - (temp_12 >= 0 ? 0 : 1)));
    temp_38 = (0.0 - (temp_18 < 0.0 ? 1.0 : 0.0) + (temp_18 > 0.0 ? 1.0 : 0.0)) * float(abs(temp_21));
    if (!temp_14)
    {
        temp_27 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_26, temp_26);
    }
    temp_39 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_40 = temp_27;
    temp_41 = temp_39;
    if (temp_33)
    {
        temp_28 = temp_39 * temp_39;
    }
    temp_42 = temp_28;
    if (temp_14)
    {
        temp_40 = temp_5;
    }
    if (temp_33)
    {
        temp_42 = temp_28 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_33)
    {
        temp_29 = temp_42 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_43 = intBitsToFloat(undef);
    temp_44 = temp_29;
    if (temp_33)
    {
        temp_43 = temp_42 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_45 = intBitsToFloat(undef);
    temp_46 = temp_43;
    if (temp_33)
    {
        temp_45 = temp_42 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_47 = temp_45;
    if (!temp_33)
    {
        temp_48 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_49 = (temp_39 + 0.0 - fma(temp_48, exp2(temp_39 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_48)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_44 = temp_49 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_46 = temp_49 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_47 = temp_49 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_33)
    {
        temp_50 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_41 = fma(exp2(temp_39 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_50, temp_50);
    }
    temp_51 = fma(fma(temp_36 * temp_38, -2.0, temp_36), temp_40, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_38 * temp_24, -2.0, temp_24)));
    temp_52 = fma(fma(temp_34 * temp_37, -2.0, temp_34), temp_40, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_37 * temp_23, -2.0, temp_23)));
    temp_53 = fma(fma(temp_31 * temp_30, -2.0, temp_31), temp_40, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_30 * temp_22, -2.0, temp_22)));
    temp_54 = fma(fma(temp_41, sysLocalVecAttr.x, temp_44), temp_35, sysLocalPosAttr.x);
    temp_55 = fma(fma(temp_41, sysLocalVecAttr.y, temp_46), temp_35, sysLocalPosAttr.y);
    temp_56 = fma(fma(temp_41, sysLocalVecAttr.z, temp_47), temp_35, sysLocalPosAttr.z);
    temp_57 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_58 = (clamp(min(0.0, temp_13) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_59 = cos(temp_51) * cos(temp_52);
    temp_60 = sin(temp_53) * sin(temp_52);
    temp_61 = cos(temp_53) * cos(temp_52);
    temp_62 = cos(temp_51) * cos(temp_53);
    temp_63 = cos(temp_51) * sin(temp_53);
    temp_64 = sin(temp_53) * cos(temp_52);
    temp_65 = cos(temp_53) * sin(temp_52);
    temp_66 = cos(temp_51) * sin(temp_52);
    temp_67 = fma(sin(temp_51), temp_61, temp_60);
    temp_68 = fma(sin(temp_51), temp_64, 0.0 - temp_65);
    temp_69 = fma(sin(temp_51), temp_65, 0.0 - temp_64);
    temp_70 = fma(temp_66, temp_57, fma(temp_58, temp_59, temp_32 * 0.0 - sin(temp_51)));
    temp_71 = fma(sin(temp_51), temp_60, temp_61);
    temp_72 = fma(temp_57, temp_69, fma(temp_58, temp_67, temp_32 * temp_62));
    temp_73 = fma(temp_57, temp_71, fma(temp_58, temp_68, temp_32 * temp_63));
    temp_74 = fma(temp_56, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_55, _sysEmitterDynamicUniformBlock.data[4].y, temp_54 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_73, _sysViewUniformBlock.data[12].z, fma(temp_72, _sysViewUniformBlock.data[12].y, temp_70 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w;
    temp_75 = fma(temp_56, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_55, _sysEmitterDynamicUniformBlock.data[5].y, temp_54 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_73, _sysViewUniformBlock.data[13].z, fma(temp_72, _sysViewUniformBlock.data[13].y, temp_70 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w;
    temp_76 = fma(temp_56, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_55, _sysEmitterDynamicUniformBlock.data[6].y, temp_54 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_73, _sysViewUniformBlock.data[14].z, fma(temp_72, _sysViewUniformBlock.data[14].y, temp_70 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w;
    temp_77 = sysNormalAttr.x;
    temp_78 = sysNormalAttr.y;
    temp_79 = sysNormalAttr.z;
    temp_80 = fma(temp_76, _sysViewUniformBlock.data[0].z, fma(temp_75, _sysViewUniformBlock.data[0].y, temp_74 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_81 = fma(temp_76, _sysViewUniformBlock.data[1].z, fma(temp_75, _sysViewUniformBlock.data[1].y, temp_74 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_82 = fma(temp_76, _sysViewUniformBlock.data[2].z, fma(temp_75, _sysViewUniformBlock.data[2].y, temp_74 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_83 = fma(temp_76, _sysViewUniformBlock.data[3].z, fma(temp_75, _sysViewUniformBlock.data[3].y, temp_74 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_84 = fma(temp_76, _sysViewUniformBlock.data[11].z, fma(temp_75, _sysViewUniformBlock.data[11].y, temp_74 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_76, _sysViewUniformBlock.data[8].z, fma(temp_75, _sysViewUniformBlock.data[8].y, temp_74 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_76, _sysViewUniformBlock.data[9].z, fma(temp_75, _sysViewUniformBlock.data[9].y, temp_74 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_83, _sysViewUniformBlock.data[6].w, fma(temp_82, _sysViewUniformBlock.data[6].z, fma(temp_81, _sysViewUniformBlock.data[6].y, temp_80 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_83, _sysViewUniformBlock.data[7].w, fma(temp_82, _sysViewUniformBlock.data[7].z, fma(temp_81, _sysViewUniformBlock.data[7].y, temp_80 * _sysViewUniformBlock.data[7].x)))) * temp_84;
    gl_Position.w = temp_84;
    temp_85 = temp_74 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_86 = temp_75 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_87 = temp_76 + 0.0 - _sysViewUniformBlock.data[17].z;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_88 = fma(temp_13 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_89 = temp_88 + 0.0 - floor(temp_88);
    }
    else
    {
        temp_89 = temp_5 * (1.0 / temp_6);
    }
    temp_90 = 1.0 / (_sysEmitterStaticUniformBlock.data[61].w + 0.0 - _sysEmitterStaticUniformBlock.data[60].w);
    temp_91 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[61].w + _sysEmitterStaticUniformBlock.data[62].w);
    temp_92 = temp_89 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_93 = temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_94 = temp_89 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_95 = temp_89 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_96 = temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_97 = fma(temp_92, 0.0 - temp_94, temp_92);
    temp_98 = fma(temp_94, 0.0 - temp_95, temp_94);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_99 = fma(temp_13 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_100 = temp_99 + 0.0 - floor(temp_99);
    }
    else
    {
        temp_100 = temp_5 * (1.0 / temp_6);
    }
    temp_101 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_102 = sysTexCoordAttr.x;
    temp_103 = sysTexCoordAttr.y;
    temp_104 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_105 = temp_5 * (1.0 / temp_6);
    temp_106 = inversesqrt(fma(temp_87, temp_87, fma(temp_86, temp_86, temp_85 * temp_85)));
    temp_107 = temp_102;
    temp_108 = temp_102;
    temp_109 = temp_102;
    temp_110 = temp_103;
    temp_111 = temp_103;
    temp_112 = temp_103;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_107 = 0.0 - temp_102 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_108 = 0.0 - temp_102 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_109 = 0.0 - temp_102 + 1.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_110 = 0.0 - temp_103 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_111 = 0.0 - temp_103 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_112 = 0.0 - temp_103 + 1.0;
    }
    temp_113 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_114 = temp_100 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_115 = temp_100 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_116 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_117 = temp_105 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_118 = temp_105 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_119 = temp_100 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_120 = temp_105 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_121 = floatBitsToInt(1.0 / float(uint(temp_104))) + -2;
    temp_122 = temp_105 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_123 = uint(max(trunc(float(0u) * intBitsToFloat(temp_121)), 0.0));
    temp_124 = (temp_104 & 0xFFFF) * (int(temp_123 >> 16)) & 0xFFFF | int(temp_123) << 16;
    temp_125 = floatBitsToInt(1.0 / float(uint(temp_116))) + -2;
    temp_126 = floatBitsToInt(1.0 / float(uint(temp_113))) + -2;
    temp_127 = 0;
    temp_128 = temp_13;
    if (temp_101)
    {
        temp_127 = 1;
    }
    temp_129 = temp_105 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_130 = floatBitsToInt(1.0 / float(uint(abs(temp_116)))) + -2;
    temp_131 = uint(max(trunc(float(0u) * intBitsToFloat(temp_125)), 0.0));
    temp_132 = floatBitsToInt(1.0 / float(uint(abs(temp_104)))) + -2;
    temp_133 = floatBitsToInt(1.0 / float(uint(abs(temp_113)))) + -2;
    temp_134 = temp_127 == 1;
    temp_135 = uint(max(trunc(float(0u) * intBitsToFloat(temp_126)), 0.0));
    temp_136 = uint(max(trunc(intBitsToFloat(temp_132) * float(0u)), 0.0));
    temp_137 = uint(max(trunc(float(0u) * intBitsToFloat(temp_130)), 0.0));
    temp_138 = uint(max(trunc(float(0u) * intBitsToFloat(temp_133)), 0.0));
    temp_139 = (temp_116 & 0xFFFF) * (int(temp_131 >> 16)) & 0xFFFF | int(temp_131) << 16;
    temp_140 = temp_9;
    temp_141 = temp_13;
    temp_142 = temp_9;
    if (temp_134)
    {
        temp_128 = temp_9;
    }
    temp_143 = temp_128;
    temp_144 = temp_128;
    if (temp_134)
    {
        temp_140 = temp_10;
    }
    temp_145 = temp_140;
    temp_146 = temp_140;
    if (temp_134)
    {
        temp_141 = temp_9;
    }
    temp_147 = (temp_113 & 0xFFFF) * (int(temp_135 >> 16)) & 0xFFFF | int(temp_135) << 16;
    temp_148 = temp_141;
    temp_149 = temp_141;
    if (temp_134)
    {
        temp_142 = temp_10;
    }
    temp_150 = temp_142;
    if (!temp_134)
    {
        temp_151 = temp_127 == 2;
        if (temp_151)
        {
            temp_143 = temp_10;
        }
        temp_144 = temp_143;
        if (temp_151)
        {
            temp_145 = temp_13;
        }
        temp_146 = temp_145;
        if (temp_151)
        {
            temp_148 = temp_13;
        }
        temp_149 = temp_148;
        if (temp_151)
        {
            temp_150 = temp_9;
        }
    }
    temp_152 = 0;
    if (temp_101)
    {
        temp_152 = 2;
    }
    temp_153 = (abs(temp_113) & 0xFFFF) * (int(temp_138 >> 16)) & 0xFFFF | int(temp_138) << 16;
    temp_154 = temp_152 == 1;
    temp_155 = (abs(temp_104) & 0xFFFF) * (int(temp_136 >> 16)) & 0xFFFF | int(temp_136) << 16;
    temp_156 = (abs(temp_116) & 0xFFFF) * (int(temp_137 >> 16)) & 0xFFFF | int(temp_137) << 16;
    temp_157 = temp_105 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_158 = temp_13;
    temp_159 = temp_9;
    temp_160 = temp_13;
    temp_161 = temp_9;
    if (temp_154)
    {
        temp_158 = temp_9;
    }
    temp_162 = temp_158;
    temp_163 = temp_158;
    if (temp_154)
    {
        temp_159 = temp_10;
    }
    temp_164 = temp_159;
    temp_165 = temp_159;
    if (temp_154)
    {
        temp_160 = temp_9;
    }
    temp_166 = temp_160;
    temp_167 = temp_160;
    if (temp_154)
    {
        temp_161 = temp_10;
    }
    temp_168 = temp_161;
    if (!temp_154)
    {
        temp_169 = temp_152 == 2;
        if (temp_169)
        {
            temp_162 = temp_10;
        }
        temp_163 = temp_162;
        if (temp_169)
        {
            temp_164 = temp_13;
        }
        temp_165 = temp_164;
        if (temp_169)
        {
            temp_166 = temp_13;
        }
        temp_167 = temp_166;
        if (temp_169)
        {
            temp_168 = temp_9;
        }
    }
    temp_170 = clamp((abs(fma(0.0 + fma(fma(temp_71, _sysViewUniformBlock.data[14].z, fma(temp_66, _sysViewUniformBlock.data[14].x, temp_69 * _sysViewUniformBlock.data[14].y)), temp_79, fma(fma(temp_68, _sysViewUniformBlock.data[14].z, fma(temp_59, _sysViewUniformBlock.data[14].x, temp_67 * _sysViewUniformBlock.data[14].y)), temp_77, fma(temp_63, _sysViewUniformBlock.data[14].z, fma(sin(temp_51), 0.0 - _sysViewUniformBlock.data[14].x, temp_62 * _sysViewUniformBlock.data[14].y)) * temp_78)), temp_87 * temp_106, fma(0.0 + fma(fma(temp_71, _sysViewUniformBlock.data[13].z, fma(temp_66, _sysViewUniformBlock.data[13].x, temp_69 * _sysViewUniformBlock.data[13].y)), temp_79, fma(fma(temp_68, _sysViewUniformBlock.data[13].z, fma(temp_59, _sysViewUniformBlock.data[13].x, temp_67 * _sysViewUniformBlock.data[13].y)), temp_77, fma(temp_63, _sysViewUniformBlock.data[13].z, fma(sin(temp_51), 0.0 - _sysViewUniformBlock.data[13].x, temp_62 * _sysViewUniformBlock.data[13].y)) * temp_78)), temp_86 * temp_106, (0.0 + fma(fma(temp_71, _sysViewUniformBlock.data[12].z, fma(temp_66, _sysViewUniformBlock.data[12].x, temp_69 * _sysViewUniformBlock.data[12].y)), temp_79, fma(fma(temp_68, _sysViewUniformBlock.data[12].z, fma(temp_59, _sysViewUniformBlock.data[12].x, temp_67 * _sysViewUniformBlock.data[12].y)), temp_77, fma(temp_63, _sysViewUniformBlock.data[12].z, fma(sin(temp_51), 0.0 - _sysViewUniformBlock.data[12].x, temp_62 * _sysViewUniformBlock.data[12].y)) * temp_78))) * temp_85 * temp_106))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_171 = temp_105 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_172 = temp_105 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_173 = int(temp_136) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(abs(temp_104)) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (abs(temp_104) & 0xFFFF) * (int(temp_136) & 0xFFFF) + (temp_155 << 16)))), 0.0)));
    temp_174 = int(temp_123) + int(uint(max(trunc(intBitsToFloat(temp_121) * float(uint(0 - ((int(uint(temp_104) >> 16)) * (int(uint(temp_124) >> 16)) << 16) + (temp_104 & 0xFFFF) * (int(temp_123) & 0xFFFF) + (temp_124 << 16)))), 0.0)));
    temp_175 = (abs(temp_104) & 0xFFFF) * (int(uint(temp_173) >> 16)) & 0xFFFF | temp_173 << 16;
    temp_176 = int(temp_131) + int(uint(max(trunc(intBitsToFloat(temp_125) * float(uint(0 - ((int(uint(temp_116) >> 16)) * (int(uint(temp_139) >> 16)) << 16) + (temp_116 & 0xFFFF) * (int(temp_131) & 0xFFFF) + (temp_139 << 16)))), 0.0)));
    temp_177 = int(temp_135) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(0 - ((int(uint(temp_113) >> 16)) * (int(uint(temp_147) >> 16)) << 16) + (temp_113 & 0xFFFF) * (int(temp_135) & 0xFFFF) + (temp_147 << 16)))), 0.0)));
    temp_178 = (temp_104 & 0xFFFF) * (int(uint(temp_174) >> 16)) & 0xFFFF | temp_174 << 16;
    temp_179 = int(temp_137) + int(uint(max(trunc(intBitsToFloat(temp_130) * float(uint(0 - ((int(uint(abs(temp_116)) >> 16)) * (int(uint(temp_156) >> 16)) << 16) + (abs(temp_116) & 0xFFFF) * (int(temp_137) & 0xFFFF) + (temp_156 << 16)))), 0.0)));
    temp_180 = (temp_116 & 0xFFFF) * (int(uint(temp_176) >> 16)) & 0xFFFF | temp_176 << 16;
    temp_181 = (temp_113 & 0xFFFF) * (int(uint(temp_177) >> 16)) & 0xFFFF | temp_177 << 16;
    temp_182 = int(temp_138) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(0 - ((int(uint(abs(temp_113)) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (abs(temp_113) & 0xFFFF) * (int(temp_138) & 0xFFFF) + (temp_153 << 16)))), 0.0)));
    temp_183 = (abs(temp_116) & 0xFFFF) * (int(uint(temp_179) >> 16)) & 0xFFFF | temp_179 << 16;
    temp_184 = (abs(temp_113) & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_185 = 0 - temp_176 + ((uint(0 - ((int(uint(temp_116) >> 16)) * (int(uint(temp_180) >> 16)) << 16) + (temp_116 & 0xFFFF) * (temp_176 & 0xFFFF) + (temp_180 << 16)) >= uint(temp_116) ? -1 : 0));
    out_attr3.y = fma(temp_172, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_171, 0.0 - temp_172, temp_171), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_157, 0.0 - temp_171, temp_157), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_129, 0.0 - temp_157, temp_129), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_122, 0.0 - temp_129, temp_122), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_120, 0.0 - temp_122, temp_120), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_118, 0.0 - temp_120, temp_118), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_118, 0.0 - temp_117, temp_117), fma(temp_117, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    temp_186 = 0 - temp_177 + ((uint(0 - ((int(uint(temp_113) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (temp_113 & 0xFFFF) * (temp_177 & 0xFFFF) + (temp_181 << 16)) >= uint(temp_113) ? -1 : 0));
    temp_187 = 0 - temp_174 + ((uint(0 - ((int(uint(temp_104) >> 16)) * (int(uint(temp_178) >> 16)) << 16) + (temp_104 & 0xFFFF) * (temp_174 & 0xFFFF) + (temp_178 << 16)) >= uint(temp_104) ? -1 : 0));
    temp_188 = (temp_104 & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_189 = (temp_116 & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_190 = 0 - int(uint(temp_104) >> 31);
    temp_191 = 0 - int(uint(temp_113) >> 31);
    temp_192 = 0 - int(uint(temp_116) >> 31);
    temp_193 = (temp_113 & 0xFFFF) * (int(uint(temp_186) >> 16)) & 0xFFFF | temp_186 << 16;
    temp_194 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_195 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_196 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_197 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_198 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_199 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr0.x = fma(temp_95, _sysEmitterStaticUniformBlock.data[62].x, fma(fma((_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_91, temp_93, _sysEmitterStaticUniformBlock.data[61].x), temp_98, fma(fma((_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_90, temp_96, _sysEmitterStaticUniformBlock.data[60].x), temp_97, fma(temp_92, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x)))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_95, _sysEmitterStaticUniformBlock.data[62].y, fma(fma((_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_91, temp_93, _sysEmitterStaticUniformBlock.data[61].y), temp_98, fma(fma((_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_90, temp_96, _sysEmitterStaticUniformBlock.data[60].y), temp_97, fma(temp_92, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y)))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_95, _sysEmitterStaticUniformBlock.data[62].z, fma(fma((_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_91, temp_93, _sysEmitterStaticUniformBlock.data[61].z), temp_98, fma(fma((_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_90, temp_96, _sysEmitterStaticUniformBlock.data[60].z), temp_97, fma(temp_92, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z)))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_119, _sysEmitterStaticUniformBlock.data[70].x, fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_115, 0.0 - temp_119, temp_115), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_115, 0.0 - temp_114, temp_114), fma(temp_114, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x)))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = fma(temp_170, -2.0, 3.0) * temp_170 * temp_170 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_13, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_194, temp_107, -0.5), fma(temp_194, float(temp_104 < 0 || !(temp_104 == 0) ? ((int(uint(temp_104) >> 16)) * (int(uint(temp_188) >> 16)) << 16) + (temp_104 & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_188 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_13 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr1.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_197, temp_110, -0.5), 0.0 - fma(temp_197, 0.0 - float(temp_104 < 0 || !(temp_104 == 0) ? 0 - temp_190 + (temp_173 + 0 - (uint(0 - ((int(uint(abs(temp_104)) >> 16)) * (int(uint(temp_175) >> 16)) << 16) + (abs(temp_104) & 0xFFFF) * (temp_173 & 0xFFFF) + (temp_175 << 16)) >= uint(abs(temp_104)) ? -1 : 0) ^ temp_190) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr1.z = fma(fma(temp_195, temp_108, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_149, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_195, float(temp_116 < 0 || !(temp_116 == 0) ? ((int(uint(temp_116) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (temp_116 & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_189 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_144 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr1.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_150, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_198, temp_111, -0.5), 0.0 - fma(temp_198, 0.0 - float(temp_116 < 0 || !(temp_116 == 0) ? 0 - temp_192 + (temp_179 + 0 - (uint(0 - ((int(uint(abs(temp_116)) >> 16)) * (int(uint(temp_183) >> 16)) << 16) + (abs(temp_116) & 0xFFFF) * (temp_179 & 0xFFFF) + (temp_183 << 16)) >= uint(abs(temp_116)) ? -1 : 0) ^ temp_192) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_146 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_167, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_196, temp_109, -0.5), fma(temp_196, float(temp_113 < 0 || !(temp_113 == 0) ? ((int(uint(temp_113) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_113 & 0xFFFF) * (temp_186 & 0xFFFF) + (temp_193 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_163 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_168, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), fma(temp_199, temp_112, -0.5), 0.0 - fma(temp_199, 0.0 - float(temp_113 < 0 || !(temp_113 == 0) ? 0 - temp_191 + (temp_182 + 0 - (uint(0 - ((int(uint(abs(temp_113)) >> 16)) * (int(uint(temp_184) >> 16)) << 16) + (abs(temp_113) & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_184 << 16)) >= uint(abs(temp_113)) ? -1 : 0) ^ temp_191) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_165 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
