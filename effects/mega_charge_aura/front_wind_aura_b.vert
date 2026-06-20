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
    int temp_15;
    int temp_16;
    precise float temp_17;
    int temp_18;
    int temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
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
    precise float temp_51;
    bool temp_52;
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
    int temp_86;
    bool temp_87;
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
    int temp_99;
    int temp_100;
    precise float temp_101;
    precise float temp_102;
    precise float temp_103;
    precise float temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    int temp_110;
    precise float temp_111;
    precise float temp_112;
    int temp_113;
    uint temp_114;
    precise float temp_115;
    precise float temp_116;
    int temp_117;
    int temp_118;
    bool temp_119;
    uint temp_120;
    uint temp_121;
    int temp_122;
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
    bool temp_134;
    int temp_135;
    int temp_136;
    int temp_137;
    bool temp_138;
    int temp_139;
    int temp_140;
    int temp_141;
    uint temp_142;
    uint temp_143;
    uint temp_144;
    precise float temp_145;
    precise float temp_146;
    precise float temp_147;
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
    bool temp_159;
    int temp_160;
    int temp_161;
    int temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    int temp_166;
    int temp_167;
    int temp_168;
    int temp_169;
    int temp_170;
    int temp_171;
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
    precise float temp_184;
    precise float temp_185;
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
    temp_12 = sysLocalPosAttr.x;
    temp_13 = sysLocalPosAttr.y;
    temp_14 = sysLocalPosAttr.z;
    temp_15 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_16 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_17 = sysRandomAttr.y;
    temp_18 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_19 = 0 - (temp_15 > 0 ? -1 : 0) + 0 - (temp_15 >= 0 ? 0 : 1);
    temp_20 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_21 = sysRandomAttr.z;
    temp_22 = floor(temp_9 * 2.0);
    temp_23 = floor(temp_17 * 2.0);
    temp_24 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_25 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_26 = floor(temp_21 * 2.0);
    temp_27 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_28 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_29 = intBitsToFloat(temp_19);
    if (!temp_25)
    {
        temp_28 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_30 = temp_28;
    if (!temp_25)
    {
        temp_30 = 1.0 / temp_28;
    }
    temp_31 = sysInitRotateAttr.x;
    temp_32 = sysInitRotateAttr.y;
    temp_33 = sysInitRotateAttr.z;
    temp_34 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    if (temp_25)
    {
        temp_29 = temp_5;
    }
    temp_35 = fma(temp_27, 0.0 - temp_34, temp_27);
    temp_36 = temp_29;
    if (!temp_25)
    {
        temp_36 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_30, temp_30);
    }
    temp_37 = (0.0 - (temp_23 < 0.0 ? 1.0 : 0.0) + (temp_23 > 0.0 ? 1.0 : 0.0)) * float(abs(temp_19));
    temp_38 = (0.0 - (temp_26 < 0.0 ? 1.0 : 0.0) + (temp_26 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - (temp_16 >= 0 ? 0 : 1)));
    temp_39 = (0.0 - (temp_22 < 0.0 ? 1.0 : 0.0) + (temp_22 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_18 > 0 ? -1 : 0) + 0 - (temp_18 >= 0 ? 0 : 1)));
    temp_40 = fma(fma(temp_9 + temp_17, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_41 = fma(fma(temp_17 + temp_21, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_42 = fma(fma(temp_9 + temp_21, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_43 = fma(fma(temp_40 * temp_37, -2.0, temp_40), temp_36, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_37 * temp_31, -2.0, temp_31)));
    temp_44 = fma(fma(temp_42 * temp_39, -2.0, temp_42), temp_36, fma(temp_21 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_39 * temp_33, -2.0, temp_33)));
    if (0.0 == abs(_sysViewUniformBlock.data[16].z) && 0.0 == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_45 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.0 : 3.1415927;
        temp_46 = temp_45;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_46 = 0.0 - temp_45 + -0.0;
        }
        temp_47 = temp_46;
    }
    else if (intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].z) && intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_48 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.785398185 : 2.3561945;
        temp_49 = temp_48;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_49 = 0.0 - temp_48 + -0.0;
        }
        temp_47 = temp_49;
    }
    else
    {
        temp_50 = max(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_51 = min(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_52 = temp_50 >= 16.0;
        temp_53 = temp_50;
        temp_54 = temp_51;
        if (temp_52)
        {
            temp_53 = temp_50 * 0.0625;
        }
        if (temp_52)
        {
            temp_54 = temp_51 * 0.0625;
        }
        temp_55 = 1.0 / temp_53 * temp_54;
        temp_56 = temp_55 * temp_55;
        temp_57 = fma(temp_55 * temp_56 * fma(temp_56, fma(temp_56, -0.82336295, -5.67486715), -6.565555), 1.0 / fma(temp_56, fma(temp_56, temp_56 + 11.3353882, 28.842468), 19.69667), temp_55);
        temp_58 = temp_57;
        if (abs(_sysViewUniformBlock.data[16].x) > abs(_sysViewUniformBlock.data[16].z))
        {
            temp_58 = 0.0 - temp_57 + 1.57079637;
        }
        temp_59 = temp_58;
        if (0.0 > _sysViewUniformBlock.data[16].z)
        {
            temp_59 = 0.0 - temp_58 + 3.14159274;
        }
        temp_47 = temp_59;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_47 = 0.0 - temp_59 + -0.0;
        }
    }
    temp_60 = fma(fma(temp_41 * temp_38, -2.0, temp_41), temp_36, fma(temp_17 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_38 * temp_32, -2.0, temp_32))) + temp_47;
    temp_61 = sin(temp_43) * cos(temp_60);
    temp_62 = fma(temp_34, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_20, _sysEmitterStaticUniformBlock.data[96].z), temp_35, fma(temp_27, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_63 = cos(temp_43) * cos(temp_60);
    temp_64 = sin(temp_43) * sin(temp_60);
    temp_65 = fma(temp_34, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_20, _sysEmitterStaticUniformBlock.data[96].y), temp_35, fma(temp_27, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_66 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_34, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_20, _sysEmitterStaticUniformBlock.data[96].x), temp_35, fma(temp_27, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_67 = cos(temp_43) * sin(temp_60);
    temp_68 = fma(temp_14, sysEmtMat0Attr.z, fma(temp_13, sysEmtMat0Attr.y, temp_12 * sysEmtMat0Attr.x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_62, cos(temp_44) * sin(temp_60), fma(temp_66, cos(temp_44) * cos(temp_60), temp_65 * 0.0 - sin(temp_44)));
    temp_69 = fma(temp_14, sysEmtMat1Attr.z, fma(temp_13, sysEmtMat1Attr.y, temp_12 * sysEmtMat1Attr.x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_62, fma(sin(temp_44), temp_67, 0.0 - temp_61), fma(temp_66, fma(sin(temp_44), temp_63, temp_64), temp_65 * cos(temp_44) * cos(temp_43)));
    temp_70 = fma(temp_14, sysEmtMat2Attr.z, fma(temp_13, sysEmtMat2Attr.y, temp_12 * sysEmtMat2Attr.x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_62, fma(sin(temp_44), temp_64, temp_63), fma(temp_66, fma(sin(temp_44), temp_61, 0.0 - temp_67), temp_65 * cos(temp_44) * sin(temp_43)));
    temp_71 = fma(temp_70, _sysViewUniformBlock.data[0].z, fma(temp_69, _sysViewUniformBlock.data[0].y, temp_68 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_72 = fma(temp_70, _sysViewUniformBlock.data[1].z, fma(temp_69, _sysViewUniformBlock.data[1].y, temp_68 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_73 = fma(temp_70, _sysViewUniformBlock.data[2].z, fma(temp_69, _sysViewUniformBlock.data[2].y, temp_68 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_74 = fma(temp_70, _sysViewUniformBlock.data[3].z, fma(temp_69, _sysViewUniformBlock.data[3].y, temp_68 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_75 = fma(temp_70, _sysViewUniformBlock.data[11].z, fma(temp_69, _sysViewUniformBlock.data[11].y, temp_68 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_70, _sysViewUniformBlock.data[8].z, fma(temp_69, _sysViewUniformBlock.data[8].y, temp_68 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_70, _sysViewUniformBlock.data[9].z, fma(temp_69, _sysViewUniformBlock.data[9].y, temp_68 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_74, _sysViewUniformBlock.data[6].w, fma(temp_73, _sysViewUniformBlock.data[6].z, fma(temp_72, _sysViewUniformBlock.data[6].y, temp_71 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_74, _sysViewUniformBlock.data[7].w, fma(temp_73, _sysViewUniformBlock.data[7].z, fma(temp_72, _sysViewUniformBlock.data[7].y, temp_71 * _sysViewUniformBlock.data[7].x)))) * temp_75;
    gl_Position.w = temp_75;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_76 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_77 = temp_76 + 0.0 - floor(temp_76);
    }
    else
    {
        temp_77 = temp_5 * (1.0 / temp_6);
    }
    temp_78 = temp_77 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_79 = temp_77 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_80 = temp_77 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_81 = temp_77 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_81, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_77 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_80, 0.0 - temp_81, temp_80), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_77 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_79, 0.0 - temp_80, temp_79), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_77 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_79, 0.0 - temp_78, temp_78), fma(temp_78, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_82 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_83 = temp_82 + 0.0 - floor(temp_82);
    }
    else
    {
        temp_83 = temp_5 * (1.0 / temp_6);
    }
    temp_84 = sysTexCoordAttr.x;
    temp_85 = sysTexCoordAttr.y;
    temp_86 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_87 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_88 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_89 = 1.0 / (_sysEmitterStaticUniformBlock.data[78].w + 0.0 - _sysEmitterStaticUniformBlock.data[77].w);
    temp_90 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[78].w + _sysEmitterStaticUniformBlock.data[79].w);
    temp_91 = temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_92 = temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[77].w;
    temp_93 = temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[78].w;
    temp_94 = temp_83 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_95 = temp_83 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_96 = temp_83 >= _sysEmitterStaticUniformBlock.data[78].w ? 1.0 : 0.0;
    temp_97 = fma(temp_94, 0.0 - temp_95, temp_94);
    temp_98 = fma(temp_95, 0.0 - temp_96, temp_95);
    temp_99 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_100 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_101 = temp_84;
    temp_102 = temp_84;
    temp_103 = temp_84;
    temp_104 = temp_85;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_101 = 0.0 - temp_84 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_21 > 0.5) ? -1 : 0)) != 0))
    {
        temp_102 = 0.0 - temp_84 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_17 > 0.5) ? -1 : 0)) != 0))
    {
        temp_103 = 0.0 - temp_84 + 1.0;
    }
    temp_105 = temp_83 >= _sysEmitterStaticUniformBlock.data[79].w ? 1.0 : 0.0;
    temp_106 = temp_85;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_17 > 0.5) ? -1 : 0)) != 0))
    {
        temp_106 = 0.0 - temp_85 + 1.0;
    }
    temp_107 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_21, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_108 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_109 = fma(temp_96, 0.0 - temp_105, temp_96);
    temp_110 = floatBitsToInt(1.0 / float(uint(temp_86))) + -2;
    temp_111 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_112 = fma(temp_108, temp_106, -0.5);
    temp_113 = 0;
    if (temp_87)
    {
        temp_113 = 1;
    }
    temp_114 = uint(max(trunc(float(0u) * intBitsToFloat(temp_110)), 0.0));
    temp_115 = temp_85;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_115 = 0.0 - temp_85 + 1.0;
    }
    temp_116 = fma(temp_111, temp_101, -0.5);
    temp_117 = floatBitsToInt(1.0 / float(uint(temp_100))) + -2;
    temp_118 = floatBitsToInt(1.0 / float(uint(temp_99))) + -2;
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_21 > 0.5) ? -1 : 0)) != 0))
    {
        temp_104 = 0.0 - temp_85 + 1.0;
    }
    temp_119 = temp_113 == 1;
    temp_120 = uint(max(trunc(float(0u) * intBitsToFloat(temp_117)), 0.0));
    temp_121 = uint(max(trunc(float(0u) * intBitsToFloat(temp_118)), 0.0));
    temp_122 = (temp_86 & 0xFFFF) * (int(temp_114 >> 16)) & 0xFFFF | int(temp_114) << 16;
    temp_123 = temp_9;
    temp_124 = temp_17;
    temp_125 = temp_9;
    temp_126 = temp_17;
    if (temp_119)
    {
        temp_123 = temp_17;
    }
    temp_127 = temp_123;
    temp_128 = temp_123;
    if (temp_119)
    {
        temp_124 = temp_21;
    }
    temp_129 = temp_124;
    temp_130 = temp_124;
    if (temp_119)
    {
        temp_125 = temp_17;
    }
    temp_131 = temp_125;
    temp_132 = temp_125;
    if (temp_119)
    {
        temp_126 = temp_21;
    }
    temp_133 = temp_126;
    if (!temp_119)
    {
        temp_134 = temp_113 == 2;
        if (temp_134)
        {
            temp_127 = temp_21;
        }
        temp_128 = temp_127;
        if (temp_134)
        {
            temp_129 = temp_9;
        }
        temp_130 = temp_129;
        if (temp_134)
        {
            temp_131 = temp_9;
        }
        temp_132 = temp_131;
        if (temp_134)
        {
            temp_133 = temp_17;
        }
    }
    temp_135 = (temp_99 & 0xFFFF) * (int(temp_121 >> 16)) & 0xFFFF | int(temp_121) << 16;
    temp_136 = 0;
    if (temp_87)
    {
        temp_136 = 2;
    }
    temp_137 = (temp_100 & 0xFFFF) * (int(temp_120 >> 16)) & 0xFFFF | int(temp_120) << 16;
    temp_138 = temp_136 == 1;
    temp_139 = floatBitsToInt(1.0 / float(uint(abs(temp_86)))) + -2;
    temp_140 = floatBitsToInt(1.0 / float(uint(abs(temp_100)))) + -2;
    temp_141 = floatBitsToInt(1.0 / float(uint(abs(temp_99)))) + -2;
    temp_142 = uint(max(trunc(intBitsToFloat(temp_139) * float(0u)), 0.0));
    temp_143 = uint(max(trunc(float(0u) * intBitsToFloat(temp_140)), 0.0));
    temp_144 = uint(max(trunc(float(0u) * intBitsToFloat(temp_141)), 0.0));
    temp_145 = temp_9;
    temp_146 = temp_17;
    temp_147 = temp_21;
    temp_148 = temp_9;
    temp_149 = temp_17;
    if (temp_138)
    {
        temp_145 = temp_17;
    }
    temp_150 = temp_145;
    temp_151 = temp_145;
    if (temp_138)
    {
        temp_146 = temp_21;
    }
    temp_152 = temp_146;
    temp_153 = temp_146;
    if (temp_138)
    {
        temp_147 = temp_9;
    }
    temp_154 = temp_147;
    temp_155 = temp_147;
    if (temp_138)
    {
        temp_148 = temp_17;
    }
    temp_156 = temp_148;
    temp_157 = temp_148;
    if (temp_138)
    {
        temp_149 = temp_21;
    }
    temp_158 = temp_149;
    if (!temp_138)
    {
        temp_159 = temp_136 == 2;
        if (temp_159)
        {
            temp_150 = temp_21;
        }
        temp_151 = temp_150;
        if (temp_159)
        {
            temp_152 = temp_9;
        }
        temp_153 = temp_152;
        if (temp_159)
        {
            temp_156 = temp_9;
        }
        temp_157 = temp_156;
        if (temp_159)
        {
            temp_154 = temp_17;
        }
        temp_155 = temp_154;
        if (temp_159)
        {
            temp_158 = temp_17;
        }
    }
    temp_160 = (abs(temp_86) & 0xFFFF) * (int(temp_142 >> 16)) & 0xFFFF | int(temp_142) << 16;
    temp_161 = (abs(temp_99) & 0xFFFF) * (int(temp_144 >> 16)) & 0xFFFF | int(temp_144) << 16;
    temp_162 = (abs(temp_100) & 0xFFFF) * (int(temp_143 >> 16)) & 0xFFFF | int(temp_143) << 16;
    temp_163 = int(temp_114) + int(uint(max(trunc(intBitsToFloat(temp_110) * float(uint(0 - ((int(uint(temp_86) >> 16)) * (int(uint(temp_122) >> 16)) << 16) + (temp_86 & 0xFFFF) * (int(temp_114) & 0xFFFF) + (temp_122 << 16)))), 0.0)));
    temp_164 = (temp_86 & 0xFFFF) * (int(uint(temp_163) >> 16)) & 0xFFFF | temp_163 << 16;
    temp_165 = int(temp_142) + int(uint(max(trunc(intBitsToFloat(temp_139) * float(uint(0 - ((int(uint(abs(temp_86)) >> 16)) * (int(uint(temp_160) >> 16)) << 16) + (abs(temp_86) & 0xFFFF) * (int(temp_142) & 0xFFFF) + (temp_160 << 16)))), 0.0)));
    temp_166 = int(temp_121) + int(uint(max(trunc(intBitsToFloat(temp_118) * float(uint(0 - ((int(uint(temp_99) >> 16)) * (int(uint(temp_135) >> 16)) << 16) + (temp_99 & 0xFFFF) * (int(temp_121) & 0xFFFF) + (temp_135 << 16)))), 0.0)));
    temp_167 = (abs(temp_86) & 0xFFFF) * (int(uint(temp_165) >> 16)) & 0xFFFF | temp_165 << 16;
    temp_168 = int(temp_143) + int(uint(max(trunc(intBitsToFloat(temp_140) * float(uint(0 - ((int(uint(abs(temp_100)) >> 16)) * (int(uint(temp_162) >> 16)) << 16) + (abs(temp_100) & 0xFFFF) * (int(temp_143) & 0xFFFF) + (temp_162 << 16)))), 0.0)));
    temp_169 = int(temp_144) + int(uint(max(trunc(intBitsToFloat(temp_141) * float(uint(0 - ((int(uint(abs(temp_99)) >> 16)) * (int(uint(temp_161) >> 16)) << 16) + (abs(temp_99) & 0xFFFF) * (int(temp_144) & 0xFFFF) + (temp_161 << 16)))), 0.0)));
    temp_170 = int(temp_120) + int(uint(max(trunc(intBitsToFloat(temp_117) * float(uint(0 - ((int(uint(temp_100) >> 16)) * (int(uint(temp_137) >> 16)) << 16) + (temp_100 & 0xFFFF) * (int(temp_120) & 0xFFFF) + (temp_137 << 16)))), 0.0)));
    temp_171 = (temp_99 & 0xFFFF) * (int(uint(temp_166) >> 16)) & 0xFFFF | temp_166 << 16;
    temp_172 = (abs(temp_100) & 0xFFFF) * (int(uint(temp_168) >> 16)) & 0xFFFF | temp_168 << 16;
    temp_173 = (abs(temp_99) & 0xFFFF) * (int(uint(temp_169) >> 16)) & 0xFFFF | temp_169 << 16;
    temp_174 = (temp_100 & 0xFFFF) * (int(uint(temp_170) >> 16)) & 0xFFFF | temp_170 << 16;
    temp_175 = 0 - temp_163 + ((uint(0 - ((int(uint(temp_86) >> 16)) * (int(uint(temp_164) >> 16)) << 16) + (temp_86 & 0xFFFF) * (temp_163 & 0xFFFF) + (temp_164 << 16)) >= uint(temp_86) ? -1 : 0));
    temp_176 = (temp_86 & 0xFFFF) * (int(uint(temp_175) >> 16)) & 0xFFFF | temp_175 << 16;
    temp_177 = 0 - temp_170 + ((uint(0 - ((int(uint(temp_100) >> 16)) * (int(uint(temp_174) >> 16)) << 16) + (temp_100 & 0xFFFF) * (temp_170 & 0xFFFF) + (temp_174 << 16)) >= uint(temp_100) ? -1 : 0));
    temp_178 = 0 - int(uint(temp_86) >> 31);
    temp_179 = 0 - temp_166 + ((uint(0 - ((int(uint(temp_99) >> 16)) * (int(uint(temp_171) >> 16)) << 16) + (temp_99 & 0xFFFF) * (temp_166 & 0xFFFF) + (temp_171 << 16)) >= uint(temp_99) ? -1 : 0));
    temp_180 = 0 - int(uint(temp_100) >> 31);
    temp_181 = (temp_100 & 0xFFFF) * (int(uint(temp_177) >> 16)) & 0xFFFF | temp_177 << 16;
    temp_182 = (temp_99 & 0xFFFF) * (int(uint(temp_179) >> 16)) & 0xFFFF | temp_179 << 16;
    temp_183 = 0 - int(uint(temp_99) >> 31);
    temp_184 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_155, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_185 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_186 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_187 = fma(temp_185, temp_104, -0.5);
    temp_188 = fma(temp_186, temp_103, -0.5);
    temp_189 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_190 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr4.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr5.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(temp_105, _sysEmitterStaticUniformBlock.data[79].x, fma(fma(temp_93, (0.0 - _sysEmitterStaticUniformBlock.data[78].x + _sysEmitterStaticUniformBlock.data[79].x) * temp_90, _sysEmitterStaticUniformBlock.data[78].x), temp_109, fma(fma((_sysEmitterStaticUniformBlock.data[78].x + 0.0 - _sysEmitterStaticUniformBlock.data[77].x) * temp_89, temp_92, _sysEmitterStaticUniformBlock.data[77].x), temp_98, fma(fma(temp_91, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_88, _sysEmitterStaticUniformBlock.data[76].x), temp_97, fma(temp_94, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_105, _sysEmitterStaticUniformBlock.data[79].y, fma(fma(temp_93, (0.0 - _sysEmitterStaticUniformBlock.data[78].y + _sysEmitterStaticUniformBlock.data[79].y) * temp_90, _sysEmitterStaticUniformBlock.data[78].y), temp_109, fma(fma((_sysEmitterStaticUniformBlock.data[78].y + 0.0 - _sysEmitterStaticUniformBlock.data[77].y) * temp_89, temp_92, _sysEmitterStaticUniformBlock.data[77].y), temp_98, fma(fma(temp_91, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_88, _sysEmitterStaticUniformBlock.data[76].y), temp_97, fma(temp_94, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_105, _sysEmitterStaticUniformBlock.data[79].z, fma(fma(temp_93, (0.0 - _sysEmitterStaticUniformBlock.data[78].z + _sysEmitterStaticUniformBlock.data[79].z) * temp_90, _sysEmitterStaticUniformBlock.data[78].z), temp_109, fma(fma((_sysEmitterStaticUniformBlock.data[78].z + 0.0 - _sysEmitterStaticUniformBlock.data[77].z) * temp_89, temp_92, _sysEmitterStaticUniformBlock.data[77].z), temp_98, fma(fma(temp_91, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_88, _sysEmitterStaticUniformBlock.data[76].z), temp_97, fma(temp_94, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr3.x = fma(fma(temp_188, cos(temp_184), 0.0 - temp_187 * sin(temp_184)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_157, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_186, float(temp_99 < 0 || !(temp_99 == 0) ? ((int(uint(temp_99) >> 16)) * (int(uint(temp_182) >> 16)) << 16) + (temp_99 & 0xFFFF) * (temp_179 & 0xFFFF) + (temp_182 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_151 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_107), temp_116, 0.0 - temp_112 * sin(temp_107)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_111, float(temp_86 < 0 || !(temp_86 == 0) ? ((int(uint(temp_86) >> 16)) * (int(uint(temp_176) >> 16)) << 16) + (temp_86 & 0xFFFF) * (temp_175 & 0xFFFF) + (temp_176 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_116, sin(temp_107), temp_112 * cos(temp_107)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_17, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_108, 0.0 - float(temp_86 < 0 || !(temp_86 == 0) ? 0 - temp_178 + (temp_165 + 0 - (uint(0 - ((int(uint(abs(temp_86)) >> 16)) * (int(uint(temp_167) >> 16)) << 16) + (abs(temp_86) & 0xFFFF) * (temp_165 & 0xFFFF) + (temp_167 << 16)) >= uint(abs(temp_86)) ? -1 : 0) ^ temp_178) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_17 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_132, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_189, temp_102, -0.5), fma(temp_189, float(temp_100 < 0 || !(temp_100 == 0) ? ((int(uint(temp_100) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (temp_100 & 0xFFFF) * (temp_177 & 0xFFFF) + (temp_181 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_128 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_133, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_190, temp_115, -0.5), 0.0 - fma(temp_190, 0.0 - float(temp_100 < 0 || !(temp_100 == 0) ? 0 - temp_180 + (temp_168 + 0 - (uint(0 - ((int(uint(abs(temp_100)) >> 16)) * (int(uint(temp_172) >> 16)) << 16) + (abs(temp_100) & 0xFFFF) * (temp_168 & 0xFFFF) + (temp_172 << 16)) >= uint(abs(temp_100)) ? -1 : 0) ^ temp_180) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_130 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_188, sin(temp_184), cos(temp_184) * temp_187), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_158, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_185, 0.0 - float(temp_99 < 0 || !(temp_99 == 0) ? 0 - temp_183 + (temp_169 + 0 - (uint(0 - ((int(uint(abs(temp_99)) >> 16)) * (int(uint(temp_173) >> 16)) << 16) + (abs(temp_99) & 0xFFFF) * (temp_169 & 0xFFFF) + (temp_173 << 16)) >= uint(abs(temp_99)) ? -1 : 0) ^ temp_183) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_153 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
