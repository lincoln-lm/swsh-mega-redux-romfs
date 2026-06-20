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

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;
layout (location = 5) out vec4 out_attr5;
layout (location = 6) out vec4 out_attr6;


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
    bool temp_15;
    precise float temp_16;
    bool temp_17;
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
    bool temp_108;
    precise float temp_109;
    precise float temp_110;
    int temp_111;
    precise float temp_112;
    precise float temp_113;
    precise float temp_114;
    int temp_115;
    int temp_116;
    precise float temp_117;
    precise float temp_118;
    precise float temp_119;
    precise float temp_120;
    int temp_121;
    precise float temp_122;
    uint temp_123;
    precise float temp_124;
    int temp_125;
    int temp_126;
    int temp_127;
    int temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    precise float temp_132;
    uint temp_133;
    uint temp_134;
    bool temp_135;
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
    int temp_147;
    int temp_148;
    precise float temp_149;
    precise float temp_150;
    precise float temp_151;
    bool temp_152;
    int temp_153;
    int temp_154;
    int temp_155;
    int temp_156;
    bool temp_157;
    uint temp_158;
    uint temp_159;
    uint temp_160;
    precise float temp_161;
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
    bool temp_172;
    int temp_173;
    int temp_174;
    precise float temp_175;
    int temp_176;
    precise float temp_177;
    precise float temp_178;
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
    precise float temp_200;
    precise float temp_201;
    precise float temp_202;
    precise float temp_203;
    precise float temp_204;
    precise float temp_205;
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
    temp_15 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_16 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_17 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_18 = floor(temp_9 * 2.0);
    temp_19 = floor(temp_11 * 2.0);
    temp_20 = floor(temp_10 * 2.0);
    temp_21 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_22 = temp_16;
    if (!temp_15)
    {
        temp_21 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_23 = intBitsToFloat(undef);
    if (!temp_15)
    {
        temp_23 = 1.0 / temp_21;
    }
    temp_24 = sysScaleAttr.w;
    temp_25 = fma(temp_10 + temp_9, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x;
    temp_26 = exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w)));
    temp_27 = temp_20 < 0.0 ? 1.0 : 0.0;
    temp_28 = fma(temp_25, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_29 = temp_27;
    temp_30 = temp_25;
    temp_31 = temp_26;
    if (temp_17)
    {
        temp_29 = temp_16 * temp_16;
    }
    temp_32 = fma(fma(temp_10 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_33 = fma(fma(temp_9 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_34 = temp_29;
    if (temp_17)
    {
        temp_34 = temp_29 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_35 = temp_34;
    if (!temp_15)
    {
        temp_30 = fma(temp_26, 0.0 - temp_23, temp_23);
    }
    temp_36 = temp_30;
    if (temp_15)
    {
        temp_36 = temp_5;
    }
    temp_37 = intBitsToFloat(undef);
    if (temp_17)
    {
        temp_37 = temp_34 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_38 = temp_37;
    if (temp_17)
    {
        temp_31 = temp_34 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_39 = temp_31;
    if (temp_17)
    {
        temp_35 = temp_34 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_40 = temp_35;
    if (!temp_17)
    {
        temp_41 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_42 = (temp_16 + 0.0 - fma(temp_41, exp2(temp_16 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_41)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_38 = temp_42 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_39 = temp_42 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_40 = temp_42 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_17)
    {
        temp_43 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_22 = fma(exp2(temp_16 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_43, temp_43);
    }
    temp_44 = fma(fma(temp_22, sysLocalVecAttr.x, temp_38), temp_24, sysLocalPosAttr.x);
    temp_45 = fma(fma(temp_22, sysLocalVecAttr.y, temp_39), temp_24, sysLocalPosAttr.y);
    temp_46 = fma(fma(temp_22, sysLocalVecAttr.z, temp_40), temp_24, sysLocalPosAttr.z);
    temp_47 = fma(fma(temp_28 * (0.0 - (temp_18 < 0.0 ? 1.0 : 0.0) + (temp_18 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_12 > 0 ? -1 : 0) + 0 - (temp_12 >= 0 ? 0 : 1))), -2.0, temp_28), temp_36, (temp_10 + -0.5) * _sysEmitterStaticUniformBlock.data[113].x);
    temp_48 = fma(fma(temp_32 * (0.0 - temp_27 + (temp_20 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - (temp_14 >= 0 ? 0 : 1))), -2.0, temp_32), temp_36, (temp_11 + -0.5) * _sysEmitterStaticUniformBlock.data[113].z);
    if (0.0 == abs(_sysViewUniformBlock.data[16].z) && 0.0 == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_49 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.0 : 3.1415927;
        temp_50 = temp_49;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_50 = 0.0 - temp_49 + -0.0;
        }
        temp_51 = temp_50;
    }
    else if (intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].z) && intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_52 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.785398185 : 2.3561945;
        temp_53 = temp_52;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_53 = 0.0 - temp_52 + -0.0;
        }
        temp_51 = temp_53;
    }
    else
    {
        temp_54 = max(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_55 = min(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_56 = temp_54 >= 16.0;
        temp_57 = temp_54;
        temp_58 = temp_55;
        if (temp_56)
        {
            temp_57 = temp_54 * 0.0625;
        }
        if (temp_56)
        {
            temp_58 = temp_55 * 0.0625;
        }
        temp_59 = 1.0 / temp_57 * temp_58;
        temp_60 = temp_59 * temp_59;
        temp_61 = fma(temp_59 * temp_60 * fma(temp_60, fma(temp_60, -0.82336295, -5.67486715), -6.565555), 1.0 / fma(temp_60, fma(temp_60, temp_60 + 11.3353882, 28.842468), 19.69667), temp_59);
        temp_62 = temp_61;
        if (abs(_sysViewUniformBlock.data[16].x) > abs(_sysViewUniformBlock.data[16].z))
        {
            temp_62 = 0.0 - temp_61 + 1.57079637;
        }
        temp_63 = temp_62;
        if (0.0 > _sysViewUniformBlock.data[16].z)
        {
            temp_63 = 0.0 - temp_62 + 3.14159274;
        }
        temp_51 = temp_63;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_51 = 0.0 - temp_63 + -0.0;
        }
    }
    temp_64 = fma(fma(temp_33 * (0.0 - (temp_19 < 0.0 ? 1.0 : 0.0) + (temp_19 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_13 > 0 ? -1 : 0) + 0 - (temp_13 >= 0 ? 0 : 1))), -2.0, temp_33), temp_36, (temp_9 + -0.5) * _sysEmitterStaticUniformBlock.data[113].y) + temp_51;
    temp_65 = cos(temp_48) * cos(temp_47);
    temp_66 = cos(temp_48) * sin(temp_47);
    temp_67 = cos(temp_47) * cos(temp_64);
    temp_68 = sin(temp_47) * sin(temp_64);
    temp_69 = cos(temp_48) * cos(temp_64);
    temp_70 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_71 = sin(temp_47) * cos(temp_64);
    temp_72 = cos(temp_47) * sin(temp_64);
    temp_73 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_74 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_75 = fma(sin(temp_48), temp_67, temp_68);
    temp_76 = cos(temp_48) * sin(temp_64);
    temp_77 = fma(sin(temp_48), temp_68, temp_67);
    temp_78 = fma(sin(temp_48), temp_71, 0.0 - temp_72);
    temp_79 = fma(sin(temp_48), temp_72, 0.0 - temp_71);
    temp_80 = sysNormalAttr.x;
    temp_81 = sysNormalAttr.y;
    temp_82 = sysNormalAttr.z;
    temp_83 = fma(temp_46, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_45, _sysEmitterDynamicUniformBlock.data[4].y, temp_44 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_76, temp_70, fma(temp_74, temp_69, temp_73 * 0.0 - sin(temp_48)));
    temp_84 = fma(temp_46, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_45, _sysEmitterDynamicUniformBlock.data[5].y, temp_44 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_79, temp_70, fma(temp_74, temp_75, temp_73 * temp_65));
    temp_85 = fma(temp_46, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_45, _sysEmitterDynamicUniformBlock.data[6].y, temp_44 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_77, temp_70, fma(temp_74, temp_78, temp_73 * temp_66));
    temp_86 = fma(temp_85, _sysViewUniformBlock.data[0].z, fma(temp_84, _sysViewUniformBlock.data[0].y, temp_83 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_87 = fma(temp_85, _sysViewUniformBlock.data[1].z, fma(temp_84, _sysViewUniformBlock.data[1].y, temp_83 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_88 = fma(temp_85, _sysViewUniformBlock.data[2].z, fma(temp_84, _sysViewUniformBlock.data[2].y, temp_83 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_89 = fma(temp_85, _sysViewUniformBlock.data[3].z, fma(temp_84, _sysViewUniformBlock.data[3].y, temp_83 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    out_attr5.x = fma(temp_76, temp_82, fma(temp_69, temp_80, sin(temp_48) * 0.0 - temp_81));
    out_attr5.y = fma(temp_79, temp_82, fma(temp_75, temp_80, temp_65 * temp_81));
    out_attr5.z = fma(temp_77, temp_82, fma(temp_78, temp_80, temp_66 * temp_81));
    temp_90 = fma(temp_85, _sysViewUniformBlock.data[11].z, fma(temp_84, _sysViewUniformBlock.data[11].y, temp_83 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.w = temp_90;
    out_attr6.x = temp_83 + 0.0 - _sysViewUniformBlock.data[17].x;
    out_attr6.y = temp_84 + 0.0 - _sysViewUniformBlock.data[17].y;
    out_attr6.z = temp_85 + 0.0 - _sysViewUniformBlock.data[17].z;
    gl_Position.y = fma(temp_85, _sysViewUniformBlock.data[9].z, fma(temp_84, _sysViewUniformBlock.data[9].y, temp_83 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.x = fma(temp_85, _sysViewUniformBlock.data[8].z, fma(temp_84, _sysViewUniformBlock.data[8].y, temp_83 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.z = fma(temp_89, _sysViewUniformBlock.data[6].w, fma(temp_88, _sysViewUniformBlock.data[6].z, fma(temp_87, _sysViewUniformBlock.data[6].y, temp_86 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_89, _sysViewUniformBlock.data[7].w, fma(temp_88, _sysViewUniformBlock.data[7].z, fma(temp_87, _sysViewUniformBlock.data[7].y, temp_86 * _sysViewUniformBlock.data[7].x)))) * temp_90;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_91 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_92 = temp_91 + 0.0 - floor(temp_91);
    }
    else
    {
        temp_92 = temp_5 * (1.0 / temp_6);
    }
    temp_93 = temp_92 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_94 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_95 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_96 = temp_92 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_97 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[62].w + _sysEmitterStaticUniformBlock.data[63].w);
    temp_98 = temp_92 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_99 = fma(temp_93, 0.0 - temp_96, temp_93);
    temp_100 = temp_92 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_101 = temp_92 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_102 = temp_92 + 0.0 - _sysEmitterStaticUniformBlock.data[62].w;
    temp_103 = temp_92 >= _sysEmitterStaticUniformBlock.data[63].w ? 1.0 : 0.0;
    temp_104 = fma(temp_96, 0.0 - temp_100, temp_96);
    temp_105 = fma(temp_100, 0.0 - temp_103, temp_100);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_106 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_107 = temp_106 + 0.0 - floor(temp_106);
    }
    else
    {
        temp_107 = temp_5 * (1.0 / temp_6);
    }
    temp_108 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_109 = sysTexCoordAttr.x;
    temp_110 = sysTexCoordAttr.y;
    temp_111 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_112 = temp_5 * (1.0 / temp_6);
    temp_113 = temp_107 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_114 = temp_107 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_115 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_116 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_117 = temp_112 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_118 = temp_112 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_119 = temp_107 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_120 = temp_112 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_121 = floatBitsToInt(1.0 / float(uint(temp_111))) + -2;
    temp_122 = temp_107 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_123 = uint(max(trunc(float(0u) * intBitsToFloat(temp_121)), 0.0));
    temp_124 = temp_112 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_125 = floatBitsToInt(1.0 / float(uint(temp_115))) + -2;
    temp_126 = floatBitsToInt(1.0 / float(uint(temp_116))) + -2;
    temp_127 = (temp_111 & 0xFFFF) * (int(temp_123 >> 16)) & 0xFFFF | int(temp_123) << 16;
    temp_128 = 0;
    temp_129 = temp_110;
    temp_130 = temp_110;
    temp_131 = temp_110;
    temp_132 = temp_109;
    if (temp_108)
    {
        temp_128 = 1;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_129 = 0.0 - temp_110 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_130 = 0.0 - temp_110 + 1.0;
    }
    temp_133 = uint(max(trunc(float(0u) * intBitsToFloat(temp_125)), 0.0));
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_131 = 0.0 - temp_110 + 1.0;
    }
    temp_134 = uint(max(trunc(float(0u) * intBitsToFloat(temp_126)), 0.0));
    temp_135 = temp_128 == 1;
    temp_136 = temp_112 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_137 = temp_109;
    temp_138 = temp_109;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_137 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_138 = 0.0 - temp_109 + 1.0;
    }
    temp_139 = temp_10;
    temp_140 = temp_9;
    temp_141 = temp_10;
    temp_142 = temp_9;
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_132 = 0.0 - temp_109 + 1.0;
    }
    if (temp_135)
    {
        temp_139 = temp_9;
    }
    temp_143 = temp_139;
    temp_144 = temp_139;
    if (temp_135)
    {
        temp_140 = temp_11;
    }
    temp_145 = temp_140;
    temp_146 = temp_140;
    if (temp_135)
    {
        temp_141 = temp_9;
    }
    temp_147 = (temp_115 & 0xFFFF) * (int(temp_133 >> 16)) & 0xFFFF | int(temp_133) << 16;
    temp_148 = (temp_116 & 0xFFFF) * (int(temp_134 >> 16)) & 0xFFFF | int(temp_134) << 16;
    temp_149 = temp_141;
    temp_150 = temp_141;
    if (temp_135)
    {
        temp_142 = temp_11;
    }
    temp_151 = temp_142;
    if (!temp_135)
    {
        temp_152 = temp_128 == 2;
        if (temp_152)
        {
            temp_143 = temp_11;
        }
        temp_144 = temp_143;
        if (temp_152)
        {
            temp_145 = temp_10;
        }
        temp_146 = temp_145;
        if (temp_152)
        {
            temp_149 = temp_10;
        }
        temp_150 = temp_149;
        if (temp_152)
        {
            temp_151 = temp_9;
        }
    }
    temp_153 = 0;
    if (temp_108)
    {
        temp_153 = 2;
    }
    temp_154 = floatBitsToInt(1.0 / float(uint(abs(temp_111)))) + -2;
    temp_155 = floatBitsToInt(1.0 / float(uint(abs(temp_115)))) + -2;
    temp_156 = floatBitsToInt(1.0 / float(uint(abs(temp_116)))) + -2;
    temp_157 = temp_153 == 1;
    temp_158 = uint(max(trunc(intBitsToFloat(temp_154) * float(0u)), 0.0));
    temp_159 = uint(max(trunc(float(0u) * intBitsToFloat(temp_155)), 0.0));
    temp_160 = uint(max(trunc(float(0u) * intBitsToFloat(temp_156)), 0.0));
    temp_161 = temp_10;
    temp_162 = temp_9;
    temp_163 = temp_10;
    temp_164 = temp_9;
    if (temp_157)
    {
        temp_161 = temp_9;
    }
    temp_165 = temp_161;
    temp_166 = temp_161;
    if (temp_157)
    {
        temp_162 = temp_11;
    }
    temp_167 = temp_162;
    temp_168 = temp_162;
    if (temp_157)
    {
        temp_163 = temp_9;
    }
    temp_169 = temp_163;
    temp_170 = temp_163;
    if (temp_157)
    {
        temp_164 = temp_11;
    }
    temp_171 = temp_164;
    if (!temp_157)
    {
        temp_172 = temp_153 == 2;
        if (temp_172)
        {
            temp_165 = temp_11;
        }
        temp_166 = temp_165;
        if (temp_172)
        {
            temp_167 = temp_10;
        }
        temp_168 = temp_167;
        if (temp_172)
        {
            temp_169 = temp_10;
        }
        temp_170 = temp_169;
        if (temp_172)
        {
            temp_171 = temp_9;
        }
    }
    temp_173 = (abs(temp_111) & 0xFFFF) * (int(temp_158 >> 16)) & 0xFFFF | int(temp_158) << 16;
    temp_174 = (abs(temp_115) & 0xFFFF) * (int(temp_159 >> 16)) & 0xFFFF | int(temp_159) << 16;
    temp_175 = temp_112 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_176 = (abs(temp_116) & 0xFFFF) * (int(temp_160 >> 16)) & 0xFFFF | int(temp_160) << 16;
    temp_177 = temp_112 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_178 = temp_112 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_179 = int(temp_158) + int(uint(max(trunc(intBitsToFloat(temp_154) * float(uint(0 - ((int(uint(abs(temp_111)) >> 16)) * (int(uint(temp_173) >> 16)) << 16) + (abs(temp_111) & 0xFFFF) * (int(temp_158) & 0xFFFF) + (temp_173 << 16)))), 0.0)));
    temp_180 = int(temp_123) + int(uint(max(trunc(intBitsToFloat(temp_121) * float(uint(0 - ((int(uint(temp_111) >> 16)) * (int(uint(temp_127) >> 16)) << 16) + (temp_111 & 0xFFFF) * (int(temp_123) & 0xFFFF) + (temp_127 << 16)))), 0.0)));
    temp_181 = int(temp_133) + int(uint(max(trunc(intBitsToFloat(temp_125) * float(uint(0 - ((int(uint(temp_115) >> 16)) * (int(uint(temp_147) >> 16)) << 16) + (temp_115 & 0xFFFF) * (int(temp_133) & 0xFFFF) + (temp_147 << 16)))), 0.0)));
    temp_182 = int(temp_134) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(0 - ((int(uint(temp_116) >> 16)) * (int(uint(temp_148) >> 16)) << 16) + (temp_116 & 0xFFFF) * (int(temp_134) & 0xFFFF) + (temp_148 << 16)))), 0.0)));
    temp_183 = (temp_111 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_184 = int(temp_159) + int(uint(max(trunc(intBitsToFloat(temp_155) * float(uint(0 - ((int(uint(abs(temp_115)) >> 16)) * (int(uint(temp_174) >> 16)) << 16) + (abs(temp_115) & 0xFFFF) * (int(temp_159) & 0xFFFF) + (temp_174 << 16)))), 0.0)));
    temp_185 = (temp_115 & 0xFFFF) * (int(uint(temp_181) >> 16)) & 0xFFFF | temp_181 << 16;
    temp_186 = (temp_116 & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_187 = int(temp_160) + int(uint(max(trunc(intBitsToFloat(temp_156) * float(uint(0 - ((int(uint(abs(temp_116)) >> 16)) * (int(uint(temp_176) >> 16)) << 16) + (abs(temp_116) & 0xFFFF) * (int(temp_160) & 0xFFFF) + (temp_176 << 16)))), 0.0)));
    temp_188 = (abs(temp_111) & 0xFFFF) * (int(uint(temp_179) >> 16)) & 0xFFFF | temp_179 << 16;
    temp_189 = (abs(temp_115) & 0xFFFF) * (int(uint(temp_184) >> 16)) & 0xFFFF | temp_184 << 16;
    temp_190 = (abs(temp_116) & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_191 = 0 - temp_180 + ((uint(0 - ((int(uint(temp_111) >> 16)) * (int(uint(temp_183) >> 16)) << 16) + (temp_111 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_183 << 16)) >= uint(temp_111) ? -1 : 0));
    temp_192 = 0 - temp_182 + ((uint(0 - ((int(uint(temp_116) >> 16)) * (int(uint(temp_186) >> 16)) << 16) + (temp_116 & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_186 << 16)) >= uint(temp_116) ? -1 : 0));
    temp_193 = (temp_111 & 0xFFFF) * (int(uint(temp_191) >> 16)) & 0xFFFF | temp_191 << 16;
    temp_194 = 0 - temp_181 + ((uint(0 - ((int(uint(temp_115) >> 16)) * (int(uint(temp_185) >> 16)) << 16) + (temp_115 & 0xFFFF) * (temp_181 & 0xFFFF) + (temp_185 << 16)) >= uint(temp_115) ? -1 : 0));
    temp_195 = 0 - int(uint(temp_116) >> 31);
    temp_196 = 0 - int(uint(temp_111) >> 31);
    temp_197 = (temp_115 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_198 = 0 - int(uint(temp_115) >> 31);
    temp_199 = (temp_116 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_200 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_201 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_204 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_205 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr0.x = fma(temp_103, _sysEmitterStaticUniformBlock.data[63].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].x + _sysEmitterStaticUniformBlock.data[63].x) * temp_97, temp_102, _sysEmitterStaticUniformBlock.data[62].x), temp_105, fma(fma((_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_95, temp_101, _sysEmitterStaticUniformBlock.data[61].x), temp_104, fma(fma(temp_98, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_94, _sysEmitterStaticUniformBlock.data[60].x), temp_99, fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_103, _sysEmitterStaticUniformBlock.data[63].y, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].y + _sysEmitterStaticUniformBlock.data[63].y) * temp_97, temp_102, _sysEmitterStaticUniformBlock.data[62].y), temp_105, fma(fma((_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_95, temp_101, _sysEmitterStaticUniformBlock.data[61].y), temp_104, fma(fma(temp_98, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_94, _sysEmitterStaticUniformBlock.data[60].y), temp_99, fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_103, _sysEmitterStaticUniformBlock.data[63].z, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].z + _sysEmitterStaticUniformBlock.data[63].z) * temp_97, temp_102, _sysEmitterStaticUniformBlock.data[62].z), temp_105, fma(fma((_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_95, temp_101, _sysEmitterStaticUniformBlock.data[61].z), temp_104, fma(fma(temp_98, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_94, _sysEmitterStaticUniformBlock.data[60].z), temp_99, fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_122, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_107 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_119, 0.0 - temp_122, temp_119), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_107 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_114, 0.0 - temp_119, temp_114), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_107 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_114, 0.0 - temp_113, temp_113), fma(temp_113, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr3.y = fma(temp_178, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_177, 0.0 - temp_178, temp_177), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_175, 0.0 - temp_177, temp_175), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_136, 0.0 - temp_175, temp_136), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_124, 0.0 - temp_136, temp_124), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_120, 0.0 - temp_124, temp_120), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_118, 0.0 - temp_120, temp_118), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_118, 0.0 - temp_117, temp_117), fma(temp_117, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    out_attr1.x = fma(fma(temp_200, temp_137, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_200, float(temp_111 < 0 || !(temp_111 == 0) ? ((int(uint(temp_111) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_111 & 0xFFFF) * (temp_191 & 0xFFFF) + (temp_193 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr1.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_201, temp_129, -0.5), 0.0 - fma(temp_201, 0.0 - float(temp_111 < 0 || !(temp_111 == 0) ? 0 - temp_196 + (temp_179 + 0 - (uint(0 - ((int(uint(abs(temp_111)) >> 16)) * (int(uint(temp_188) >> 16)) << 16) + (abs(temp_111) & 0xFFFF) * (temp_179 & 0xFFFF) + (temp_188 << 16)) >= uint(abs(temp_111)) ? -1 : 0) ^ temp_196) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr1.z = fma(fma(temp_202, temp_138, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_150, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_202, float(temp_115 < 0 || !(temp_115 == 0) ? ((int(uint(temp_115) >> 16)) * (int(uint(temp_197) >> 16)) << 16) + (temp_115 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_197 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_144 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr1.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_151, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_204, temp_130, -0.5), 0.0 - fma(temp_204, 0.0 - float(temp_115 < 0 || !(temp_115 == 0) ? 0 - temp_198 + (temp_184 + 0 - (uint(0 - ((int(uint(abs(temp_115)) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (abs(temp_115) & 0xFFFF) * (temp_184 & 0xFFFF) + (temp_189 << 16)) >= uint(abs(temp_115)) ? -1 : 0) ^ temp_198) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_146 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_170, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_203, temp_132, -0.5), fma(temp_203, float(temp_116 < 0 || !(temp_116 == 0) ? ((int(uint(temp_116) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_116 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_199 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_166 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_171, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_205, temp_131, -0.5), 0.0 - fma(temp_205, 0.0 - float(temp_116 < 0 || !(temp_116 == 0) ? 0 - temp_195 + (temp_187 + 0 - (uint(0 - ((int(uint(abs(temp_116)) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (abs(temp_116) & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_190 << 16)) >= uint(abs(temp_116)) ? -1 : 0) ^ temp_195) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_168 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
