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
    precise float temp_14;
    bool temp_15;
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
    int temp_46;
    precise float temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    precise float temp_51;
    precise float temp_52;
    precise float temp_53;
    bool temp_54;
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
    bool temp_76;
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
    int temp_117;
    int temp_118;
    int temp_119;
    bool temp_120;
    precise float temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    bool temp_126;
    precise float temp_127;
    int temp_128;
    int temp_129;
    int temp_130;
    int temp_131;
    int temp_132;
    uint temp_133;
    precise float temp_134;
    precise float temp_135;
    int temp_136;
    uint temp_137;
    uint temp_138;
    uint temp_139;
    uint temp_140;
    int temp_141;
    bool temp_142;
    int temp_143;
    int temp_144;
    int temp_145;
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
    int temp_157;
    precise float temp_158;
    precise float temp_159;
    precise float temp_160;
    bool temp_161;
    int temp_162;
    precise float temp_163;
    bool temp_164;
    int temp_165;
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
    uint temp_181;
    precise float temp_182;
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
    int temp_201;
    int temp_202;
    int temp_203;
    precise float temp_204;
    precise float temp_205;
    int temp_206;
    precise float temp_207;
    precise float temp_208;
    precise float temp_209;
    precise float temp_210;
    precise float temp_211;
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
    temp_9 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_10 = sysRandomAttr.x;
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_9) > 0.0;
    temp_14 = sysScaleAttr.x;
    temp_15 = sqrt(temp_11) > 0.0;
    temp_16 = sqrt(temp_12) > 0.0;
    temp_17 = intBitsToFloat(undef);
    temp_18 = temp_14;
    if (temp_13)
    {
        temp_17 = inversesqrt(temp_9);
    }
    temp_19 = intBitsToFloat(undef);
    temp_20 = temp_17;
    if (temp_15)
    {
        temp_19 = inversesqrt(temp_11);
    }
    temp_21 = temp_19;
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
    temp_24 = intBitsToFloat(undef);
    temp_25 = temp_22;
    if (temp_16)
    {
        temp_24 = inversesqrt(temp_12);
    }
    temp_26 = temp_24;
    if (temp_13)
    {
        temp_25 = temp_20 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_27 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_27 = temp_19 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_28 = intBitsToFloat(undef);
    temp_29 = temp_27;
    if (temp_15)
    {
        temp_28 = temp_19 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_30 = temp_28;
    if (temp_15)
    {
        temp_21 = temp_19 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_31 = temp_21;
    if (!temp_15)
    {
        temp_31 = 0.0;
    }
    if (temp_13)
    {
        temp_18 = temp_20 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_32 = temp_18;
    if (temp_13)
    {
        temp_23 = temp_20 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    if (!temp_13)
    {
        temp_32 = 0.0;
    }
    if (!temp_15)
    {
        temp_30 = 0.0;
    }
    if (!temp_15)
    {
        temp_29 = 0.0;
    }
    temp_33 = intBitsToFloat(undef);
    if (temp_16)
    {
        temp_33 = temp_24 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_33;
    if (temp_16)
    {
        temp_34 = temp_24 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_36 = temp_34;
    if (temp_16)
    {
        temp_26 = temp_24 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_37 = temp_26;
    if (!temp_16)
    {
        temp_37 = 0.0;
    }
    if (!temp_16)
    {
        temp_36 = 0.0;
    }
    if (!temp_16)
    {
        temp_35 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_38 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_39 = temp_38 + 0.0 - floor(temp_38);
    }
    else
    {
        temp_39 = temp_5 * (1.0 / temp_6);
    }
    temp_40 = floor(temp_10 * 2.0);
    temp_41 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_42 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_43 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_44 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_45 = sysRandomAttr.y;
    temp_46 = 0 - (temp_41 > 0 ? -1 : 0) + 0 - temp_41 >= 0 ? 0 : 1;
    temp_47 = sysRandomAttr.z;
    temp_48 = temp_39 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_49 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_50 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_51 = floor(temp_45 * 2.0);
    temp_52 = floor(temp_47 * 2.0);
    temp_53 = temp_39 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_54 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_55 = temp_39 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_56 = temp_39 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_57 = sysInitRotateAttr.x;
    temp_58 = sysInitRotateAttr.y;
    temp_59 = sysInitRotateAttr.z;
    temp_60 = fma(temp_53, 0.0 - temp_56, temp_53);
    temp_61 = fma(fma(temp_10 + temp_45, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_62 = temp_39 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_63 = fma(fma(temp_45 + temp_47, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_64 = (0.0 - temp_52 < 0.0 ? 1.0 : 0.0 + (temp_52 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_42 > 0 ? -1 : 0) + 0 - temp_42 >= 0 ? 0 : 1));
    temp_65 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_66 = temp_50;
    temp_67 = intBitsToFloat(temp_46);
    if (!temp_54)
    {
        temp_65 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_68 = fma(temp_56, 0.0 - temp_62, temp_56);
    temp_69 = (0.0 - temp_51 < 0.0 ? 1.0 : 0.0 + (temp_51 > 0.0 ? 1.0 : 0.0)) * float(abs(temp_46));
    temp_70 = (0.0 - temp_40 < 0.0 ? 1.0 : 0.0 + (temp_40 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_43 > 0 ? -1 : 0) + 0 - temp_43 >= 0 ? 0 : 1));
    if (!temp_54)
    {
        temp_66 = 1.0 / temp_65;
    }
    temp_71 = fma(fma(temp_55, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_44, _sysEmitterStaticUniformBlock.data[97].x), temp_68, fma(fma(temp_48, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_49, _sysEmitterStaticUniformBlock.data[96].x), temp_60, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)));
    temp_72 = fma(fma(temp_10 + temp_47, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_73 = sysScaleAttr.w;
    temp_74 = temp_71;
    if (temp_54)
    {
        temp_67 = temp_5;
    }
    temp_75 = temp_67;
    if (!temp_54)
    {
        temp_75 = fma(exp2(temp_50), 0.0 - temp_66, temp_66);
    }
    temp_76 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_77 = fma(temp_45 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_64 * temp_58, -2.0, temp_58));
    temp_78 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_79 = fma(temp_62, _sysEmitterStaticUniformBlock.data[98].x, temp_71);
    temp_80 = fma(temp_62, _sysEmitterStaticUniformBlock.data[98].z, fma(fma(temp_55, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_44, _sysEmitterStaticUniformBlock.data[97].z), temp_68, fma(fma(temp_48, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_49, _sysEmitterStaticUniformBlock.data[96].z), temp_60, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))));
    temp_81 = fma(fma(temp_72 * temp_70, -2.0, temp_72), temp_75, fma(temp_47 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_70 * temp_59, -2.0, temp_59)));
    temp_82 = fma(fma(temp_61 * temp_69, -2.0, temp_61), temp_75, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_69 * temp_57, -2.0, temp_57)));
    temp_83 = fma(fma(temp_63 * temp_64, -2.0, temp_63), temp_75, temp_77);
    temp_84 = temp_77;
    temp_85 = temp_80;
    temp_86 = temp_79;
    temp_87 = temp_78;
    if (temp_76)
    {
        temp_74 = temp_78 * temp_78;
    }
    temp_88 = fma(temp_62, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_55, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_44, _sysEmitterStaticUniformBlock.data[97].y), temp_68, fma(fma(temp_48, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_49, _sysEmitterStaticUniformBlock.data[96].y), temp_60, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_89 = temp_88;
    if (temp_76)
    {
        temp_84 = temp_74 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_90 = temp_88 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    if (temp_76)
    {
        temp_89 = temp_84 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_91 = temp_89;
    if (temp_76)
    {
        temp_85 = temp_84 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_92 = temp_85;
    if (temp_76)
    {
        temp_86 = temp_84 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_93 = temp_86;
    if (!temp_76)
    {
        temp_94 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_95 = (0.0 - fma(temp_94, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_78), 0.0 - temp_94) + temp_78) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_93 = temp_95 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_91 = temp_95 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_92 = temp_95 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_76)
    {
        temp_96 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_87 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_78), 0.0 - temp_96, temp_96);
    }
    temp_97 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + temp_14) * temp_79 * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_98 = cos(temp_82) * cos(temp_83);
    temp_99 = sin(temp_82) * sin(temp_83);
    temp_100 = cos(temp_82) * sin(temp_83);
    temp_101 = temp_80 * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_102 = sin(temp_82) * cos(temp_83);
    temp_103 = fma(fma(temp_87, sysLocalVecAttr.x, temp_93), temp_73, sysLocalPosAttr.x);
    temp_104 = 0.0 + fma(cos(temp_81) * sin(temp_83), temp_101, fma(temp_97, cos(temp_81) * cos(temp_83), temp_90 * 0.0 - sin(temp_81)));
    temp_105 = fma(fma(temp_87, sysLocalVecAttr.y, temp_91), temp_73, sysLocalPosAttr.y);
    temp_106 = 0.0 + fma(fma(sin(temp_81), temp_100, 0.0 - temp_102), temp_101, fma(temp_97, fma(sin(temp_81), temp_98, temp_99), temp_90 * cos(temp_81) * cos(temp_82)));
    temp_107 = fma(fma(temp_87, sysLocalVecAttr.z, temp_92), temp_73, sysLocalPosAttr.z);
    temp_108 = 0.0 + fma(fma(sin(temp_81), temp_99, temp_98), temp_101, fma(temp_97, fma(sin(temp_81), temp_102, 0.0 - temp_100), temp_90 * cos(temp_81) * sin(temp_82)));
    temp_109 = fma(0.0, temp_101, fma(0.0, temp_97, 0.0 * temp_90)) + 1.0;
    temp_110 = fma(fma(temp_107, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_105, _sysEmitterDynamicUniformBlock.data[4].y, temp_103 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_109, fma(temp_108, temp_35, fma(temp_106, temp_29, temp_104 * temp_32)));
    temp_111 = fma(fma(temp_107, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_105, _sysEmitterDynamicUniformBlock.data[5].y, temp_103 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_109, fma(temp_108, temp_36, fma(temp_106, temp_30, temp_104 * temp_25)));
    temp_112 = fma(fma(temp_107, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_105, _sysEmitterDynamicUniformBlock.data[6].y, temp_103 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_109, fma(temp_108, temp_37, fma(temp_106, temp_31, temp_104 * temp_23)));
    gl_Position.x = fma(temp_112, _sysViewUniformBlock.data[8].z, fma(temp_111, _sysViewUniformBlock.data[8].y, temp_110 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_112, _sysViewUniformBlock.data[9].z, fma(temp_111, _sysViewUniformBlock.data[9].y, temp_110 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_112, _sysViewUniformBlock.data[10].z, fma(temp_111, _sysViewUniformBlock.data[10].y, temp_110 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_112, _sysViewUniformBlock.data[11].z, fma(temp_111, _sysViewUniformBlock.data[11].y, temp_110 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_113 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_114 = temp_113 + 0.0 - floor(temp_113);
    }
    else
    {
        temp_114 = temp_5 * (1.0 / temp_6);
    }
    temp_115 = sysTexCoordAttr.x;
    temp_116 = sysTexCoordAttr.y;
    temp_117 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_118 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_119 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_120 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_121 = temp_115;
    temp_122 = temp_115;
    temp_123 = temp_115;
    temp_124 = temp_116;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_121 = 0.0 - temp_115 + 1.0;
    }
    temp_125 = temp_114 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_126 = temp_47 > 0.5;
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_45 > 0.5) ? -1 : 0)) != 0))
    {
        temp_122 = 0.0 - temp_115 + 1.0;
    }
    temp_127 = temp_114 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_128 = 0;
    if (temp_120)
    {
        temp_128 = 1;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !temp_126 ? -1 : 0)) != 0))
    {
        temp_123 = 0.0 - temp_115 + 1.0;
    }
    temp_129 = floatBitsToInt(1.0 / float(uint(temp_117))) + -2;
    temp_130 = floatBitsToInt(1.0 / float(uint(temp_119))) + -2;
    temp_131 = floatBitsToInt(1.0 / float(uint(temp_118))) + -2;
    temp_132 = floatBitsToInt(1.0 / float(uint(abs(temp_117)))) + -2;
    temp_133 = uint(max(trunc(float(0u) * intBitsToFloat(temp_129)), 0.0));
    temp_134 = temp_116;
    temp_135 = temp_116;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_45 > 0.5) ? -1 : 0)) != 0))
    {
        temp_134 = 0.0 - temp_116 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_135 = 0.0 - temp_116 + 1.0;
    }
    temp_136 = floatBitsToInt(1.0 / float(uint(abs(temp_118)))) + -2;
    temp_137 = uint(max(trunc(float(0u) * intBitsToFloat(temp_130)), 0.0));
    temp_138 = uint(max(trunc(float(0u) * intBitsToFloat(temp_131)), 0.0));
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !temp_126 ? -1 : 0)) != 0))
    {
        temp_124 = 0.0 - temp_116 + 1.0;
    }
    temp_139 = uint(max(trunc(intBitsToFloat(temp_132) * float(0u)), 0.0));
    temp_140 = uint(max(trunc(float(0u) * intBitsToFloat(temp_136)), 0.0));
    temp_141 = (temp_117 & 0xFFFF) * (int(temp_133 >> 16)) & 0xFFFF | int(temp_133) << 16;
    temp_142 = temp_128 == 1;
    temp_143 = (temp_118 & 0xFFFF) * (int(temp_138 >> 16)) & 0xFFFF | int(temp_138) << 16;
    temp_144 = (temp_119 & 0xFFFF) * (int(temp_137 >> 16)) & 0xFFFF | int(temp_137) << 16;
    temp_145 = (abs(temp_117) & 0xFFFF) * (int(temp_139 >> 16)) & 0xFFFF | int(temp_139) << 16;
    temp_146 = temp_10;
    temp_147 = temp_45;
    temp_148 = temp_47;
    temp_149 = temp_10;
    temp_150 = temp_45;
    if (temp_142)
    {
        temp_146 = temp_45;
    }
    temp_151 = temp_146;
    temp_152 = temp_146;
    if (temp_142)
    {
        temp_147 = temp_47;
    }
    temp_153 = temp_147;
    temp_154 = temp_147;
    if (temp_142)
    {
        temp_148 = temp_10;
    }
    temp_155 = temp_148;
    temp_156 = temp_148;
    if (temp_142)
    {
        temp_149 = temp_45;
    }
    temp_157 = (abs(temp_118) & 0xFFFF) * (int(temp_140 >> 16)) & 0xFFFF | int(temp_140) << 16;
    temp_158 = temp_149;
    temp_159 = temp_149;
    if (temp_142)
    {
        temp_150 = temp_47;
    }
    temp_160 = temp_150;
    if (!temp_142)
    {
        temp_161 = temp_128 == 2;
        if (temp_161)
        {
            temp_151 = temp_47;
        }
        temp_152 = temp_151;
        if (temp_161)
        {
            temp_153 = temp_10;
        }
        temp_154 = temp_153;
        if (temp_161)
        {
            temp_155 = temp_45;
        }
        temp_156 = temp_155;
        if (temp_161)
        {
            temp_158 = temp_10;
        }
        temp_159 = temp_158;
        if (temp_161)
        {
            temp_160 = temp_45;
        }
    }
    temp_162 = 0;
    if (temp_120)
    {
        temp_162 = 2;
    }
    temp_163 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_164 = temp_162 == 1;
    temp_165 = floatBitsToInt(1.0 / float(uint(abs(temp_119)))) + -2;
    temp_166 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_47, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_167 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_168 = fma(temp_163, temp_134, -0.5);
    temp_169 = temp_10;
    temp_170 = temp_45;
    temp_171 = temp_10;
    temp_172 = temp_45;
    if (temp_164)
    {
        temp_169 = temp_45;
    }
    temp_173 = temp_169;
    temp_174 = temp_169;
    if (temp_164)
    {
        temp_170 = temp_47;
    }
    temp_175 = temp_170;
    temp_176 = temp_170;
    if (temp_164)
    {
        temp_171 = temp_45;
    }
    temp_177 = temp_171;
    temp_178 = temp_171;
    if (temp_164)
    {
        temp_172 = temp_47;
    }
    temp_179 = temp_172;
    if (!temp_164)
    {
        temp_180 = temp_162 == 2;
        if (temp_180)
        {
            temp_173 = temp_47;
        }
        temp_174 = temp_173;
        if (temp_180)
        {
            temp_175 = temp_10;
        }
        temp_176 = temp_175;
        if (temp_180)
        {
            temp_177 = temp_10;
        }
        temp_178 = temp_177;
        if (temp_180)
        {
            temp_179 = temp_45;
        }
    }
    temp_181 = uint(max(trunc(float(0u) * intBitsToFloat(temp_165)), 0.0));
    temp_182 = fma(temp_167, temp_121, -0.5);
    temp_183 = (abs(temp_119) & 0xFFFF) * (int(temp_181 >> 16)) & 0xFFFF | int(temp_181) << 16;
    temp_184 = int(temp_133) + int(uint(max(trunc(intBitsToFloat(temp_129) * float(uint(0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (temp_117 & 0xFFFF) * (int(temp_133) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_185 = int(temp_139) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(abs(temp_117)) >> 16)) * (int(uint(temp_145) >> 16)) << 16) + (abs(temp_117) & 0xFFFF) * (int(temp_139) & 0xFFFF) + (temp_145 << 16)))), 0.0)));
    temp_186 = int(temp_138) + int(uint(max(trunc(intBitsToFloat(temp_131) * float(uint(0 - ((int(uint(temp_118) >> 16)) * (int(uint(temp_143) >> 16)) << 16) + (temp_118 & 0xFFFF) * (int(temp_138) & 0xFFFF) + (temp_143 << 16)))), 0.0)));
    temp_187 = int(temp_140) + int(uint(max(trunc(intBitsToFloat(temp_136) * float(uint(0 - ((int(uint(abs(temp_118)) >> 16)) * (int(uint(temp_157) >> 16)) << 16) + (abs(temp_118) & 0xFFFF) * (int(temp_140) & 0xFFFF) + (temp_157 << 16)))), 0.0)));
    temp_188 = (abs(temp_117) & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_189 = (temp_117 & 0xFFFF) * (int(uint(temp_184) >> 16)) & 0xFFFF | temp_184 << 16;
    temp_190 = (temp_118 & 0xFFFF) * (int(uint(temp_186) >> 16)) & 0xFFFF | temp_186 << 16;
    temp_191 = int(temp_181) + int(uint(max(trunc(intBitsToFloat(temp_165) * float(uint(0 - ((int(uint(abs(temp_119)) >> 16)) * (int(uint(temp_183) >> 16)) << 16) + (abs(temp_119) & 0xFFFF) * (int(temp_181) & 0xFFFF) + (temp_183 << 16)))), 0.0)));
    temp_192 = int(temp_137) + int(uint(max(trunc(intBitsToFloat(temp_130) * float(uint(0 - ((int(uint(temp_119) >> 16)) * (int(uint(temp_144) >> 16)) << 16) + (temp_119 & 0xFFFF) * (int(temp_137) & 0xFFFF) + (temp_144 << 16)))), 0.0)));
    temp_193 = (abs(temp_119) & 0xFFFF) * (int(uint(temp_191) >> 16)) & 0xFFFF | temp_191 << 16;
    temp_194 = (abs(temp_118) & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_195 = (temp_119 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_196 = 0 - temp_186 + ((uint(0 - ((int(uint(temp_118) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (temp_118 & 0xFFFF) * (temp_186 & 0xFFFF) + (temp_190 << 16)) >= uint(temp_118) ? -1 : 0));
    temp_197 = 0 - temp_184 + ((uint(0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_184 & 0xFFFF) + (temp_189 << 16)) >= uint(temp_117) ? -1 : 0));
    temp_198 = 0 - int(uint(temp_118) >> 31);
    temp_199 = (temp_118 & 0xFFFF) * (int(uint(temp_196) >> 16)) & 0xFFFF | temp_196 << 16;
    temp_200 = 0 - temp_192 + ((uint(0 - ((int(uint(temp_119) >> 16)) * (int(uint(temp_195) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_195 << 16)) >= uint(temp_119) ? -1 : 0));
    temp_201 = 0 - int(uint(temp_117) >> 31);
    temp_202 = (temp_117 & 0xFFFF) * (int(uint(temp_197) >> 16)) & 0xFFFF | temp_197 << 16;
    temp_203 = (temp_119 & 0xFFFF) * (int(uint(temp_200) >> 16)) & 0xFFFF | temp_200 << 16;
    temp_204 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_205 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_206 = 0 - int(uint(temp_119) >> 31);
    temp_207 = fma(temp_204, temp_135, -0.5);
    temp_208 = fma(temp_205, temp_123, -0.5);
    temp_209 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[52].x, fma(temp_156, _sysEmitterStaticUniformBlock.data[52].z, _sysEmitterStaticUniformBlock.data[52].z + _sysEmitterStaticUniformBlock.data[52].y));
    temp_210 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_211 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr4.y = _sysEmitterStaticUniformBlock.data[104].x;
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
    out_attr0.w = fma(temp_127, _sysEmitterStaticUniformBlock.data[69].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_114 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_125, 0.0 - temp_127, temp_125), fma(temp_125, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_178, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_210, temp_122, -0.5), fma(temp_210, float(temp_119 < 0 || !(temp_119 == 0) ? ((int(uint(temp_119) >> 16)) * (int(uint(temp_203) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_200 & 0xFFFF) + (temp_203 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_174 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_166), temp_182, 0.0 - temp_168 * sin(temp_166)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].z + _sysEmitterStaticUniformBlock.data[46].x)), fma(temp_167, float(temp_117 < 0 || !(temp_117 == 0) ? ((int(uint(temp_117) >> 16)) * (int(uint(temp_202) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_197 & 0xFFFF) + (temp_202 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_182, sin(temp_166), temp_168 * cos(temp_166)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_45, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_163, 0.0 - float(temp_117 < 0 || !(temp_117 == 0) ? 0 - temp_201 + (temp_185 + 0 - (uint(0 - ((int(uint(abs(temp_117)) >> 16)) * (int(uint(temp_188) >> 16)) << 16) + (abs(temp_117) & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_188 << 16)) >= uint(abs(temp_117)) ? -1 : 0) ^ temp_201) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_45 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_208, cos(temp_209), 0.0 - temp_207 * sin(temp_209)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_159, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_205, float(temp_118 < 0 || !(temp_118 == 0) ? ((int(uint(temp_118) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_118 & 0xFFFF) * (temp_196 & 0xFFFF) + (temp_199 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_152 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_208, sin(temp_209), cos(temp_209) * temp_207), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_160, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].y + _sysEmitterStaticUniformBlock.data[51].w)), 0.0 - fma(temp_204, 0.0 - float(temp_118 < 0 || !(temp_118 == 0) ? 0 - temp_198 + (temp_187 + 0 - (uint(0 - ((int(uint(abs(temp_118)) >> 16)) * (int(uint(temp_194) >> 16)) << 16) + (abs(temp_118) & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_194 << 16)) >= uint(abs(temp_118)) ? -1 : 0) ^ temp_198) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_154 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_211, temp_124, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_179, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), 0.0 - fma(temp_211, 0.0 - float(temp_119 < 0 || !(temp_119 == 0) ? 0 - temp_206 + (temp_191 + 0 - (uint(0 - ((int(uint(abs(temp_119)) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (abs(temp_119) & 0xFFFF) * (temp_191 & 0xFFFF) + (temp_193 << 16)) >= uint(abs(temp_119)) ? -1 : 0) ^ temp_206) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_176 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
