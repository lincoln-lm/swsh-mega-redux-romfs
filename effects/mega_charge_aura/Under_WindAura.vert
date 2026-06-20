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
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    int temp_17;
    precise float temp_18;
    precise float temp_19;
    bool temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    bool temp_29;
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
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    precise float temp_60;
    precise float temp_61;
    precise float temp_62;
    precise float temp_63;
    bool temp_64;
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
    int temp_103;
    bool temp_104;
    int temp_105;
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
    int temp_121;
    int temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    uint temp_129;
    int temp_130;
    precise float temp_131;
    precise float temp_132;
    int temp_133;
    int temp_134;
    precise float temp_135;
    bool temp_136;
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
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    bool temp_151;
    int temp_152;
    int temp_153;
    int temp_154;
    bool temp_155;
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
        out_attr5.x = 0.0;
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
        out_attr5.x = 0.0;
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
    temp_14 = sysInitRotateAttr.x;
    temp_15 = sysInitRotateAttr.y;
    temp_16 = sysInitRotateAttr.z;
    temp_17 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_18 = floor(temp_9 * 2.0);
    temp_19 = floor(temp_11 * 2.0);
    temp_20 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_21 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_22 = floor(temp_10 * 2.0);
    temp_23 = sysScaleAttr.w;
    temp_24 = 0.0 - (temp_19 < 0.0 ? 1.0 : 0.0) + (temp_19 > 0.0 ? 1.0 : 0.0);
    temp_25 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_26 = temp_24;
    temp_27 = temp_21;
    if (!temp_20)
    {
        temp_25 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_28 = intBitsToFloat(undef);
    if (!temp_20)
    {
        temp_28 = 1.0 / temp_25;
    }
    temp_29 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_30 = temp_22 < 0.0 ? 1.0 : 0.0;
    temp_31 = fma(fma(temp_10 + temp_9, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_32 = (0.0 - (temp_18 < 0.0 ? 1.0 : 0.0) + (temp_18 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_12 > 0 ? -1 : 0) + 0 - (temp_12 >= 0 ? 0 : 1)));
    temp_33 = temp_30;
    if (!temp_20)
    {
        temp_33 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_28, temp_28);
    }
    temp_34 = fma(fma(temp_9 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_35 = fma(fma(temp_10 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_36 = temp_24 * float(abs(0 - (temp_13 > 0 ? -1 : 0) + 0 - (temp_13 >= 0 ? 0 : 1)));
    temp_37 = temp_33;
    temp_38 = temp_35;
    if (temp_29)
    {
        temp_26 = temp_21 * temp_21;
    }
    temp_39 = (0.0 - temp_30 + (temp_22 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_17 > 0 ? -1 : 0) + 0 - (temp_17 >= 0 ? 0 : 1)));
    temp_40 = temp_31 * temp_32;
    temp_41 = temp_32 * temp_14;
    temp_42 = temp_41;
    temp_43 = temp_40;
    if (temp_20)
    {
        temp_37 = temp_5;
    }
    temp_44 = temp_36 * temp_15;
    temp_45 = temp_44;
    if (temp_29)
    {
        temp_42 = temp_26 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_29)
    {
        temp_43 = temp_42 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_46 = temp_43;
    if (temp_29)
    {
        temp_45 = temp_42 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_47 = temp_45;
    if (temp_29)
    {
        temp_38 = temp_42 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_48 = temp_38;
    if (!temp_29)
    {
        temp_49 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_50 = (temp_21 + 0.0 - fma(temp_49, exp2(temp_21 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_49)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_46 = temp_50 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_47 = temp_50 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_48 = temp_50 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_29)
    {
        temp_51 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_27 = fma(exp2(temp_21 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_51, temp_51);
    }
    temp_52 = fma(fma(temp_27, sysLocalVecAttr.x, temp_46), temp_23, sysLocalPosAttr.x);
    temp_53 = fma(fma(temp_27, sysLocalVecAttr.y, temp_47), temp_23, sysLocalPosAttr.y);
    temp_54 = fma(fma(temp_27, sysLocalVecAttr.z, temp_48), temp_23, sysLocalPosAttr.z);
    temp_55 = fma(fma(temp_40, -2.0, temp_31), temp_37, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_41, -2.0, temp_14)));
    temp_56 = fma(fma(temp_35 * temp_39, -2.0, temp_35), temp_37, fma(temp_11 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_39 * temp_16, -2.0, temp_16)));
    if (0.0 == abs(_sysViewUniformBlock.data[16].z) && 0.0 == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_57 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.0 : 3.1415927;
        temp_58 = temp_57;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_58 = 0.0 - temp_57 + -0.0;
        }
        temp_59 = temp_58;
    }
    else if (intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].z) && intBitsToFloat(0x7F800000) == abs(_sysViewUniformBlock.data[16].x))
    {
        temp_60 = !(0.0 > _sysViewUniformBlock.data[16].z) ? 0.785398185 : 2.3561945;
        temp_61 = temp_60;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_61 = 0.0 - temp_60 + -0.0;
        }
        temp_59 = temp_61;
    }
    else
    {
        temp_62 = max(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_63 = min(abs(_sysViewUniformBlock.data[16].x), abs(_sysViewUniformBlock.data[16].z));
        temp_64 = temp_62 >= 16.0;
        temp_65 = temp_62;
        temp_66 = temp_63;
        if (temp_64)
        {
            temp_65 = temp_62 * 0.0625;
        }
        if (temp_64)
        {
            temp_66 = temp_63 * 0.0625;
        }
        temp_67 = 1.0 / temp_65 * temp_66;
        temp_68 = temp_67 * temp_67;
        temp_69 = fma(temp_67 * temp_68 * fma(temp_68, fma(temp_68, -0.82336295, -5.67486715), -6.565555), 1.0 / fma(temp_68, fma(temp_68, temp_68 + 11.3353882, 28.842468), 19.69667), temp_67);
        temp_70 = temp_69;
        if (abs(_sysViewUniformBlock.data[16].x) > abs(_sysViewUniformBlock.data[16].z))
        {
            temp_70 = 0.0 - temp_69 + 1.57079637;
        }
        temp_71 = temp_70;
        if (0.0 > _sysViewUniformBlock.data[16].z)
        {
            temp_71 = 0.0 - temp_70 + 3.14159274;
        }
        temp_59 = temp_71;
        if (0.0 > _sysViewUniformBlock.data[16].x)
        {
            temp_59 = 0.0 - temp_71 + -0.0;
        }
    }
    temp_72 = fma(fma(temp_34 * temp_36, -2.0, temp_34), temp_37, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_44, -2.0, temp_15))) + temp_59;
    temp_73 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_74 = sin(temp_55) * sin(temp_72);
    temp_75 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_76 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_77 = cos(temp_55) * cos(temp_72);
    temp_78 = sin(temp_55) * cos(temp_72);
    temp_79 = cos(temp_55) * sin(temp_72);
    temp_80 = fma(temp_54, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_53, _sysEmitterDynamicUniformBlock.data[4].y, temp_52 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_73, cos(temp_56) * sin(temp_72), fma(temp_76, cos(temp_56) * cos(temp_72), temp_75 * 0.0 - sin(temp_56)));
    temp_81 = fma(temp_54, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_53, _sysEmitterDynamicUniformBlock.data[5].y, temp_52 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_73, fma(sin(temp_56), temp_79, 0.0 - temp_78), fma(temp_76, fma(sin(temp_56), temp_77, temp_74), temp_75 * cos(temp_56) * cos(temp_55)));
    temp_82 = fma(temp_54, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_53, _sysEmitterDynamicUniformBlock.data[6].y, temp_52 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_73, fma(sin(temp_56), temp_74, temp_77), fma(temp_76, fma(sin(temp_56), temp_78, 0.0 - temp_79), temp_75 * cos(temp_56) * sin(temp_55)));
    temp_83 = fma(temp_82, _sysViewUniformBlock.data[0].z, fma(temp_81, _sysViewUniformBlock.data[0].y, temp_80 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_84 = fma(temp_82, _sysViewUniformBlock.data[1].z, fma(temp_81, _sysViewUniformBlock.data[1].y, temp_80 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_85 = fma(temp_82, _sysViewUniformBlock.data[9].z, fma(temp_81, _sysViewUniformBlock.data[9].y, temp_80 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_86 = fma(temp_82, _sysViewUniformBlock.data[2].z, fma(temp_81, _sysViewUniformBlock.data[2].y, temp_80 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_87 = fma(temp_82, _sysViewUniformBlock.data[3].z, fma(temp_81, _sysViewUniformBlock.data[3].y, temp_80 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_88 = 0.0 * temp_85;
    temp_89 = fma(temp_82, _sysViewUniformBlock.data[8].z, fma(temp_81, _sysViewUniformBlock.data[8].y, temp_80 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_90 = fma(temp_82, _sysViewUniformBlock.data[11].z, fma(temp_81, _sysViewUniformBlock.data[11].y, temp_80 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_91 = fma(0.0, temp_89, temp_88);
    temp_92 = fma(temp_87, _sysViewUniformBlock.data[6].w, fma(temp_86, _sysViewUniformBlock.data[6].z, fma(temp_84, _sysViewUniformBlock.data[6].y, temp_83 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_87, _sysViewUniformBlock.data[7].w, fma(temp_86, _sysViewUniformBlock.data[7].z, fma(temp_84, _sysViewUniformBlock.data[7].y, temp_83 * _sysViewUniformBlock.data[7].x)))) * temp_90;
    gl_Position.x = temp_89;
    gl_Position.y = temp_85;
    gl_Position.z = temp_92;
    gl_Position.w = temp_90;
    out_attr4.x = fma(temp_90, 0.5, fma(0.0, temp_92, fma(temp_89, 0.5, temp_88)));
    out_attr4.y = fma(temp_90, 0.5, fma(0.0, temp_92, fma(0.0, temp_89, temp_85 * -0.5)));
    out_attr4.z = fma(0.0, temp_90, temp_92 + temp_91);
    out_attr4.w = temp_90 + fma(0.0, temp_92, temp_91);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_93 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_94 = temp_93 + 0.0 - floor(temp_93);
    }
    else
    {
        temp_94 = temp_5 * (1.0 / temp_6);
    }
    temp_95 = temp_94 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_96 = temp_94 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_97 = temp_94 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_98 = temp_94 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_98, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_94 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_97, 0.0 - temp_98, temp_97), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_94 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_96, 0.0 - temp_97, temp_96), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_94 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_96, 0.0 - temp_95, temp_95), fma(temp_95, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_99 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_100 = temp_99 + 0.0 - floor(temp_99);
    }
    else
    {
        temp_100 = temp_5 * (1.0 / temp_6);
    }
    temp_101 = sysTexCoordAttr.x;
    temp_102 = sysTexCoordAttr.y;
    temp_103 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_104 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_105 = floatBitsToInt(1.0 / float(uint(temp_103))) + -2;
    temp_106 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_107 = 1.0 / (_sysEmitterStaticUniformBlock.data[78].w + 0.0 - _sysEmitterStaticUniformBlock.data[77].w);
    temp_108 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[78].w + _sysEmitterStaticUniformBlock.data[79].w);
    temp_109 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_110 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[77].w;
    temp_111 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[78].w;
    temp_112 = temp_100 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_113 = temp_100 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_114 = temp_100 >= _sysEmitterStaticUniformBlock.data[78].w ? 1.0 : 0.0;
    temp_115 = fma(temp_112, 0.0 - temp_113, temp_112);
    temp_116 = temp_101;
    temp_117 = temp_101;
    temp_118 = temp_101;
    temp_119 = temp_102;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_116 = 0.0 - temp_101 + 1.0;
    }
    temp_120 = fma(temp_113, 0.0 - temp_114, temp_113);
    temp_121 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_117 = 0.0 - temp_101 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_118 = 0.0 - temp_101 + 1.0;
    }
    temp_122 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_123 = temp_100 >= _sysEmitterStaticUniformBlock.data[79].w ? 1.0 : 0.0;
    temp_124 = temp_102;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_124 = 0.0 - temp_102 + 1.0;
    }
    temp_125 = fma(temp_114, 0.0 - temp_123, temp_114);
    temp_126 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_11, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_127 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_128 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_129 = uint(max(trunc(float(0u) * intBitsToFloat(temp_105)), 0.0));
    temp_130 = 0;
    temp_131 = temp_102;
    if (temp_104)
    {
        temp_130 = 1;
    }
    temp_132 = fma(temp_127, temp_124, -0.5);
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_131 = 0.0 - temp_102 + 1.0;
    }
    temp_133 = floatBitsToInt(1.0 / float(uint(temp_122))) + -2;
    temp_134 = floatBitsToInt(1.0 / float(uint(temp_121))) + -2;
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_119 = 0.0 - temp_102 + 1.0;
    }
    temp_135 = fma(temp_128, temp_116, -0.5);
    temp_136 = temp_130 == 1;
    temp_137 = uint(max(trunc(float(0u) * intBitsToFloat(temp_133)), 0.0));
    temp_138 = uint(max(trunc(float(0u) * intBitsToFloat(temp_134)), 0.0));
    temp_139 = (temp_103 & 0xFFFF) * (int(temp_129 >> 16)) & 0xFFFF | int(temp_129) << 16;
    temp_140 = temp_10;
    temp_141 = temp_9;
    temp_142 = temp_10;
    temp_143 = temp_9;
    if (temp_136)
    {
        temp_140 = temp_9;
    }
    temp_144 = temp_140;
    temp_145 = temp_140;
    if (temp_136)
    {
        temp_141 = temp_11;
    }
    temp_146 = temp_141;
    temp_147 = temp_141;
    if (temp_136)
    {
        temp_142 = temp_9;
    }
    temp_148 = temp_142;
    temp_149 = temp_142;
    if (temp_136)
    {
        temp_143 = temp_11;
    }
    temp_150 = temp_143;
    if (!temp_136)
    {
        temp_151 = temp_130 == 2;
        if (temp_151)
        {
            temp_144 = temp_11;
        }
        temp_145 = temp_144;
        if (temp_151)
        {
            temp_146 = temp_10;
        }
        temp_147 = temp_146;
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
    temp_152 = (temp_122 & 0xFFFF) * (int(temp_137 >> 16)) & 0xFFFF | int(temp_137) << 16;
    temp_153 = (temp_121 & 0xFFFF) * (int(temp_138 >> 16)) & 0xFFFF | int(temp_138) << 16;
    temp_154 = 0;
    if (temp_104)
    {
        temp_154 = 2;
    }
    temp_155 = temp_154 == 1;
    temp_156 = floatBitsToInt(1.0 / float(uint(abs(temp_103)))) + -2;
    temp_157 = floatBitsToInt(1.0 / float(uint(abs(temp_122)))) + -2;
    temp_158 = floatBitsToInt(1.0 / float(uint(abs(temp_121)))) + -2;
    temp_159 = uint(max(trunc(intBitsToFloat(temp_156) * float(0u)), 0.0));
    temp_160 = uint(max(trunc(float(0u) * intBitsToFloat(temp_157)), 0.0));
    temp_161 = uint(max(trunc(float(0u) * intBitsToFloat(temp_158)), 0.0));
    temp_162 = temp_10;
    temp_163 = temp_9;
    temp_164 = temp_11;
    temp_165 = temp_10;
    temp_166 = temp_9;
    if (temp_155)
    {
        temp_162 = temp_9;
    }
    temp_167 = temp_162;
    temp_168 = temp_162;
    if (temp_155)
    {
        temp_163 = temp_11;
    }
    temp_169 = temp_163;
    temp_170 = temp_163;
    if (temp_155)
    {
        temp_164 = temp_10;
    }
    temp_171 = temp_164;
    temp_172 = temp_164;
    if (temp_155)
    {
        temp_165 = temp_9;
    }
    temp_173 = temp_165;
    temp_174 = temp_165;
    if (temp_155)
    {
        temp_166 = temp_11;
    }
    temp_175 = temp_166;
    if (!temp_155)
    {
        temp_176 = temp_154 == 2;
        if (temp_176)
        {
            temp_167 = temp_11;
        }
        temp_168 = temp_167;
        if (temp_176)
        {
            temp_169 = temp_10;
        }
        temp_170 = temp_169;
        if (temp_176)
        {
            temp_173 = temp_10;
        }
        temp_174 = temp_173;
        if (temp_176)
        {
            temp_171 = temp_9;
        }
        temp_172 = temp_171;
        if (temp_176)
        {
            temp_175 = temp_9;
        }
    }
    temp_177 = (abs(temp_103) & 0xFFFF) * (int(temp_159 >> 16)) & 0xFFFF | int(temp_159) << 16;
    temp_178 = (abs(temp_121) & 0xFFFF) * (int(temp_161 >> 16)) & 0xFFFF | int(temp_161) << 16;
    temp_179 = (abs(temp_122) & 0xFFFF) * (int(temp_160 >> 16)) & 0xFFFF | int(temp_160) << 16;
    temp_180 = int(temp_129) + int(uint(max(trunc(intBitsToFloat(temp_105) * float(uint(0 - ((int(uint(temp_103) >> 16)) * (int(uint(temp_139) >> 16)) << 16) + (temp_103 & 0xFFFF) * (int(temp_129) & 0xFFFF) + (temp_139 << 16)))), 0.0)));
    temp_181 = (temp_103 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_182 = int(temp_159) + int(uint(max(trunc(intBitsToFloat(temp_156) * float(uint(0 - ((int(uint(abs(temp_103)) >> 16)) * (int(uint(temp_177) >> 16)) << 16) + (abs(temp_103) & 0xFFFF) * (int(temp_159) & 0xFFFF) + (temp_177 << 16)))), 0.0)));
    temp_183 = int(temp_138) + int(uint(max(trunc(intBitsToFloat(temp_134) * float(uint(0 - ((int(uint(temp_121) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (temp_121 & 0xFFFF) * (int(temp_138) & 0xFFFF) + (temp_153 << 16)))), 0.0)));
    temp_184 = (abs(temp_103) & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_185 = int(temp_160) + int(uint(max(trunc(intBitsToFloat(temp_157) * float(uint(0 - ((int(uint(abs(temp_122)) >> 16)) * (int(uint(temp_179) >> 16)) << 16) + (abs(temp_122) & 0xFFFF) * (int(temp_160) & 0xFFFF) + (temp_179 << 16)))), 0.0)));
    temp_186 = int(temp_161) + int(uint(max(trunc(intBitsToFloat(temp_158) * float(uint(0 - ((int(uint(abs(temp_121)) >> 16)) * (int(uint(temp_178) >> 16)) << 16) + (abs(temp_121) & 0xFFFF) * (int(temp_161) & 0xFFFF) + (temp_178 << 16)))), 0.0)));
    temp_187 = int(temp_137) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(0 - ((int(uint(temp_122) >> 16)) * (int(uint(temp_152) >> 16)) << 16) + (temp_122 & 0xFFFF) * (int(temp_137) & 0xFFFF) + (temp_152 << 16)))), 0.0)));
    temp_188 = (temp_121 & 0xFFFF) * (int(uint(temp_183) >> 16)) & 0xFFFF | temp_183 << 16;
    temp_189 = (abs(temp_122) & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_190 = (abs(temp_121) & 0xFFFF) * (int(uint(temp_186) >> 16)) & 0xFFFF | temp_186 << 16;
    temp_191 = (temp_122 & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_192 = 0 - temp_180 + ((uint(0 - ((int(uint(temp_103) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (temp_103 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_181 << 16)) >= uint(temp_103) ? -1 : 0));
    temp_193 = (temp_103 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_194 = 0 - temp_187 + ((uint(0 - ((int(uint(temp_122) >> 16)) * (int(uint(temp_191) >> 16)) << 16) + (temp_122 & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_191 << 16)) >= uint(temp_122) ? -1 : 0));
    temp_195 = 0 - int(uint(temp_103) >> 31);
    temp_196 = 0 - temp_183 + ((uint(0 - ((int(uint(temp_121) >> 16)) * (int(uint(temp_188) >> 16)) << 16) + (temp_121 & 0xFFFF) * (temp_183 & 0xFFFF) + (temp_188 << 16)) >= uint(temp_121) ? -1 : 0));
    temp_197 = 0 - int(uint(temp_122) >> 31);
    temp_198 = (temp_122 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_199 = (temp_121 & 0xFFFF) * (int(uint(temp_196) >> 16)) & 0xFFFF | temp_196 << 16;
    temp_200 = 0 - int(uint(temp_121) >> 31);
    temp_201 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_172, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_204 = fma(temp_202, temp_119, -0.5);
    temp_205 = fma(temp_203, temp_118, -0.5);
    temp_206 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_207 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr6.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr6.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr5.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(temp_123, _sysEmitterStaticUniformBlock.data[79].x, fma(fma(temp_111, (0.0 - _sysEmitterStaticUniformBlock.data[78].x + _sysEmitterStaticUniformBlock.data[79].x) * temp_108, _sysEmitterStaticUniformBlock.data[78].x), temp_125, fma(fma((_sysEmitterStaticUniformBlock.data[78].x + 0.0 - _sysEmitterStaticUniformBlock.data[77].x) * temp_107, temp_110, _sysEmitterStaticUniformBlock.data[77].x), temp_120, fma(fma(temp_109, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_106, _sysEmitterStaticUniformBlock.data[76].x), temp_115, fma(temp_112, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_123, _sysEmitterStaticUniformBlock.data[79].y, fma(fma(temp_111, (0.0 - _sysEmitterStaticUniformBlock.data[78].y + _sysEmitterStaticUniformBlock.data[79].y) * temp_108, _sysEmitterStaticUniformBlock.data[78].y), temp_125, fma(fma((_sysEmitterStaticUniformBlock.data[78].y + 0.0 - _sysEmitterStaticUniformBlock.data[77].y) * temp_107, temp_110, _sysEmitterStaticUniformBlock.data[77].y), temp_120, fma(fma(temp_109, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_106, _sysEmitterStaticUniformBlock.data[76].y), temp_115, fma(temp_112, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_123, _sysEmitterStaticUniformBlock.data[79].z, fma(fma(temp_111, (0.0 - _sysEmitterStaticUniformBlock.data[78].z + _sysEmitterStaticUniformBlock.data[79].z) * temp_108, _sysEmitterStaticUniformBlock.data[78].z), temp_125, fma(fma((_sysEmitterStaticUniformBlock.data[78].z + 0.0 - _sysEmitterStaticUniformBlock.data[77].z) * temp_107, temp_110, _sysEmitterStaticUniformBlock.data[77].z), temp_120, fma(fma(temp_109, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_106, _sysEmitterStaticUniformBlock.data[76].z), temp_115, fma(temp_112, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr3.x = fma(fma(temp_205, cos(temp_201), 0.0 - temp_204 * sin(temp_201)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_174, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_203, float(temp_121 < 0 || !(temp_121 == 0) ? ((int(uint(temp_121) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_121 & 0xFFFF) * (temp_196 & 0xFFFF) + (temp_199 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_168 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_126), temp_135, 0.0 - temp_132 * sin(temp_126)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_128, float(temp_103 < 0 || !(temp_103 == 0) ? ((int(uint(temp_103) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_103 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_193 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_135, sin(temp_126), temp_132 * cos(temp_126)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_127, 0.0 - float(temp_103 < 0 || !(temp_103 == 0) ? 0 - temp_195 + (temp_182 + 0 - (uint(0 - ((int(uint(abs(temp_103)) >> 16)) * (int(uint(temp_184) >> 16)) << 16) + (abs(temp_103) & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_184 << 16)) >= uint(abs(temp_103)) ? -1 : 0) ^ temp_195) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_149, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_206, temp_117, -0.5), fma(temp_206, float(temp_122 < 0 || !(temp_122 == 0) ? ((int(uint(temp_122) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_122 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_198 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_145 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_150, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_207, temp_131, -0.5), 0.0 - fma(temp_207, 0.0 - float(temp_122 < 0 || !(temp_122 == 0) ? 0 - temp_197 + (temp_185 + 0 - (uint(0 - ((int(uint(abs(temp_122)) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (abs(temp_122) & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_189 << 16)) >= uint(abs(temp_122)) ? -1 : 0) ^ temp_197) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_147 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_205, sin(temp_201), cos(temp_201) * temp_204), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_175, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_202, 0.0 - float(temp_121 < 0 || !(temp_121 == 0) ? 0 - temp_200 + (temp_186 + 0 - (uint(0 - ((int(uint(abs(temp_121)) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (abs(temp_121) & 0xFFFF) * (temp_186 & 0xFFFF) + (temp_190 << 16)) >= uint(abs(temp_121)) ? -1 : 0) ^ temp_200) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_170 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
