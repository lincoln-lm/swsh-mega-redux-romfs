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

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;

layout (binding = 7, std140) uniform sysEmitterDynamicUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterDynamicUniformBlock;

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;


layout (location = 0) in vec4 sysPosAttr;
layout (location = 1) in vec4 sysTexCoordAttr;
layout (location = 3) in vec4 sysVertexColor0Attr;
layout (location = 4) in vec4 sysLocalPosAttr;
layout (location = 5) in vec4 sysLocalVecAttr;
layout (location = 6) in vec4 sysScaleAttr;
layout (location = 7) in vec4 sysRandomAttr;
layout (location = 8) in vec4 sysInitRotateAttr;

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
    precise float temp_42;
    int temp_43;
    precise float temp_44;
    int temp_45;
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
    int temp_130;
    bool temp_131;
    int temp_132;
    int temp_133;
    uint temp_134;
    int temp_135;
    int temp_136;
    int temp_137;
    int temp_138;
    int temp_139;
    int temp_140;
    int temp_141;
    int temp_142;
    int temp_143;
    int temp_144;
    int temp_145;
    precise float temp_146;
    int temp_147;
    precise float temp_148;
    int temp_149;
    int temp_150;
    int temp_151;
    int temp_152;
    int temp_153;
    int temp_154;
    int temp_155;
    int temp_156;
    int temp_157;
    int temp_158;
    int temp_159;
    int temp_160;
    int temp_161;
    int temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    int temp_166;
    int temp_167;
    uint temp_168;
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
    uint temp_180;
    precise float temp_181;
    int temp_182;
    precise float temp_183;
    uint temp_184;
    precise float temp_185;
    int temp_186;
    precise float temp_187;
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
    uint temp_200;
    uint temp_201;
    int temp_202;
    int temp_203;
    int temp_204;
    int temp_205;
    int temp_206;
    int temp_207;
    precise float temp_208;
    precise float temp_209;
    precise float temp_210;
    precise float temp_211;
    int temp_212;
    int temp_213;
    int temp_214;
    precise float temp_215;
    precise float temp_216;
    precise float temp_217;
    precise float temp_218;
    precise float temp_219;
    precise float temp_220;
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
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_10) > 0.0;
    temp_14 = sqrt(temp_11) > 0.0;
    temp_15 = sqrt(temp_12) > 0.0;
    temp_16 = intBitsToFloat(undef);
    if (temp_13)
    {
        temp_16 = inversesqrt(temp_10);
    }
    temp_17 = temp_16;
    if (!temp_13)
    {
        temp_17 = 0.0;
    }
    temp_18 = intBitsToFloat(undef);
    temp_19 = temp_17;
    if (temp_14)
    {
        temp_18 = inversesqrt(temp_11);
    }
    temp_20 = intBitsToFloat(undef);
    temp_21 = temp_18;
    if (!temp_13)
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
    if (!temp_13)
    {
        temp_24 = 0.0;
    }
    temp_26 = temp_24;
    if (!temp_14)
    {
        temp_21 = 0.0;
    }
    temp_27 = intBitsToFloat(undef);
    temp_28 = temp_21;
    if (!temp_14)
    {
        temp_27 = 0.0;
    }
    temp_29 = intBitsToFloat(undef);
    temp_30 = temp_27;
    if (!temp_14)
    {
        temp_29 = 0.0;
    }
    temp_31 = temp_29;
    if (!temp_15)
    {
        temp_25 = 0.0;
    }
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_25;
    if (!temp_15)
    {
        temp_32 = 0.0;
    }
    temp_34 = clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x;
    temp_35 = temp_32;
    temp_36 = temp_34;
    if (temp_13)
    {
        temp_26 = temp_17 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    if (temp_13)
    {
        temp_23 = temp_17 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    if (temp_14)
    {
        temp_31 = temp_21 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    if (temp_14)
    {
        temp_30 = temp_21 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_37 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_37 = temp_25 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_38 = temp_37;
    if (temp_15)
    {
        temp_35 = temp_25 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    if (temp_13)
    {
        temp_19 = temp_17 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    if (temp_14)
    {
        temp_28 = temp_21 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    if (temp_15)
    {
        temp_33 = temp_25 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    if (!temp_15)
    {
        temp_38 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_39 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_40 = temp_39 + 0.0 - floor(temp_39);
    }
    else
    {
        temp_40 = temp_5 * (1.0 / temp_6);
    }
    temp_41 = sysRandomAttr.y;
    temp_42 = sysRandomAttr.z;
    temp_43 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_44 = floor(temp_9 * 2.0);
    temp_45 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_46 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_47 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_48 = floor(temp_41 * 2.0);
    temp_49 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_50 = floor(temp_42 * 2.0);
    temp_51 = temp_40 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_52 = temp_40 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_53 = fma(temp_51, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_49, _sysEmitterStaticUniformBlock.data[96].x);
    temp_54 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_55 = temp_40 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_56 = sysInitRotateAttr.x;
    temp_57 = sysInitRotateAttr.y;
    temp_58 = sysInitRotateAttr.z;
    temp_59 = temp_40 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_60 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_61 = fma(temp_55, 0.0 - temp_59, temp_55);
    temp_62 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_63 = temp_60;
    temp_64 = temp_53;
    if (!temp_54)
    {
        temp_62 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_65 = temp_40 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_66 = fma(fma(temp_9 + temp_41, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    if (!temp_54)
    {
        temp_63 = 1.0 / temp_62;
    }
    temp_67 = fma(fma(temp_41 + temp_42, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_68 = (0.0 - (temp_48 < 0.0 ? 1.0 : 0.0) + (temp_48 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_43 > 0 ? -1 : 0) + 0 - (temp_43 >= 0 ? 0 : 1)));
    temp_69 = (0.0 - (temp_50 < 0.0 ? 1.0 : 0.0) + (temp_50 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_45 > 0 ? -1 : 0) + 0 - (temp_45 >= 0 ? 0 : 1)));
    temp_70 = (0.0 - (temp_44 < 0.0 ? 1.0 : 0.0) + (temp_44 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_46 > 0 ? -1 : 0) + 0 - (temp_46 >= 0 ? 0 : 1)));
    temp_71 = fma(temp_59, 0.0 - temp_65, temp_59);
    temp_72 = fma(fma(temp_9 + temp_42, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    if (!temp_54)
    {
        temp_64 = fma(exp2(temp_60), 0.0 - temp_63, temp_63);
    }
    temp_73 = temp_64;
    if (temp_54)
    {
        temp_73 = temp_5;
    }
    temp_74 = fma(temp_42 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_70 * temp_58, -2.0, temp_58));
    temp_75 = sysScaleAttr.w;
    temp_76 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_77 = fma(fma(temp_72 * temp_70, -2.0, temp_72), temp_73, temp_74);
    temp_78 = fma(fma(temp_66 * temp_68, -2.0, temp_66), temp_73, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_68 * temp_56, -2.0, temp_56)));
    temp_79 = fma(fma(temp_67 * temp_69, -2.0, temp_67), temp_73, fma(temp_41 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_69 * temp_57, -2.0, temp_57)));
    temp_80 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_81 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_82 = temp_74;
    temp_83 = temp_81;
    temp_84 = temp_80;
    if (temp_76)
    {
        temp_82 = temp_80 * temp_80;
    }
    temp_85 = fma(temp_65, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_52, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_47, _sysEmitterStaticUniformBlock.data[97].y), temp_71, fma(fma(temp_51, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_49, _sysEmitterStaticUniformBlock.data[96].y), temp_61, fma(temp_55, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_86 = temp_82;
    temp_87 = temp_85;
    if (temp_76)
    {
        temp_86 = temp_82 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_88 = temp_85 * temp_81;
    if (temp_76)
    {
        temp_83 = temp_86 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_89 = temp_83;
    if (temp_76)
    {
        temp_36 = temp_86 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_90 = temp_36;
    if (temp_76)
    {
        temp_87 = temp_86 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_91 = temp_87;
    if (!temp_76)
    {
        temp_92 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_93 = (0.0 - fma(temp_92, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_80), 0.0 - temp_92) + temp_80) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_91 = temp_93 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_89 = temp_93 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_90 = temp_93 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_76)
    {
        temp_94 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_84 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_80), 0.0 - temp_94, temp_94);
    }
    temp_95 = temp_34 * fma(temp_65, _sysEmitterStaticUniformBlock.data[98].x, fma(fma(temp_52, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_47, _sysEmitterStaticUniformBlock.data[97].x), temp_71, fma(temp_53, temp_61, fma(temp_55, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_96 = cos(temp_78) * cos(temp_79);
    temp_97 = sin(temp_78) * sin(temp_79);
    temp_98 = fma(temp_65, _sysEmitterStaticUniformBlock.data[98].z, fma(fma(temp_52, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_47, _sysEmitterStaticUniformBlock.data[97].z), temp_71, fma(fma(temp_51, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_49, _sysEmitterStaticUniformBlock.data[96].z), temp_61, fma(temp_55, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_99 = cos(temp_78) * sin(temp_79);
    temp_100 = sin(temp_78) * cos(temp_79);
    temp_101 = fma(fma(temp_84, sysLocalVecAttr.x, temp_91), temp_75, sysLocalPosAttr.x);
    temp_102 = fma(fma(temp_84, sysLocalVecAttr.z, temp_90), temp_75, sysLocalPosAttr.z);
    temp_103 = fma(fma(temp_84, sysLocalVecAttr.y, temp_89), temp_75, sysLocalPosAttr.y);
    temp_104 = 0.0 + fma(cos(temp_77) * sin(temp_79), temp_98, fma(temp_95, cos(temp_77) * cos(temp_79), temp_88 * 0.0 - sin(temp_77)));
    temp_105 = 0.0 + fma(fma(sin(temp_77), temp_99, 0.0 - temp_100), temp_98, fma(temp_95, fma(sin(temp_77), temp_96, temp_97), temp_88 * cos(temp_77) * cos(temp_78)));
    temp_106 = 0.0 + fma(fma(sin(temp_77), temp_97, temp_96), temp_98, fma(temp_95, fma(sin(temp_77), temp_100, 0.0 - temp_99), temp_88 * cos(temp_77) * sin(temp_78)));
    temp_107 = fma(0.0, temp_98, fma(0.0, temp_95, 0.0 * temp_88)) + 1.0;
    temp_108 = fma(fma(temp_102, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_103, _sysEmitterDynamicUniformBlock.data[4].y, temp_101 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_107, fma(temp_106, temp_38, fma(temp_105, temp_31, temp_104 * temp_26)));
    temp_109 = fma(fma(temp_102, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_103, _sysEmitterDynamicUniformBlock.data[5].y, temp_101 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_107, fma(temp_106, temp_35, fma(temp_105, temp_30, temp_104 * temp_23)));
    temp_110 = fma(fma(temp_102, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_103, _sysEmitterDynamicUniformBlock.data[6].y, temp_101 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_107, fma(temp_106, temp_33, fma(temp_105, temp_28, temp_104 * temp_19)));
    temp_111 = fma(temp_110, _sysViewUniformBlock.data[0].z, fma(temp_109, _sysViewUniformBlock.data[0].y, temp_108 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_112 = fma(temp_110, _sysViewUniformBlock.data[1].z, fma(temp_109, _sysViewUniformBlock.data[1].y, temp_108 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_113 = fma(temp_110, _sysViewUniformBlock.data[9].z, fma(temp_109, _sysViewUniformBlock.data[9].y, temp_108 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_114 = fma(temp_110, _sysViewUniformBlock.data[3].z, fma(temp_109, _sysViewUniformBlock.data[3].y, temp_108 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_115 = fma(temp_110, _sysViewUniformBlock.data[2].z, fma(temp_109, _sysViewUniformBlock.data[2].y, temp_108 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_116 = fma(temp_110, _sysViewUniformBlock.data[11].z, fma(temp_109, _sysViewUniformBlock.data[11].y, temp_108 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_117 = fma(temp_110, _sysViewUniformBlock.data[8].z, fma(temp_109, _sysViewUniformBlock.data[8].y, temp_108 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_118 = 0.0 * temp_113;
    temp_119 = fma(temp_114, _sysViewUniformBlock.data[6].w, fma(temp_115, _sysViewUniformBlock.data[6].z, fma(temp_112, _sysViewUniformBlock.data[6].y, temp_111 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_114, _sysViewUniformBlock.data[7].w, fma(temp_115, _sysViewUniformBlock.data[7].z, fma(temp_112, _sysViewUniformBlock.data[7].y, temp_111 * _sysViewUniformBlock.data[7].x)))) * temp_116;
    temp_120 = fma(0.0, temp_117, temp_118);
    gl_Position.x = temp_117;
    gl_Position.y = temp_113;
    gl_Position.z = temp_119;
    gl_Position.w = temp_116;
    out_attr3.x = fma(temp_116, 0.5, fma(0.0, temp_119, fma(temp_117, 0.5, temp_118)));
    out_attr3.y = fma(temp_116, 0.5, fma(0.0, temp_119, fma(0.0, temp_117, temp_113 * -0.5)));
    out_attr3.z = fma(0.0, temp_116, temp_119 + temp_120);
    out_attr3.w = temp_116 + fma(0.0, temp_119, temp_120);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_121 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_122 = temp_121 + 0.0 - floor(temp_121);
    }
    else
    {
        temp_122 = temp_5 * (1.0 / temp_6);
    }
    temp_123 = temp_122 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_124 = temp_122 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_125 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_126 = temp_122 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_127 = fma(temp_124, 0.0 - temp_126, temp_124);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_128 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_129 = temp_128 + 0.0 - floor(temp_128);
    }
    else
    {
        temp_129 = temp_5 * (1.0 / temp_6);
    }
    temp_130 = int(trunc(_sysEmitterStaticUniformBlock.data[17].x));
    temp_131 = temp_130 < 0 || !(temp_130 == 0);
    temp_132 = int(trunc(temp_5 * (1.0 / float(int(trunc(_sysEmitterStaticUniformBlock.data[17].y))))));
    temp_133 = floatBitsToInt(1.0 / float(uint(temp_130))) + -2;
    temp_134 = uint(max(trunc(intBitsToFloat(temp_133) * float(uint(temp_132))), 0.0));
    temp_135 = (temp_130 & 0xFFFF) * (int(temp_134 >> 16)) & 0xFFFF | int(temp_134) << 16;
    temp_136 = int(temp_134) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(temp_132 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_135) >> 16)) << 16) + (temp_130 & 0xFFFF) * (int(temp_134) & 0xFFFF) + (temp_135 << 16)))), 0.0)));
    temp_137 = (temp_130 & 0xFFFF) * (int(uint(temp_136) >> 16)) & 0xFFFF | temp_136 << 16;
    temp_138 = 0 - temp_136 + ((uint(temp_132 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_137) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_136 & 0xFFFF) + (temp_137 << 16)) >= uint(temp_130) ? -1 : 0));
    temp_139 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x2000000;
    temp_140 = (temp_130 & 0xFFFF) * (int(uint(temp_138) >> 16)) & 0xFFFF | temp_138 << 16;
    temp_141 = abs((float(temp_132) >= float(temp_130) ? -1 : 0));
    temp_142 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 32;
    temp_143 = 0 - temp_141 + 1;
    temp_144 = abs(0 - (temp_139 > 0 ? -1 : 0) + 0 - (temp_139 >= 0 ? 0 : 1));
    temp_145 = temp_131 ? temp_132 + ((int(uint(temp_130) >> 16)) * (int(uint(temp_140) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_138 & 0xFFFF) + (temp_140 << 16) : -1;
    temp_146 = 1.0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_146 = 7.34548998;
    }
    temp_147 = (temp_143 & 0xFFFF) * (int(uint(temp_145) >> 16)) & 0xFFFF | temp_145 << 16;
    temp_148 = temp_146 * temp_9;
    temp_149 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 16;
    temp_150 = abs(0 - (temp_142 > 0 ? -1 : 0) + 0 - (temp_142 >= 0 ? 0 : 1));
    temp_151 = temp_130 + -1;
    temp_152 = (temp_141 & 0xFFFF) * (int(uint(temp_151) >> 16)) & 0xFFFF | temp_151 << 16;
    temp_153 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 64;
    temp_154 = abs(0 - (temp_149 > 0 ? -1 : 0) + 0 - (temp_149 >= 0 ? 0 : 1));
    temp_155 = ((int(uint(temp_141) >> 16)) * (int(uint(temp_152) >> 16)) << 16) + (temp_141 & 0xFFFF) * (temp_151 & 0xFFFF) + ((int(uint(temp_143) >> 16)) * (int(uint(temp_147) >> 16)) << 16) + (temp_143 & 0xFFFF) * (temp_145 & 0xFFFF) + (temp_147 << 16) + (temp_152 << 16);
    temp_156 = int(trunc(temp_5 * float(temp_130) * (1.0 / temp_6)));
    temp_157 = int(trunc(float(temp_130) * (temp_148 + 0.0 - floor(temp_148))));
    temp_158 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 128;
    temp_159 = (temp_150 & 0xFFFF) * (int(uint(temp_155) >> 16)) & 0xFFFF | temp_155 << 16;
    temp_160 = abs(0 - (temp_153 > 0 ? -1 : 0) + 0 - (temp_153 >= 0 ? 0 : 1));
    temp_161 = (temp_154 & 0xFFFF) * (int(uint(temp_156) >> 16)) & 0xFFFF | temp_156 << 16;
    temp_162 = (temp_144 & 0xFFFF) * (int(uint(temp_157) >> 16)) & 0xFFFF | temp_157 << 16;
    temp_163 = ((int(uint(temp_144) >> 16)) * (int(uint(temp_162) >> 16)) << 16) + (temp_144 & 0xFFFF) * (temp_157 & 0xFFFF) + temp_132 + (temp_162 << 16);
    temp_164 = (temp_160 & 0xFFFF) * (int(uint(temp_163) >> 16)) & 0xFFFF | temp_163 << 16;
    temp_165 = abs(0 - (temp_158 > 0 ? -1 : 0) + 0 - (temp_158 >= 0 ? 0 : 1));
    temp_166 = (temp_165 & 0xFFFF) * (int(uint(temp_157) >> 16)) & 0xFFFF | temp_157 << 16;
    temp_167 = ((int(uint(temp_165) >> 16)) * (int(uint(temp_166) >> 16)) << 16) + (temp_165 & 0xFFFF) * (temp_157 & 0xFFFF) + ((int(uint(temp_160) >> 16)) * (int(uint(temp_164) >> 16)) << 16) + (temp_160 & 0xFFFF) * (temp_163 & 0xFFFF) + ((int(uint(temp_154) >> 16)) * (int(uint(temp_161) >> 16)) << 16) + (temp_154 & 0xFFFF) * (temp_156 & 0xFFFF) + ((int(uint(temp_150) >> 16)) * (int(uint(temp_159) >> 16)) << 16) + (temp_150 & 0xFFFF) * (temp_155 & 0xFFFF) + (temp_159 << 16) + (temp_161 << 16) + (temp_164 << 16) + (temp_166 << 16);
    temp_168 = uint(max(trunc(intBitsToFloat(temp_133) * float(uint(temp_167))), 0.0));
    temp_169 = (temp_130 & 0xFFFF) * (int(temp_168 >> 16)) & 0xFFFF | int(temp_168) << 16;
    temp_170 = int(temp_168) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(temp_167 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_169) >> 16)) << 16) + (temp_130 & 0xFFFF) * (int(temp_168) & 0xFFFF) + (temp_169 << 16)))), 0.0)));
    temp_171 = (temp_130 & 0xFFFF) * (int(uint(temp_170) >> 16)) & 0xFFFF | temp_170 << 16;
    temp_172 = 0 - temp_170 + ((uint(temp_167 + 0 - ((int(uint(temp_130) >> 16)) * (int(uint(temp_171) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_170 & 0xFFFF) + (temp_171 << 16)) >= uint(temp_130) ? -1 : 0));
    temp_173 = (temp_130 & 0xFFFF) * (int(uint(temp_172) >> 16)) & 0xFFFF | temp_172 << 16;
    temp_174 = temp_131 ? temp_167 + ((int(uint(temp_130) >> 16)) * (int(uint(temp_173) >> 16)) << 16) + (temp_130 & 0xFFFF) * (temp_172 & 0xFFFF) + (temp_173 << 16) : -1;
    temp_175 = temp_174 & 3;
    temp_176 = temp_175 + -1;
    temp_177 = temp_175 + -2;
    temp_178 = temp_175 + -3;
    temp_179 = temp_174 + (temp_174 >> 31 & 3) >> 2 << 4;
    temp_180 = uint(temp_179 + 0x120) >> 2;
    temp_181 = _sysEmitterStaticUniformBlock.data[int(temp_180 >> 2)][int(temp_180) & 3];
    temp_182 = int(temp_180) + 1;
    temp_183 = _sysEmitterStaticUniformBlock.data[int(uint(temp_182) >> 2)][temp_182 & 3];
    temp_184 = uint(temp_179 + 0x128) >> 2;
    temp_185 = _sysEmitterStaticUniformBlock.data[int(temp_184 >> 2)][int(temp_184) & 3];
    temp_186 = int(temp_184) + 1;
    temp_187 = _sysEmitterStaticUniformBlock.data[int(uint(temp_186) >> 2)][temp_186 & 3];
    temp_188 = 0 - abs(0 - (temp_176 > 0 ? -1 : 0) + 0 - (temp_176 >= 0 ? 0 : 1)) + 1;
    temp_189 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_190 = (floatBitsToInt(temp_183) & 0xFFFF) * (int(uint(temp_188) >> 16)) & 0xFFFF | temp_188 << 16;
    temp_191 = 0 - abs(0 - (temp_175 > 0 ? -1 : 0) + 0 - (temp_175 >= 0 ? 0 : 1)) + 1;
    temp_192 = (floatBitsToInt(temp_181) & 0xFFFF) * (int(uint(temp_191) >> 16)) & 0xFFFF | temp_191 << 16;
    temp_193 = 0 - abs(0 - (temp_177 > 0 ? -1 : 0) + 0 - (temp_177 >= 0 ? 0 : 1)) + 1;
    temp_194 = (floatBitsToInt(temp_185) & 0xFFFF) * (int(uint(temp_193) >> 16)) & 0xFFFF | temp_193 << 16;
    temp_195 = 0 - abs(0 - (temp_178 > 0 ? -1 : 0) + 0 - (temp_178 >= 0 ? 0 : 1)) + 1;
    temp_196 = (temp_195 & 0xFFFF) * (int(floatBitsToUint(temp_187) >> 16)) & 0xFFFF | floatBitsToInt(temp_187) << 16;
    temp_197 = ((int(uint(temp_195) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (temp_195 & 0xFFFF) * (floatBitsToInt(temp_187) & 0xFFFF) + ((int(floatBitsToUint(temp_185) >> 16)) * (int(uint(temp_194) >> 16)) << 16) + (floatBitsToInt(temp_185) & 0xFFFF) * (temp_193 & 0xFFFF) + ((int(floatBitsToUint(temp_181) >> 16)) * (int(uint(temp_192) >> 16)) << 16) + (floatBitsToInt(temp_181) & 0xFFFF) * (temp_191 & 0xFFFF) + ((int(floatBitsToUint(temp_183) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (floatBitsToInt(temp_183) & 0xFFFF) * (temp_188 & 0xFFFF) + (temp_190 << 16) + (temp_192 << 16) + (temp_194 << 16) + (temp_196 << 16);
    temp_198 = floatBitsToInt(1.0 / float(uint(temp_189))) + -2;
    temp_199 = floatBitsToInt(1.0 / float(uint(abs(temp_189)))) + -2;
    temp_200 = uint(max(trunc(intBitsToFloat(temp_198) * float(uint(temp_197))), 0.0));
    temp_201 = uint(max(trunc(intBitsToFloat(temp_199) * float(uint(abs(temp_197)))), 0.0));
    temp_202 = (temp_189 & 0xFFFF) * (int(temp_200 >> 16)) & 0xFFFF | int(temp_200) << 16;
    temp_203 = (abs(temp_189) & 0xFFFF) * (int(temp_201 >> 16)) & 0xFFFF | int(temp_201) << 16;
    temp_204 = int(temp_201) + int(uint(max(trunc(intBitsToFloat(temp_199) * float(uint(abs(temp_197) + 0 - ((int(uint(abs(temp_189)) >> 16)) * (int(uint(temp_203) >> 16)) << 16) + (abs(temp_189) & 0xFFFF) * (int(temp_201) & 0xFFFF) + (temp_203 << 16)))), 0.0)));
    temp_205 = (abs(temp_189) & 0xFFFF) * (int(uint(temp_204) >> 16)) & 0xFFFF | temp_204 << 16;
    temp_206 = int(temp_200) + int(uint(max(trunc(intBitsToFloat(temp_198) * float(uint(temp_197 + 0 - ((int(uint(temp_189) >> 16)) * (int(uint(temp_202) >> 16)) << 16) + (temp_189 & 0xFFFF) * (int(temp_200) & 0xFFFF) + (temp_202 << 16)))), 0.0)));
    temp_207 = (temp_189 & 0xFFFF) * (int(uint(temp_206) >> 16)) & 0xFFFF | temp_206 << 16;
    temp_208 = sysTexCoordAttr.x;
    temp_209 = sysTexCoordAttr.y;
    temp_210 = temp_129 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_211 = temp_129 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_212 = 0 - temp_206 + ((uint(temp_197 + 0 - ((int(uint(temp_189) >> 16)) * (int(uint(temp_207) >> 16)) << 16) + (temp_189 & 0xFFFF) * (temp_206 & 0xFFFF) + (temp_207 << 16)) >= uint(temp_189) ? -1 : 0));
    temp_213 = 0 - int((uint(temp_197 ^ temp_189)) >> 31);
    temp_214 = (temp_189 & 0xFFFF) * (int(uint(temp_212) >> 16)) & 0xFFFF | temp_212 << 16;
    temp_215 = temp_209;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_41 > 0.5) ? -1 : 0)) != 0))
    {
        temp_215 = 0.0 - temp_209 + 1.0;
    }
    temp_216 = temp_129 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    out_attr5.z = sysVertexColor0Attr.z;
    out_attr5.y = sysVertexColor0Attr.y;
    out_attr5.x = sysVertexColor0Attr.x;
    temp_217 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_218 = temp_129 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_219 = temp_208;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_219 = 0.0 - temp_208 + 1.0;
    }
    temp_220 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    out_attr5.w = sysVertexColor0Attr.w;
    out_attr0.x = fma(temp_126, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_123, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_125, _sysEmitterStaticUniformBlock.data[60].x), temp_127, fma(temp_124, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_126, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_123, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_125, _sysEmitterStaticUniformBlock.data[60].y), temp_127, fma(temp_124, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_126, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_123, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_125, _sysEmitterStaticUniformBlock.data[60].z), temp_127, fma(temp_124, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_218, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_129 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_216, 0.0 - temp_218, temp_216), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_129 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_211, 0.0 - temp_216, temp_211), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_129 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_211, 0.0 - temp_210, temp_210), fma(temp_210, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_220, temp_219, -0.5), fma(temp_220, float(temp_189 < 0 || !(temp_189 == 0) ? temp_197 + ((int(uint(temp_189) >> 16)) * (int(uint(temp_214) >> 16)) << 16) + (temp_189 & 0xFFFF) * (temp_212 & 0xFFFF) + (temp_214 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_41, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), fma(temp_217, temp_215, -0.5), 0.0 - fma(temp_217, 0.0 - float(temp_189 < 0 || !(temp_189 == 0) ? 0 - temp_213 + (temp_204 + 0 - (uint(abs(temp_197) + 0 - ((int(uint(abs(temp_189)) >> 16)) * (int(uint(temp_205) >> 16)) << 16) + (abs(temp_189) & 0xFFFF) * (temp_204 & 0xFFFF) + (temp_205 << 16)) >= uint(abs(temp_189)) ? -1 : 0) ^ temp_213) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_41 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
