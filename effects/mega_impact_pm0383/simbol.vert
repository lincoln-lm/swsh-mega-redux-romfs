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
    int temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    bool temp_15;
    precise float temp_16;
    int temp_17;
    precise float temp_18;
    int temp_19;
    int temp_20;
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
    precise float temp_41;
    precise float temp_42;
    bool temp_43;
    precise float temp_44;
    bool temp_45;
    precise float temp_46;
    precise float temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    int temp_51;
    precise float temp_52;
    bool temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    int temp_59;
    precise float temp_60;
    precise float temp_61;
    bool temp_62;
    precise float temp_63;
    int temp_64;
    bool temp_65;
    precise float temp_66;
    int temp_67;
    precise float temp_68;
    precise float temp_69;
    precise float temp_70;
    precise float temp_71;
    int temp_72;
    precise float temp_73;
    bool temp_74;
    bool temp_75;
    bool temp_76;
    precise float temp_77;
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    bool temp_81;
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
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    precise float temp_132;
    precise float temp_133;
    int temp_134;
    int temp_135;
    precise float temp_136;
    precise float temp_137;
    precise float temp_138;
    precise float temp_139;
    precise float temp_140;
    precise float temp_141;
    precise float temp_142;
    int temp_143;
    precise float temp_144;
    uint temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    int temp_150;
    int temp_151;
    int temp_152;
    uint temp_153;
    int temp_154;
    uint temp_155;
    precise float temp_156;
    uint temp_157;
    precise float temp_158;
    int temp_159;
    int temp_160;
    int temp_161;
    int temp_162;
    precise float temp_163;
    bool temp_164;
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
    bool temp_178;
    int temp_179;
    precise float temp_180;
    int temp_181;
    int temp_182;
    int temp_183;
    int temp_184;
    int temp_185;
    int temp_186;
    int temp_187;
    precise float temp_188;
    precise float temp_189;
    int temp_190;
    int temp_191;
    int temp_192;
    int temp_193;
    precise float temp_194;
    int temp_195;
    int temp_196;
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
    temp_8 = (temp_7 ? -1 : 0);
    if (temp_7)
    {
        out_attr4.x = 0.0;
    }
    temp_9 = intBitsToFloat(undef);
    if (temp_7)
    {
        temp_9 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_7)
    {
        temp_4 = floatBitsToInt(temp_9 * 5.0);
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
    temp_10 = sysRandomAttr.x;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_11 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_12 = temp_11 + 0.0 - floor(temp_11);
    }
    else
    {
        temp_12 = temp_5 * (1.0 / temp_6);
    }
    temp_13 = sysScaleAttr.w;
    temp_14 = sysRandomAttr.y;
    temp_15 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_16 = floor(temp_10 * 2.0);
    temp_17 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_18 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_19 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_20 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_21 = temp_19 >= 0 ? 0.0 : 1.40129846E-45;
    temp_22 = intBitsToFloat(temp_17);
    temp_23 = intBitsToFloat(temp_19);
    temp_24 = temp_21;
    temp_25 = temp_18;
    if (temp_15)
    {
        temp_22 = temp_18 * temp_18;
    }
    temp_26 = temp_16 > 0.0 ? 1.0 : 0.0;
    temp_27 = temp_26;
    if (temp_15)
    {
        temp_23 = temp_22 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_28 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_28 = temp_23 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_29 = temp_28;
    if (temp_15)
    {
        temp_24 = temp_23 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_30 = temp_24;
    if (temp_15)
    {
        temp_27 = temp_23 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_31 = temp_27;
    if (!temp_15)
    {
        temp_32 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_33 = (temp_18 + 0.0 - fma(temp_32, exp2(temp_18 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_32)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_31 = temp_33 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_29 = temp_33 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_30 = temp_33 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_15)
    {
        temp_34 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_25 = fma(exp2(temp_18 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_34, temp_34);
    }
    temp_35 = floor(temp_14 * 2.0);
    temp_36 = fma(fma(temp_25, sysLocalVecAttr.x, temp_31), temp_13, sysLocalPosAttr.x);
    temp_37 = sysRandomAttr.z;
    temp_38 = fma(fma(temp_25, sysLocalVecAttr.y, temp_29), temp_13, sysLocalPosAttr.y);
    temp_39 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_40 = fma(fma(temp_25, sysLocalVecAttr.z, temp_30), temp_13, sysLocalPosAttr.z);
    temp_41 = floor(temp_37 * 2.0);
    temp_42 = fma(temp_40, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_38, _sysEmitterDynamicUniformBlock.data[4].y, temp_36 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_43 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_44 = 0.0 - temp_42 + _sysViewUniformBlock.data[17].x;
    temp_45 = abs(temp_44) == 0.0;
    temp_46 = fma(temp_40, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_38, _sysEmitterDynamicUniformBlock.data[6].y, temp_36 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_47 = 0.0 - temp_46 + _sysViewUniformBlock.data[17].z;
    temp_48 = fma(temp_10 + temp_14, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x;
    temp_49 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_50 = temp_48;
    temp_51 = 0x40000000;
    if (!temp_43)
    {
        temp_49 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_52 = temp_49;
    if (!temp_43)
    {
        temp_52 = 1.0 / temp_49;
    }
    temp_53 = abs(temp_47) == 0.0 && temp_45;
    temp_54 = fma(temp_48, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_55 = fma(fma(temp_10 + temp_37, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_56 = temp_12 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_57 = fma(fma(temp_14 + temp_37, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    if (temp_43)
    {
        temp_50 = temp_5;
    }
    temp_58 = temp_50;
    if (!temp_43)
    {
        temp_58 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_52, temp_52);
    }
    temp_59 = floatBitsToInt(temp_58);
    if (temp_53)
    {
        temp_8 = (0.0 - temp_46 < 0.0 - _sysViewUniformBlock.data[17].z ? -1 : 0);
    }
    temp_60 = temp_12 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_61 = temp_12 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_62 = 0.0 - temp_42 > 0.0 - _sysViewUniformBlock.data[17].x && temp_53;
    temp_63 = intBitsToFloat(undef);
    temp_64 = (temp_62 ? -1 : 0);
    if (temp_53)
    {
        temp_63 = (~temp_8 != 0) ? 0.0 : 3.1415927;
    }
    temp_65 = abs(temp_47) == 0.0;
    temp_66 = fma(temp_60, 0.0 - temp_61, temp_60);
    temp_67 = floatBitsToInt(temp_63);
    if (temp_53)
    {
        temp_51 = floatBitsToInt(0.0 - temp_63 + -0.0);
    }
    temp_68 = (temp_14 + -0.5) * _sysEmitterStaticUniformBlock.data[113].y;
    temp_69 = temp_68;
    if (temp_62)
    {
        temp_67 = temp_51;
    }
    temp_70 = fma(fma(temp_54 * (0.0 - temp_35 < 0.0 ? 1.0 : 0.0 + (temp_35 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_17 > 0 ? -1 : 0) + 0 - temp_17 >= 0 ? 0 : 1)), -2.0, temp_54), temp_58, (temp_10 + -0.5) * _sysEmitterStaticUniformBlock.data[113].x);
    temp_71 = fma(fma(temp_55 * (0.0 - temp_16 < 0.0 ? 1.0 : 0.0 + temp_26) * float(abs(0 - (temp_20 > 0 ? -1 : 0) + 0 - temp_20 >= 0 ? 0 : 1)), -2.0, temp_55), temp_58, (temp_37 + -0.5) * _sysEmitterStaticUniformBlock.data[113].z);
    if (temp_53)
    {
        temp_59 = temp_67;
    }
    temp_72 = temp_59;
    temp_73 = intBitsToFloat(temp_59);
    if (!(temp_45 && ((temp_65 ? -1 : 0) < 0 || !((temp_65 ? -1 : 0) == 0))))
    {
        temp_74 = abs(temp_44) == intBitsToFloat(0x7F800000);
        temp_75 = abs(temp_47) == intBitsToFloat(0x7F800000);
        temp_76 = abs(temp_47) == intBitsToFloat(0x7F800000) && temp_74;
        if (temp_76)
        {
            temp_64 = (0.0 - temp_46 < 0.0 - _sysViewUniformBlock.data[17].z ? -1 : 0);
        }
        if (temp_76)
        {
            temp_72 = 0x3F490FDB;
        }
        temp_77 = intBitsToFloat(temp_72);
        if (temp_76)
        {
            temp_77 = (~temp_64 != 0) ? intBitsToFloat(temp_72) : 2.3561945;
        }
        temp_78 = temp_77;
        if (temp_76)
        {
            temp_69 = 0.0 - temp_77 + -0.0;
        }
        if (0.0 - temp_42 > 0.0 - _sysViewUniformBlock.data[17].x && temp_76)
        {
            temp_78 = temp_69;
        }
        temp_73 = temp_78;
        if (!(temp_74 && ((temp_75 ? -1 : 0) < 0 || !((temp_75 ? -1 : 0) == 0))))
        {
            temp_79 = max(abs(temp_44), abs(temp_47));
            temp_80 = min(abs(temp_44), abs(temp_47));
            temp_81 = temp_79 >= 16.0;
            temp_82 = temp_79;
            temp_83 = temp_80;
            if (temp_81)
            {
                temp_82 = temp_79 * 0.0625;
            }
            if (temp_81)
            {
                temp_83 = temp_80 * 0.0625;
            }
            temp_84 = 1.0 / temp_82 * temp_83;
            temp_85 = temp_84 * temp_84;
            temp_86 = fma(temp_84 * temp_85 * fma(temp_85, fma(temp_85, -0.82336295, -5.67486715), -6.565555), 1.0 / fma(temp_85, fma(temp_85, temp_85 + 11.3353882, 28.842468), 19.69667), temp_84);
            temp_87 = temp_86;
            if (abs(temp_44) > abs(temp_47))
            {
                temp_87 = 0.0 - temp_86 + 1.57079637;
            }
            temp_88 = temp_87;
            if (0.0 - temp_46 < 0.0 - _sysViewUniformBlock.data[17].z)
            {
                temp_88 = 0.0 - temp_87 + 3.14159274;
            }
            temp_73 = temp_88;
            if (0.0 - temp_42 > 0.0 - _sysViewUniformBlock.data[17].x)
            {
                temp_73 = 0.0 - temp_88 + -0.0;
            }
        }
    }
    temp_89 = fma(fma(temp_57 * (0.0 - temp_41 < 0.0 ? 1.0 : 0.0 + (temp_41 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_19 > 0 ? -1 : 0) + 0 - floatBitsToInt(temp_21))), -2.0, temp_57), temp_58, temp_68) + 0.0 - temp_73;
    temp_90 = cos(temp_89) * sin(temp_70);
    temp_91 = sin(temp_89) * cos(temp_70);
    temp_92 = sin(temp_70) * sin(temp_89);
    temp_93 = cos(temp_89) * cos(temp_70);
    temp_94 = fma(temp_40, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_38, _sysEmitterDynamicUniformBlock.data[5].y, temp_36 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    if ((floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000000) == floatBitsToInt(2))
    {
        temp_95 = 0.0 - temp_94 + _sysViewUniformBlock.data[17].y;
        temp_96 = inversesqrt(fma(temp_47, temp_47, fma(temp_95, temp_95, temp_44 * temp_44)));
        temp_97 = temp_96 * temp_44 * _sysEmitterStaticUniformBlock.data[13].z;
        temp_98 = temp_96 * temp_47 * _sysEmitterStaticUniformBlock.data[13].z;
        temp_99 = temp_95 * temp_96 * _sysEmitterStaticUniformBlock.data[13].z;
    }
    else
    {
        temp_97 = 0.0;
        temp_98 = 0.0;
        temp_99 = 0.0;
    }
    temp_100 = fma(temp_61, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_56, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_39, _sysEmitterStaticUniformBlock.data[96].z), temp_66, fma(temp_60, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_101 = temp_42 + temp_97;
    temp_102 = fma(temp_61, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_56, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_39, _sysEmitterStaticUniformBlock.data[96].y), temp_66, fma(temp_60, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_103 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_61, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_56, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_39, _sysEmitterStaticUniformBlock.data[96].x), temp_66, fma(temp_60, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_104 = temp_46 + temp_98;
    temp_105 = temp_94 + temp_99;
    temp_106 = temp_42 + fma(sin(temp_89) * cos(temp_71), temp_100, fma(cos(temp_89) * cos(temp_71), temp_103, sin(temp_71) * 0.0 - temp_102)) + temp_97;
    temp_107 = temp_94 + fma(fma(sin(temp_71), temp_91, 0.0 - temp_90), temp_100, fma(fma(sin(temp_71), temp_93, temp_92), temp_103, cos(temp_70) * cos(temp_71) * temp_102)) + temp_99;
    temp_108 = temp_46 + fma(fma(sin(temp_71), temp_92, temp_93), temp_100, fma(fma(sin(temp_71), temp_90, 0.0 - temp_91), temp_103, sin(temp_70) * cos(temp_71) * temp_102)) + temp_98;
    temp_109 = fma(temp_104, _sysViewUniformBlock.data[11].z, fma(temp_105, _sysViewUniformBlock.data[11].y, temp_101 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_110 = fma(temp_104, _sysViewUniformBlock.data[10].z, fma(temp_105, _sysViewUniformBlock.data[10].y, temp_101 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_111 = fma(temp_108, _sysViewUniformBlock.data[9].z, fma(temp_107, _sysViewUniformBlock.data[9].y, temp_106 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_112 = fma(temp_108, _sysViewUniformBlock.data[8].z, fma(temp_107, _sysViewUniformBlock.data[8].y, temp_106 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_113 = fma(temp_108, _sysViewUniformBlock.data[10].z, fma(temp_107, _sysViewUniformBlock.data[10].y, temp_106 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_114 = 0.0 * temp_111;
    temp_115 = fma(0.0, temp_112, temp_114);
    temp_116 = fma(temp_108, _sysViewUniformBlock.data[11].z, fma(temp_107, _sysViewUniformBlock.data[11].y, temp_106 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_112;
    gl_Position.y = temp_111;
    gl_Position.z = temp_113;
    gl_Position.w = temp_116;
    out_attr3.x = fma(temp_116, 0.5, fma(0.0, temp_113, fma(temp_112, 0.5, temp_114)));
    out_attr3.y = fma(temp_116, 0.5, fma(0.0, temp_113, fma(0.0, temp_112, temp_111 * -0.5)));
    out_attr3.z = fma(0.0, temp_116, temp_115 + temp_113);
    out_attr3.w = temp_116 + fma(0.0, temp_113, temp_115);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_117 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_118 = temp_117 + 0.0 - floor(temp_117);
    }
    else
    {
        temp_118 = temp_5 * (1.0 / temp_6);
    }
    temp_119 = temp_118 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_120 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_121 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_122 = temp_118 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_123 = temp_118 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_124 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[62].w + _sysEmitterStaticUniformBlock.data[63].w);
    temp_125 = fma(temp_119, 0.0 - temp_123, temp_119);
    temp_126 = temp_118 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_127 = temp_118 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_128 = fma(temp_123, 0.0 - temp_126, temp_123);
    temp_129 = temp_118 >= _sysEmitterStaticUniformBlock.data[63].w ? 1.0 : 0.0;
    temp_130 = temp_118 + 0.0 - _sysEmitterStaticUniformBlock.data[62].w;
    temp_131 = fma(temp_126, 0.0 - temp_129, temp_126);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_132 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_133 = temp_132 + 0.0 - floor(temp_132);
    }
    else
    {
        temp_133 = temp_5 * (1.0 / temp_6);
    }
    temp_134 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_135 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_136 = clamp(fma(1.0 / fma(fma(0.0, temp_109, temp_110) * (1.0 / fma(0.0, temp_110, temp_109)), _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - _sysEmitterStaticUniformBlock.data[93].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[93].x + _sysEmitterStaticUniformBlock.data[93].y)), 0.0, 1.0);
    temp_137 = sysTexCoordAttr.x;
    temp_138 = sysTexCoordAttr.y;
    temp_139 = temp_138;
    temp_140 = temp_138;
    temp_141 = temp_137;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_14 > 0.5) ? -1 : 0)) != 0))
    {
        temp_139 = 0.0 - temp_138 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_140 = 0.0 - temp_138 + 1.0;
    }
    temp_142 = temp_5 * (1.0 / temp_6);
    temp_143 = floatBitsToInt(1.0 / float(uint(abs(temp_134)))) + -2;
    temp_144 = temp_133 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_145 = uint(max(trunc(intBitsToFloat(temp_143) * float(0u)), 0.0));
    temp_146 = temp_133 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_147 = temp_142 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_148 = temp_137;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_148 = 0.0 - temp_137 + 1.0;
    }
    temp_149 = temp_142 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_37 > 0.5) ? -1 : 0)) != 0))
    {
        temp_141 = 0.0 - temp_137 + 1.0;
    }
    temp_150 = floatBitsToInt(1.0 / float(uint(abs(temp_135)))) + -2;
    temp_151 = floatBitsToInt(1.0 / float(uint(temp_134))) + -2;
    temp_152 = floatBitsToInt(1.0 / float(uint(temp_135))) + -2;
    temp_153 = uint(max(trunc(float(0u) * intBitsToFloat(temp_150)), 0.0));
    temp_154 = (abs(temp_134) & 0xFFFF) * (int(temp_145 >> 16)) & 0xFFFF | int(temp_145) << 16;
    temp_155 = uint(max(trunc(float(0u) * intBitsToFloat(temp_151)), 0.0));
    temp_156 = temp_142 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_157 = uint(max(trunc(float(0u) * intBitsToFloat(temp_152)), 0.0));
    temp_158 = temp_133 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_159 = (abs(temp_135) & 0xFFFF) * (int(temp_153 >> 16)) & 0xFFFF | int(temp_153) << 16;
    temp_160 = (temp_134 & 0xFFFF) * (int(temp_155 >> 16)) & 0xFFFF | int(temp_155) << 16;
    temp_161 = (temp_135 & 0xFFFF) * (int(temp_157 >> 16)) & 0xFFFF | int(temp_157) << 16;
    temp_162 = 0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_162 = 1;
    }
    temp_163 = temp_133 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_164 = temp_162 == 1;
    temp_165 = temp_142 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_166 = temp_142 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_167 = temp_10;
    temp_168 = temp_14;
    temp_169 = temp_10;
    temp_170 = temp_14;
    if (temp_164)
    {
        temp_167 = temp_14;
    }
    temp_171 = temp_167;
    temp_172 = temp_167;
    if (temp_164)
    {
        temp_168 = temp_37;
    }
    temp_173 = temp_168;
    temp_174 = temp_168;
    if (temp_164)
    {
        temp_169 = temp_14;
    }
    temp_175 = temp_169;
    temp_176 = temp_169;
    if (temp_164)
    {
        temp_170 = temp_37;
    }
    temp_177 = temp_170;
    if (!temp_164)
    {
        temp_178 = temp_162 == 2;
        if (temp_178)
        {
            temp_171 = temp_37;
        }
        temp_172 = temp_171;
        if (temp_178)
        {
            temp_173 = temp_10;
        }
        temp_174 = temp_173;
        if (temp_178)
        {
            temp_175 = temp_10;
        }
        temp_176 = temp_175;
        if (temp_178)
        {
            temp_177 = temp_14;
        }
    }
    temp_179 = int(temp_145) + int(uint(max(trunc(intBitsToFloat(temp_143) * float(uint(0 - ((int(uint(abs(temp_134)) >> 16)) * (int(uint(temp_154) >> 16)) << 16) + (abs(temp_134) & 0xFFFF) * (int(temp_145) & 0xFFFF) + (temp_154 << 16)))), 0.0)));
    temp_180 = temp_142 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_181 = (abs(temp_134) & 0xFFFF) * (int(uint(temp_179) >> 16)) & 0xFFFF | temp_179 << 16;
    temp_182 = int(temp_157) + int(uint(max(trunc(intBitsToFloat(temp_152) * float(uint(0 - ((int(uint(temp_135) >> 16)) * (int(uint(temp_161) >> 16)) << 16) + (temp_135 & 0xFFFF) * (int(temp_157) & 0xFFFF) + (temp_161 << 16)))), 0.0)));
    temp_183 = int(temp_153) + int(uint(max(trunc(intBitsToFloat(temp_150) * float(uint(0 - ((int(uint(abs(temp_135)) >> 16)) * (int(uint(temp_159) >> 16)) << 16) + (abs(temp_135) & 0xFFFF) * (int(temp_153) & 0xFFFF) + (temp_159 << 16)))), 0.0)));
    temp_184 = (temp_135 & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_185 = int(temp_155) + int(uint(max(trunc(intBitsToFloat(temp_151) * float(uint(0 - ((int(uint(temp_134) >> 16)) * (int(uint(temp_160) >> 16)) << 16) + (temp_134 & 0xFFFF) * (int(temp_155) & 0xFFFF) + (temp_160 << 16)))), 0.0)));
    temp_186 = (abs(temp_135) & 0xFFFF) * (int(uint(temp_183) >> 16)) & 0xFFFF | temp_183 << 16;
    temp_187 = (temp_134 & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_188 = temp_142 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_189 = temp_142 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_190 = 0 - temp_182 + ((uint(0 - ((int(uint(temp_135) >> 16)) * (int(uint(temp_184) >> 16)) << 16) + (temp_135 & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_184 << 16)) >= uint(temp_135) ? -1 : 0));
    temp_191 = (temp_135 & 0xFFFF) * (int(uint(temp_190) >> 16)) & 0xFFFF | temp_190 << 16;
    temp_192 = 0 - temp_185 + ((uint(0 - ((int(uint(temp_134) >> 16)) * (int(uint(temp_187) >> 16)) << 16) + (temp_134 & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_187 << 16)) >= uint(temp_134) ? -1 : 0));
    temp_193 = 0 - int(uint(temp_135) >> 31);
    temp_194 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_195 = 0 - int(uint(temp_134) >> 31);
    temp_196 = (temp_134 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_197 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_198 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_199 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    out_attr4.x = temp_136 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr0.x = fma(temp_129, _sysEmitterStaticUniformBlock.data[63].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].x + _sysEmitterStaticUniformBlock.data[63].x) * temp_124, temp_130, _sysEmitterStaticUniformBlock.data[62].x), temp_131, fma(fma((_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_121, temp_127, _sysEmitterStaticUniformBlock.data[61].x), temp_128, fma(fma(temp_122, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_120, _sysEmitterStaticUniformBlock.data[60].x), temp_125, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_129, _sysEmitterStaticUniformBlock.data[63].y, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].y + _sysEmitterStaticUniformBlock.data[63].y) * temp_124, temp_130, _sysEmitterStaticUniformBlock.data[62].y), temp_131, fma(fma((_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_121, temp_127, _sysEmitterStaticUniformBlock.data[61].y), temp_128, fma(fma(temp_122, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_120, _sysEmitterStaticUniformBlock.data[60].y), temp_125, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_129, _sysEmitterStaticUniformBlock.data[63].z, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].z + _sysEmitterStaticUniformBlock.data[63].z) * temp_124, temp_130, _sysEmitterStaticUniformBlock.data[62].z), temp_131, fma(fma((_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_121, temp_127, _sysEmitterStaticUniformBlock.data[61].z), temp_128, fma(fma(temp_122, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_120, _sysEmitterStaticUniformBlock.data[60].z), temp_125, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_163, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_133 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_158, 0.0 - temp_163, temp_158), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_133 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_144, 0.0 - temp_158, temp_144), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_133 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_144, 0.0 - temp_146, temp_146), fma(temp_146, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr4.y = fma(temp_189, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_188, 0.0 - temp_189, temp_188), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_180, 0.0 - temp_188, temp_180), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_166, 0.0 - temp_180, temp_166), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_165, 0.0 - temp_166, temp_165), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_156, 0.0 - temp_165, temp_156), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_149, 0.0 - temp_156, temp_149), fma(fma(temp_142 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, (_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), _sysEmitterStaticUniformBlock.data[104].x), fma(temp_149, 0.0 - temp_147, temp_147), fma(temp_147, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_176, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_194, temp_141, -0.5), fma(temp_194, float(temp_135 < 0 || !(temp_135 == 0) ? ((int(uint(temp_135) >> 16)) * (int(uint(temp_191) >> 16)) << 16) + (temp_135 & 0xFFFF) * (temp_190 & 0xFFFF) + (temp_191 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_172 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_198, temp_140, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_177, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), 0.0 - fma(temp_198, 0.0 - float(temp_135 < 0 || !(temp_135 == 0) ? 0 - temp_193 + (temp_183 + 0 - (uint(0 - ((int(uint(abs(temp_135)) >> 16)) * (int(uint(temp_186) >> 16)) << 16) + (abs(temp_135) & 0xFFFF) * (temp_183 & 0xFFFF) + (temp_186 << 16)) >= uint(abs(temp_135)) ? -1 : 0) ^ temp_193) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_174 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr2.x = fma(fma(temp_199, temp_148, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_199, float(temp_134 < 0 || !(temp_134 == 0) ? ((int(uint(temp_134) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (temp_134 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_196 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_14, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_197, temp_139, -0.5), 0.0 - fma(temp_197, 0.0 - float(temp_134 < 0 || !(temp_134 == 0) ? 0 - temp_195 + (temp_179 + 0 - (uint(0 - ((int(uint(abs(temp_134)) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (abs(temp_134) & 0xFFFF) * (temp_179 & 0xFFFF) + (temp_181 << 16)) >= uint(abs(temp_134)) ? -1 : 0) ^ temp_195) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_14 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    if (!(temp_136 <= 0.0))
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
