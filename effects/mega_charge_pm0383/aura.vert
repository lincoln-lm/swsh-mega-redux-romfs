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
    bool temp_15;
    precise float temp_16;
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
    precise float temp_41;
    int temp_42;
    int temp_43;
    int temp_44;
    precise float temp_45;
    precise float temp_46;
    precise float temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    bool temp_51;
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
    bool temp_69;
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
    int temp_107;
    precise float temp_108;
    precise float temp_109;
    bool temp_110;
    int temp_111;
    precise float temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    int temp_116;
    int temp_117;
    precise float temp_118;
    precise float temp_119;
    precise float temp_120;
    uint temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    int temp_125;
    int temp_126;
    int temp_127;
    int temp_128;
    int temp_129;
    precise float temp_130;
    int temp_131;
    precise float temp_132;
    uint temp_133;
    uint temp_134;
    uint temp_135;
    precise float temp_136;
    uint temp_137;
    bool temp_138;
    precise float temp_139;
    precise float temp_140;
    int temp_141;
    int temp_142;
    precise float temp_143;
    precise float temp_144;
    precise float temp_145;
    int temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    int temp_151;
    int temp_152;
    precise float temp_153;
    precise float temp_154;
    precise float temp_155;
    bool temp_156;
    int temp_157;
    bool temp_158;
    uint temp_159;
    precise float temp_160;
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
    precise float temp_172;
    precise float temp_173;
    bool temp_174;
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
    int temp_196;
    int temp_197;
    int temp_198;
    precise float temp_199;
    precise float temp_200;
    precise float temp_201;
    precise float temp_202;
    precise float temp_203;
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
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_10) > 0.0;
    temp_14 = sqrt(temp_11) > 0.0;
    temp_15 = sqrt(temp_12) > 0.0;
    temp_16 = intBitsToFloat(undef);
    if (temp_13)
    {
        temp_16 = inversesqrt(temp_10);
    }
    temp_17 = intBitsToFloat(undef);
    temp_18 = temp_16;
    if (temp_14)
    {
        temp_17 = inversesqrt(temp_11);
    }
    temp_19 = temp_17;
    if (!temp_14)
    {
        temp_19 = 0.0;
    }
    temp_20 = intBitsToFloat(undef);
    temp_21 = temp_19;
    if (!temp_14)
    {
        temp_20 = 0.0;
    }
    temp_22 = intBitsToFloat(undef);
    temp_23 = temp_20;
    if (temp_15)
    {
        temp_22 = inversesqrt(temp_12);
    }
    temp_24 = intBitsToFloat(undef);
    temp_25 = temp_22;
    if (temp_13)
    {
        temp_24 = temp_16 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_26 = intBitsToFloat(undef);
    temp_27 = temp_24;
    if (temp_14)
    {
        temp_26 = temp_19 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_28 = temp_26;
    if (temp_14)
    {
        temp_23 = temp_19 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_29 = intBitsToFloat(undef);
    if (temp_13)
    {
        temp_29 = temp_16 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_30 = temp_29;
    if (temp_14)
    {
        temp_21 = temp_19 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    if (temp_13)
    {
        temp_18 = temp_16 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_31 = temp_18;
    if (!temp_14)
    {
        temp_28 = 0.0;
    }
    if (!temp_13)
    {
        temp_31 = 0.0;
    }
    if (!temp_13)
    {
        temp_30 = 0.0;
    }
    if (!temp_13)
    {
        temp_27 = 0.0;
    }
    temp_32 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_32 = temp_22 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_33 = intBitsToFloat(undef);
    temp_34 = temp_32;
    if (temp_15)
    {
        temp_33 = temp_22 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_35 = temp_33;
    if (temp_15)
    {
        temp_25 = temp_22 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_36 = temp_25;
    if (!temp_15)
    {
        temp_36 = 0.0;
    }
    if (!temp_15)
    {
        temp_35 = 0.0;
    }
    if (!temp_15)
    {
        temp_34 = 0.0;
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
    temp_41 = floor(temp_9 * 2.0);
    temp_42 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_43 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_44 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_45 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_46 = temp_38 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_47 = floor(temp_40 * 2.0);
    temp_48 = float(abs(0 - (temp_43 > 0 ? -1 : 0) + 0 - temp_43 >= 0 ? 0 : 1));
    temp_49 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_50 = floor(temp_39 * 2.0);
    temp_51 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_52 = temp_38 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_53 = sysInitRotateAttr.x;
    temp_54 = sysInitRotateAttr.y;
    temp_55 = sysInitRotateAttr.z;
    temp_56 = fma(temp_46, 0.0 - temp_52, temp_52);
    temp_57 = (0.0 - temp_50 < 0.0 ? 1.0 : 0.0 + (temp_50 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_42 > 0 ? -1 : 0) + 0 - temp_42 >= 0 ? 0 : 1));
    temp_58 = fma(fma(temp_39 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_59 = fma(fma(temp_9 + temp_39, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_60 = fma(fma(temp_9 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_61 = (0.0 - temp_47 < 0.0 ? 1.0 : 0.0 + (temp_47 > 0.0 ? 1.0 : 0.0)) * temp_48;
    temp_62 = (0.0 - temp_41 < 0.0 ? 1.0 : 0.0 + (temp_41 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_44 > 0 ? -1 : 0) + 0 - temp_44 >= 0 ? 0 : 1));
    temp_63 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_64 = temp_48;
    if (!temp_51)
    {
        temp_63 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_65 = temp_63;
    if (!temp_51)
    {
        temp_65 = 1.0 / temp_63;
    }
    temp_66 = fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_49, _sysEmitterStaticUniformBlock.data[96].x), temp_56, fma(temp_52, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x));
    temp_67 = temp_66;
    if (temp_51)
    {
        temp_64 = temp_5;
    }
    temp_68 = temp_64;
    if (!temp_51)
    {
        temp_68 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_65, temp_65);
    }
    temp_69 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_70 = sysScaleAttr.z;
    temp_71 = sysScaleAttr.w;
    temp_72 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_73 = fma(fma(temp_60 * temp_62, -2.0, temp_60), temp_68, fma(temp_40 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_62 * temp_55, -2.0, temp_55)));
    temp_74 = fma(fma(temp_59 * temp_57, -2.0, temp_59), temp_68, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_57 * temp_53, -2.0, temp_53)));
    temp_75 = fma(fma(temp_58 * temp_61, -2.0, temp_58), temp_68, fma(temp_39 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_61 * temp_54, -2.0, temp_54)));
    temp_76 = temp_73;
    temp_77 = temp_70;
    temp_78 = temp_75;
    temp_79 = temp_72;
    if (temp_69)
    {
        temp_67 = temp_72 * temp_72;
    }
    temp_80 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_81 = temp_80;
    if (temp_69)
    {
        temp_76 = temp_67 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_69)
    {
        temp_77 = temp_76 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_82 = temp_77;
    if (temp_69)
    {
        temp_78 = temp_76 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_83 = fma(temp_46, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_49, _sysEmitterStaticUniformBlock.data[96].y), temp_56, fma(temp_52, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * temp_80;
    temp_84 = temp_78;
    if (temp_69)
    {
        temp_81 = temp_76 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_85 = temp_81;
    if (!temp_69)
    {
        temp_86 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_87 = (0.0 - fma(temp_86, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_72), 0.0 - temp_86) + temp_72) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_84 = temp_87 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_85 = temp_87 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_82 = temp_87 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_69)
    {
        temp_88 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_79 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_72), 0.0 - temp_88, temp_88);
    }
    temp_89 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_46, _sysEmitterStaticUniformBlock.data[97].x, temp_66) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_90 = cos(temp_74) * cos(temp_75);
    temp_91 = sin(temp_74) * sin(temp_75);
    temp_92 = cos(temp_74) * sin(temp_75);
    temp_93 = sin(temp_74) * cos(temp_75);
    temp_94 = fma(temp_46, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_49, _sysEmitterStaticUniformBlock.data[96].z), temp_56, fma(temp_52, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * temp_70 * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_95 = fma(fma(temp_79, sysLocalVecAttr.x, temp_84), temp_71, sysLocalPosAttr.x);
    temp_96 = fma(fma(temp_79, sysLocalVecAttr.y, temp_85), temp_71, sysLocalPosAttr.y);
    temp_97 = 0.0 + fma(cos(temp_73) * sin(temp_75), temp_94, fma(temp_89, cos(temp_73) * cos(temp_75), temp_83 * 0.0 - sin(temp_73)));
    temp_98 = 0.0 + fma(fma(sin(temp_73), temp_92, 0.0 - temp_93), temp_94, fma(temp_89, fma(sin(temp_73), temp_90, temp_91), temp_83 * cos(temp_73) * cos(temp_74)));
    temp_99 = fma(fma(temp_79, sysLocalVecAttr.z, temp_82), temp_71, sysLocalPosAttr.z);
    temp_100 = 0.0 + fma(fma(sin(temp_73), temp_91, temp_90), temp_94, fma(temp_89, fma(sin(temp_73), temp_93, 0.0 - temp_92), temp_83 * cos(temp_73) * sin(temp_74)));
    temp_101 = fma(0.0, temp_94, fma(0.0, temp_89, 0.0 * temp_83)) + 1.0;
    temp_102 = fma(fma(temp_99, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_96, _sysEmitterDynamicUniformBlock.data[4].y, temp_95 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_101, fma(temp_100, temp_34, fma(temp_98, temp_27, temp_97 * temp_28)));
    temp_103 = fma(fma(temp_99, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_96, _sysEmitterDynamicUniformBlock.data[5].y, temp_95 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_101, fma(temp_100, temp_35, fma(temp_98, temp_30, temp_97 * temp_23)));
    temp_104 = fma(fma(temp_99, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_96, _sysEmitterDynamicUniformBlock.data[6].y, temp_95 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_101, fma(temp_100, temp_36, fma(temp_98, temp_31, temp_97 * temp_21)));
    gl_Position.x = fma(temp_104, _sysViewUniformBlock.data[8].z, fma(temp_103, _sysViewUniformBlock.data[8].y, temp_102 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_104, _sysViewUniformBlock.data[9].z, fma(temp_103, _sysViewUniformBlock.data[9].y, temp_102 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_104, _sysViewUniformBlock.data[10].z, fma(temp_103, _sysViewUniformBlock.data[10].y, temp_102 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_104, _sysViewUniformBlock.data[11].z, fma(temp_103, _sysViewUniformBlock.data[11].y, temp_102 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_105 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_106 = temp_105 + 0.0 - floor(temp_105);
    }
    else
    {
        temp_106 = temp_5 * (1.0 / temp_6);
    }
    temp_107 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_108 = sysTexCoordAttr.x;
    temp_109 = sysTexCoordAttr.y;
    temp_110 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_111 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_112 = temp_108;
    temp_113 = temp_108;
    temp_114 = temp_9;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_40 > 0.5) ? -1 : 0)) != 0))
    {
        temp_112 = 0.0 - temp_108 + 1.0;
    }
    temp_115 = temp_108;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_115 = 0.0 - temp_108 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_39 > 0.5) ? -1 : 0)) != 0))
    {
        temp_113 = 0.0 - temp_108 + 1.0;
    }
    temp_116 = floatBitsToInt(1.0 / float(uint(temp_107))) + -2;
    temp_117 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_118 = temp_106 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_119 = temp_106 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_120 = temp_106 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_121 = uint(max(trunc(float(0u) * intBitsToFloat(temp_116)), 0.0));
    temp_122 = temp_109;
    temp_123 = temp_109;
    temp_124 = temp_109;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_39 > 0.5) ? -1 : 0)) != 0))
    {
        temp_122 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_123 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_40 > 0.5) ? -1 : 0)) != 0))
    {
        temp_124 = 0.0 - temp_109 + 1.0;
    }
    temp_125 = (temp_107 & 0xFFFF) * (int(temp_121 >> 16)) & 0xFFFF | int(temp_121) << 16;
    temp_126 = floatBitsToInt(1.0 / float(uint(temp_111))) + -2;
    temp_127 = floatBitsToInt(1.0 / float(uint(temp_117))) + -2;
    temp_128 = floatBitsToInt(1.0 / float(uint(abs(temp_107)))) + -2;
    temp_129 = 0;
    if (temp_110)
    {
        temp_129 = 1;
    }
    temp_130 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_40, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_131 = floatBitsToInt(1.0 / float(uint(abs(temp_111)))) + -2;
    temp_132 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_133 = uint(max(trunc(float(0u) * intBitsToFloat(temp_126)), 0.0));
    temp_134 = uint(max(trunc(float(0u) * intBitsToFloat(temp_127)), 0.0));
    temp_135 = uint(max(trunc(intBitsToFloat(temp_128) * float(0u)), 0.0));
    temp_136 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_137 = uint(max(trunc(float(0u) * intBitsToFloat(temp_131)), 0.0));
    temp_138 = temp_129 == 1;
    temp_139 = fma(temp_132, temp_122, -0.5);
    temp_140 = fma(temp_136, temp_115, -0.5);
    temp_141 = (temp_111 & 0xFFFF) * (int(temp_133 >> 16)) & 0xFFFF | int(temp_133) << 16;
    temp_142 = (temp_117 & 0xFFFF) * (int(temp_134 >> 16)) & 0xFFFF | int(temp_134) << 16;
    temp_143 = temp_39;
    temp_144 = temp_9;
    temp_145 = temp_39;
    temp_146 = 0;
    if (temp_138)
    {
        temp_114 = temp_39;
    }
    temp_147 = temp_114;
    temp_148 = temp_114;
    if (temp_138)
    {
        temp_143 = temp_40;
    }
    temp_149 = temp_143;
    temp_150 = temp_143;
    if (temp_138)
    {
        temp_144 = temp_39;
    }
    temp_151 = (abs(temp_107) & 0xFFFF) * (int(temp_135 >> 16)) & 0xFFFF | int(temp_135) << 16;
    temp_152 = (abs(temp_111) & 0xFFFF) * (int(temp_137 >> 16)) & 0xFFFF | int(temp_137) << 16;
    temp_153 = temp_144;
    temp_154 = temp_144;
    if (temp_138)
    {
        temp_145 = temp_40;
    }
    temp_155 = temp_145;
    if (!temp_138)
    {
        temp_156 = temp_129 == 2;
        if (temp_156)
        {
            temp_147 = temp_40;
        }
        temp_148 = temp_147;
        if (temp_156)
        {
            temp_149 = temp_9;
        }
        temp_150 = temp_149;
        if (temp_156)
        {
            temp_153 = temp_9;
        }
        temp_154 = temp_153;
        if (temp_156)
        {
            temp_155 = temp_39;
        }
    }
    if (temp_110)
    {
        temp_146 = 2;
    }
    temp_157 = floatBitsToInt(1.0 / float(uint(abs(temp_117)))) + -2;
    temp_158 = temp_146 == 1;
    temp_159 = uint(max(trunc(float(0u) * intBitsToFloat(temp_157)), 0.0));
    temp_160 = temp_9;
    temp_161 = temp_39;
    temp_162 = temp_40;
    temp_163 = temp_9;
    temp_164 = temp_39;
    if (temp_158)
    {
        temp_160 = temp_39;
    }
    temp_165 = temp_160;
    temp_166 = temp_160;
    if (temp_158)
    {
        temp_161 = temp_40;
    }
    temp_167 = temp_161;
    temp_168 = temp_161;
    if (temp_158)
    {
        temp_162 = temp_9;
    }
    temp_169 = temp_162;
    temp_170 = temp_162;
    if (temp_158)
    {
        temp_163 = temp_39;
    }
    temp_171 = temp_163;
    temp_172 = temp_163;
    if (temp_158)
    {
        temp_164 = temp_40;
    }
    temp_173 = temp_164;
    if (!temp_158)
    {
        temp_174 = temp_146 == 2;
        if (temp_174)
        {
            temp_165 = temp_40;
        }
        temp_166 = temp_165;
        if (temp_174)
        {
            temp_167 = temp_9;
        }
        temp_168 = temp_167;
        if (temp_174)
        {
            temp_171 = temp_9;
        }
        temp_172 = temp_171;
        if (temp_174)
        {
            temp_169 = temp_39;
        }
        temp_170 = temp_169;
        if (temp_174)
        {
            temp_173 = temp_39;
        }
    }
    temp_175 = (abs(temp_117) & 0xFFFF) * (int(temp_159 >> 16)) & 0xFFFF | int(temp_159) << 16;
    temp_176 = int(temp_135) + int(uint(max(trunc(intBitsToFloat(temp_128) * float(uint(0 - ((int(uint(abs(temp_107)) >> 16)) * (int(uint(temp_151) >> 16)) << 16) + (abs(temp_107) & 0xFFFF) * (int(temp_135) & 0xFFFF) + (temp_151 << 16)))), 0.0)));
    temp_177 = int(temp_121) + int(uint(max(trunc(intBitsToFloat(temp_116) * float(uint(0 - ((int(uint(temp_107) >> 16)) * (int(uint(temp_125) >> 16)) << 16) + (temp_107 & 0xFFFF) * (int(temp_121) & 0xFFFF) + (temp_125 << 16)))), 0.0)));
    temp_178 = int(temp_133) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(0 - ((int(uint(temp_111) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_111 & 0xFFFF) * (int(temp_133) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_179 = (temp_107 & 0xFFFF) * (int(uint(temp_177) >> 16)) & 0xFFFF | temp_177 << 16;
    temp_180 = int(temp_134) + int(uint(max(trunc(intBitsToFloat(temp_127) * float(uint(0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_142) >> 16)) << 16) + (temp_117 & 0xFFFF) * (int(temp_134) & 0xFFFF) + (temp_142 << 16)))), 0.0)));
    temp_181 = (abs(temp_107) & 0xFFFF) * (int(uint(temp_176) >> 16)) & 0xFFFF | temp_176 << 16;
    temp_182 = int(temp_137) + int(uint(max(trunc(intBitsToFloat(temp_131) * float(uint(0 - ((int(uint(abs(temp_111)) >> 16)) * (int(uint(temp_152) >> 16)) << 16) + (abs(temp_111) & 0xFFFF) * (int(temp_137) & 0xFFFF) + (temp_152 << 16)))), 0.0)));
    temp_183 = (temp_111 & 0xFFFF) * (int(uint(temp_178) >> 16)) & 0xFFFF | temp_178 << 16;
    temp_184 = int(temp_159) + int(uint(max(trunc(intBitsToFloat(temp_157) * float(uint(0 - ((int(uint(abs(temp_117)) >> 16)) * (int(uint(temp_175) >> 16)) << 16) + (abs(temp_117) & 0xFFFF) * (int(temp_159) & 0xFFFF) + (temp_175 << 16)))), 0.0)));
    temp_185 = (temp_117 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_186 = (abs(temp_111) & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_187 = (abs(temp_117) & 0xFFFF) * (int(uint(temp_184) >> 16)) & 0xFFFF | temp_184 << 16;
    temp_188 = 0 - temp_177 + ((uint(0 - ((int(uint(temp_107) >> 16)) * (int(uint(temp_179) >> 16)) << 16) + (temp_107 & 0xFFFF) * (temp_177 & 0xFFFF) + (temp_179 << 16)) >= uint(temp_107) ? -1 : 0));
    temp_189 = 0 - temp_180 + ((uint(0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_185) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_185 << 16)) >= uint(temp_117) ? -1 : 0));
    temp_190 = 0 - temp_178 + ((uint(0 - ((int(uint(temp_111) >> 16)) * (int(uint(temp_183) >> 16)) << 16) + (temp_111 & 0xFFFF) * (temp_178 & 0xFFFF) + (temp_183 << 16)) >= uint(temp_111) ? -1 : 0));
    temp_191 = 0 - int(uint(temp_107) >> 31);
    temp_192 = (temp_107 & 0xFFFF) * (int(uint(temp_188) >> 16)) & 0xFFFF | temp_188 << 16;
    temp_193 = (temp_111 & 0xFFFF) * (int(uint(temp_190) >> 16)) & 0xFFFF | temp_190 << 16;
    temp_194 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_195 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_196 = 0 - int(uint(temp_111) >> 31);
    temp_197 = 0 - int(uint(temp_117) >> 31);
    temp_198 = (temp_117 & 0xFFFF) * (int(uint(temp_189) >> 16)) & 0xFFFF | temp_189 << 16;
    temp_199 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_170, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_200 = fma(temp_194, temp_124, -0.5);
    temp_201 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_202 = fma(temp_195, temp_113, -0.5);
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr4.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr5.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_120, _sysEmitterStaticUniformBlock.data[70].x, fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_106 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_119, 0.0 - temp_120, temp_119), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_106 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_119, 0.0 - temp_118, temp_118), fma(temp_118, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x)))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = fma(fma(temp_202, cos(temp_199), 0.0 - temp_200 * sin(temp_199)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_172, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_195, float(temp_117 < 0 || !(temp_117 == 0) ? ((int(uint(temp_117) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_189 & 0xFFFF) + (temp_198 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_166 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_130), temp_140, 0.0 - temp_139 * sin(temp_130)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), fma(temp_136, float(temp_107 < 0 || !(temp_107 == 0) ? ((int(uint(temp_107) >> 16)) * (int(uint(temp_192) >> 16)) << 16) + (temp_107 & 0xFFFF) * (temp_188 & 0xFFFF) + (temp_192 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_140, sin(temp_130), cos(temp_130) * temp_139), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_39, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_132, 0.0 - float(temp_107 < 0 || !(temp_107 == 0) ? 0 - temp_191 + (temp_176 + 0 - (uint(0 - ((int(uint(abs(temp_107)) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (abs(temp_107) & 0xFFFF) * (temp_176 & 0xFFFF) + (temp_181 << 16)) >= uint(abs(temp_107)) ? -1 : 0) ^ temp_191) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_39 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_154, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_201, temp_112, -0.5), fma(temp_201, float(temp_111 < 0 || !(temp_111 == 0) ? ((int(uint(temp_111) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_111 & 0xFFFF) * (temp_190 & 0xFFFF) + (temp_193 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_148 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_155, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_203, temp_123, -0.5), 0.0 - fma(temp_203, 0.0 - float(temp_111 < 0 || !(temp_111 == 0) ? 0 - temp_196 + (temp_182 + 0 - (uint(0 - ((int(uint(abs(temp_111)) >> 16)) * (int(uint(temp_186) >> 16)) << 16) + (abs(temp_111) & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_186 << 16)) >= uint(abs(temp_111)) ? -1 : 0) ^ temp_196) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_150 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_202, sin(temp_199), cos(temp_199) * temp_200), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_173, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_194, 0.0 - float(temp_117 < 0 || !(temp_117 == 0) ? 0 - temp_197 + (temp_184 + 0 - (uint(0 - ((int(uint(abs(temp_117)) >> 16)) * (int(uint(temp_187) >> 16)) << 16) + (abs(temp_117) & 0xFFFF) * (temp_184 & 0xFFFF) + (temp_187 << 16)) >= uint(abs(temp_117)) ? -1 : 0) ^ temp_197) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_168 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
