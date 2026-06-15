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
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    int temp_16;
    int temp_17;
    int temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    bool temp_27;
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
    bool temp_48;
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
    precise float temp_115;
    precise float temp_116;
    precise float temp_117;
    precise float temp_118;
    int temp_119;
    precise float temp_120;
    precise float temp_121;
    int temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    int temp_126;
    precise float temp_127;
    uint temp_128;
    int temp_129;
    int temp_130;
    precise float temp_131;
    precise float temp_132;
    int temp_133;
    int temp_134;
    precise float temp_135;
    int temp_136;
    int temp_137;
    int temp_138;
    uint temp_139;
    uint temp_140;
    bool temp_141;
    uint temp_142;
    uint temp_143;
    uint temp_144;
    int temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    precise float temp_151;
    precise float temp_152;
    int temp_153;
    precise float temp_154;
    precise float temp_155;
    precise float temp_156;
    bool temp_157;
    int temp_158;
    int temp_159;
    bool temp_160;
    int temp_161;
    int temp_162;
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
    bool temp_175;
    precise float temp_176;
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
    temp_12 = sysRandomAttr.y;
    temp_13 = sysRandomAttr.z;
    temp_14 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_15 = floor(temp_9 * 2.0);
    temp_16 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_17 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_18 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_19 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_20 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[98].w + _sysEmitterStaticUniformBlock.data[99].w);
    temp_21 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_22 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_23 = floor(temp_12 * 2.0);
    temp_24 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[98].w;
    temp_25 = fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_14, _sysEmitterStaticUniformBlock.data[96].x);
    temp_26 = floor(temp_13 * 2.0);
    temp_27 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_28 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_29 = temp_11 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_30 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_31 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_32 = temp_25;
    if (!temp_27)
    {
        temp_31 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_33 = intBitsToFloat(undef);
    if (!temp_27)
    {
        temp_33 = 1.0 / temp_31;
    }
    temp_34 = exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w)));
    temp_35 = sysScaleAttr.w;
    temp_36 = fma(temp_28, 0.0 - temp_30, temp_28);
    temp_37 = fma(fma(temp_9 + temp_12, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_38 = fma(fma(temp_12 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_39 = fma(fma(temp_9 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_40 = sysInitRotateAttr.x;
    temp_41 = sysInitRotateAttr.y;
    temp_42 = sysInitRotateAttr.z;
    temp_43 = temp_11 >= _sysEmitterStaticUniformBlock.data[99].w ? 1.0 : 0.0;
    temp_44 = fma(temp_30, 0.0 - temp_29, temp_30);
    temp_45 = temp_34;
    if (temp_27)
    {
        temp_32 = temp_5;
    }
    temp_46 = temp_32;
    if (!temp_27)
    {
        temp_46 = fma(temp_34, 0.0 - temp_33, temp_33);
    }
    temp_47 = fma(temp_29, 0.0 - temp_43, temp_29);
    temp_48 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_49 = (0.0 - temp_23 < 0.0 ? 1.0 : 0.0 + (temp_23 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - temp_16 >= 0 ? 0 : 1));
    temp_50 = (0.0 - temp_15 < 0.0 ? 1.0 : 0.0 + (temp_15 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_18 > 0 ? -1 : 0) + 0 - temp_18 >= 0 ? 0 : 1));
    temp_51 = fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_19, temp_22, _sysEmitterStaticUniformBlock.data[97].x), temp_44, fma(temp_25, temp_36, fma(temp_28, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)));
    temp_52 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_53 = (0.0 - temp_26 < 0.0 ? 1.0 : 0.0 + (temp_26 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_17 > 0 ? -1 : 0) + 0 - temp_17 >= 0 ? 0 : 1));
    temp_54 = temp_51;
    temp_55 = temp_47;
    temp_56 = temp_52;
    if (temp_48)
    {
        temp_54 = temp_52 * temp_52;
    }
    temp_57 = temp_53 * temp_41;
    temp_58 = temp_54;
    temp_59 = temp_57;
    if (temp_48)
    {
        temp_58 = temp_54 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_48)
    {
        temp_55 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_60 = temp_55;
    if (temp_48)
    {
        temp_59 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_61 = temp_59;
    if (temp_48)
    {
        temp_45 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_62 = temp_45;
    if (!temp_48)
    {
        temp_63 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_64 = (temp_52 + 0.0 - fma(temp_63, exp2(temp_52 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_63)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_60 = temp_64 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_61 = temp_64 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_62 = temp_64 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_48)
    {
        temp_65 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_56 = fma(exp2(temp_52 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_65, temp_65);
    }
    temp_66 = fma(fma(temp_39 * temp_50, -2.0, temp_39), temp_46, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_50 * temp_42, -2.0, temp_42)));
    temp_67 = fma(fma(temp_37 * temp_49, -2.0, temp_37), temp_46, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_49 * temp_40, -2.0, temp_40)));
    temp_68 = fma(fma(temp_38 * temp_53, -2.0, temp_38), temp_46, fma(temp_12 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_57, -2.0, temp_41)));
    temp_69 = fma(fma(temp_56, sysLocalVecAttr.x, temp_60), temp_35, sysLocalPosAttr.x);
    temp_70 = fma(fma(temp_56, sysLocalVecAttr.y, temp_61), temp_35, sysLocalPosAttr.y);
    temp_71 = fma(fma(temp_56, sysLocalVecAttr.z, temp_62), temp_35, sysLocalPosAttr.z);
    temp_72 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_43, _sysEmitterStaticUniformBlock.data[99].x, fma(fma(temp_24, (0.0 - _sysEmitterStaticUniformBlock.data[98].x + _sysEmitterStaticUniformBlock.data[99].x) * temp_20, _sysEmitterStaticUniformBlock.data[98].x), temp_47, temp_51)) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_73 = fma(temp_43, _sysEmitterStaticUniformBlock.data[99].y, fma(fma(temp_24, (0.0 - _sysEmitterStaticUniformBlock.data[98].y + _sysEmitterStaticUniformBlock.data[99].y) * temp_20, _sysEmitterStaticUniformBlock.data[98].y), temp_47, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_19, temp_22, _sysEmitterStaticUniformBlock.data[97].y), temp_44, fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_14, _sysEmitterStaticUniformBlock.data[96].y), temp_36, fma(temp_28, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_74 = fma(temp_43, _sysEmitterStaticUniformBlock.data[99].z, fma(fma(temp_24, (0.0 - _sysEmitterStaticUniformBlock.data[98].z + _sysEmitterStaticUniformBlock.data[99].z) * temp_20, _sysEmitterStaticUniformBlock.data[98].z), temp_47, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_19, temp_22, _sysEmitterStaticUniformBlock.data[97].z), temp_44, fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_14, _sysEmitterStaticUniformBlock.data[96].z), temp_36, fma(temp_28, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_75 = cos(temp_66) * sin(temp_67);
    temp_76 = sin(temp_68) * sin(temp_67);
    temp_77 = cos(temp_68) * sin(temp_67);
    temp_78 = cos(temp_67) * cos(temp_68);
    temp_79 = cos(temp_66) * cos(temp_67);
    temp_80 = cos(temp_67) * sin(temp_68);
    temp_81 = cos(temp_66) * sin(temp_68);
    temp_82 = cos(temp_66) * cos(temp_68);
    temp_83 = fma(sin(temp_66), temp_78, temp_76);
    temp_84 = fma(sin(temp_66), temp_76, temp_78);
    temp_85 = fma(sin(temp_66), temp_77, 0.0 - temp_80);
    temp_86 = fma(sin(temp_66), temp_80, 0.0 - temp_77);
    temp_87 = sysNormalAttr.x;
    temp_88 = sysNormalAttr.y;
    temp_89 = sysNormalAttr.z;
    temp_90 = fma(temp_81, temp_74, fma(temp_82, temp_72, sin(temp_66) * 0.0 - temp_73));
    temp_91 = fma(temp_86, temp_74, fma(temp_83, temp_72, temp_79 * temp_73));
    temp_92 = fma(temp_84, temp_74, fma(temp_85, temp_72, temp_75 * temp_73));
    temp_93 = fma(temp_71, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_70, _sysEmitterDynamicUniformBlock.data[4].y, temp_69 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_92, _sysViewUniformBlock.data[12].z, fma(temp_91, _sysViewUniformBlock.data[12].y, temp_90 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w;
    temp_94 = fma(temp_71, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_70, _sysEmitterDynamicUniformBlock.data[5].y, temp_69 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_92, _sysViewUniformBlock.data[13].z, fma(temp_91, _sysViewUniformBlock.data[13].y, temp_90 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w;
    temp_95 = fma(temp_71, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_70, _sysEmitterDynamicUniformBlock.data[6].y, temp_69 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_92, _sysViewUniformBlock.data[14].z, fma(temp_91, _sysViewUniformBlock.data[14].y, temp_90 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w;
    gl_Position.x = fma(temp_95, _sysViewUniformBlock.data[8].z, fma(temp_94, _sysViewUniformBlock.data[8].y, temp_93 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_95, _sysViewUniformBlock.data[9].z, fma(temp_94, _sysViewUniformBlock.data[9].y, temp_93 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_95, _sysViewUniformBlock.data[10].z, fma(temp_94, _sysViewUniformBlock.data[10].y, temp_93 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_95, _sysViewUniformBlock.data[11].z, fma(temp_94, _sysViewUniformBlock.data[11].y, temp_93 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_96 = temp_93 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_97 = temp_94 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_98 = temp_95 + 0.0 - _sysViewUniformBlock.data[17].z;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_99 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_100 = temp_99 + 0.0 - floor(temp_99);
    }
    else
    {
        temp_100 = temp_5 * (1.0 / temp_6);
    }
    temp_101 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_102 = temp_100 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_103 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_104 = temp_100 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_105 = fma(temp_102, 0.0 - temp_104, temp_102);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_106 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
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
    temp_112 = inversesqrt(fma(temp_98, temp_98, fma(temp_97, temp_97, temp_96 * temp_96)));
    temp_113 = temp_5 * (1.0 / temp_6);
    temp_114 = temp_109;
    temp_115 = temp_109;
    temp_116 = temp_109;
    temp_117 = temp_110;
    temp_118 = temp_9;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_114 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_115 = 0.0 - temp_109 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_116 = 0.0 - temp_109 + 1.0;
    }
    temp_119 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_120 = temp_113 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_121 = temp_113 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_122 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_123 = temp_107 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_124 = temp_107 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_125 = temp_113 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_126 = floatBitsToInt(1.0 / float(uint(temp_111))) + -2;
    temp_127 = temp_113 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_128 = uint(max(trunc(float(0u) * intBitsToFloat(temp_126)), 0.0));
    temp_129 = 0;
    if (temp_108)
    {
        temp_129 = 1;
    }
    temp_130 = (temp_111 & 0xFFFF) * (int(temp_128 >> 16)) & 0xFFFF | int(temp_128) << 16;
    temp_131 = temp_110;
    temp_132 = temp_110;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_131 = 0.0 - temp_110 + 1.0;
    }
    temp_133 = floatBitsToInt(1.0 / float(uint(temp_119))) + -2;
    temp_134 = floatBitsToInt(1.0 / float(uint(temp_122))) + -2;
    temp_135 = temp_113 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_132 = 0.0 - temp_110 + 1.0;
    }
    temp_136 = floatBitsToInt(1.0 / float(uint(abs(temp_111)))) + -2;
    temp_137 = floatBitsToInt(1.0 / float(uint(abs(temp_122)))) + -2;
    temp_138 = floatBitsToInt(1.0 / float(uint(abs(temp_119)))) + -2;
    temp_139 = uint(max(trunc(float(0u) * intBitsToFloat(temp_134)), 0.0));
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_117 = 0.0 - temp_110 + 1.0;
    }
    temp_140 = uint(max(trunc(float(0u) * intBitsToFloat(temp_133)), 0.0));
    temp_141 = temp_129 == 1;
    temp_142 = uint(max(trunc(intBitsToFloat(temp_136) * float(0u)), 0.0));
    temp_143 = uint(max(trunc(float(0u) * intBitsToFloat(temp_137)), 0.0));
    temp_144 = uint(max(trunc(float(0u) * intBitsToFloat(temp_138)), 0.0));
    temp_145 = (temp_122 & 0xFFFF) * (int(temp_139 >> 16)) & 0xFFFF | int(temp_139) << 16;
    temp_146 = temp_12;
    temp_147 = temp_9;
    temp_148 = temp_12;
    if (temp_141)
    {
        temp_118 = temp_12;
    }
    temp_149 = temp_118;
    temp_150 = temp_118;
    if (temp_141)
    {
        temp_146 = temp_13;
    }
    temp_151 = temp_146;
    temp_152 = temp_146;
    if (temp_141)
    {
        temp_147 = temp_12;
    }
    temp_153 = (temp_119 & 0xFFFF) * (int(temp_140 >> 16)) & 0xFFFF | int(temp_140) << 16;
    temp_154 = temp_147;
    temp_155 = temp_147;
    if (temp_141)
    {
        temp_148 = temp_13;
    }
    temp_156 = temp_148;
    if (!temp_141)
    {
        temp_157 = temp_129 == 2;
        if (temp_157)
        {
            temp_149 = temp_13;
        }
        temp_150 = temp_149;
        if (temp_157)
        {
            temp_151 = temp_9;
        }
        temp_152 = temp_151;
        if (temp_157)
        {
            temp_154 = temp_9;
        }
        temp_155 = temp_154;
        if (temp_157)
        {
            temp_156 = temp_12;
        }
    }
    temp_158 = 0;
    if (temp_108)
    {
        temp_158 = 2;
    }
    temp_159 = (abs(temp_119) & 0xFFFF) * (int(temp_144 >> 16)) & 0xFFFF | int(temp_144) << 16;
    temp_160 = temp_158 == 1;
    temp_161 = (abs(temp_111) & 0xFFFF) * (int(temp_142 >> 16)) & 0xFFFF | int(temp_142) << 16;
    temp_162 = (abs(temp_122) & 0xFFFF) * (int(temp_143 >> 16)) & 0xFFFF | int(temp_143) << 16;
    temp_163 = temp_113 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_164 = temp_9;
    temp_165 = temp_12;
    temp_166 = temp_9;
    temp_167 = temp_12;
    if (temp_160)
    {
        temp_164 = temp_12;
    }
    temp_168 = temp_164;
    temp_169 = temp_164;
    if (temp_160)
    {
        temp_165 = temp_13;
    }
    temp_170 = temp_165;
    temp_171 = temp_165;
    if (temp_160)
    {
        temp_166 = temp_12;
    }
    temp_172 = temp_166;
    temp_173 = temp_166;
    if (temp_160)
    {
        temp_167 = temp_13;
    }
    temp_174 = temp_167;
    if (!temp_160)
    {
        temp_175 = temp_158 == 2;
        if (temp_175)
        {
            temp_168 = temp_13;
        }
        temp_169 = temp_168;
        if (temp_175)
        {
            temp_170 = temp_9;
        }
        temp_171 = temp_170;
        if (temp_175)
        {
            temp_172 = temp_9;
        }
        temp_173 = temp_172;
        if (temp_175)
        {
            temp_174 = temp_12;
        }
    }
    temp_176 = clamp((abs(fma(0.0 + fma(fma(temp_84, _sysViewUniformBlock.data[14].z, fma(temp_81, _sysViewUniformBlock.data[14].x, temp_86 * _sysViewUniformBlock.data[14].y)), temp_89, fma(fma(temp_85, _sysViewUniformBlock.data[14].z, fma(temp_82, _sysViewUniformBlock.data[14].x, temp_83 * _sysViewUniformBlock.data[14].y)), temp_87, fma(temp_75, _sysViewUniformBlock.data[14].z, fma(sin(temp_66), 0.0 - _sysViewUniformBlock.data[14].x, temp_79 * _sysViewUniformBlock.data[14].y)) * temp_88)), temp_98 * temp_112, fma(0.0 + fma(fma(temp_84, _sysViewUniformBlock.data[13].z, fma(temp_81, _sysViewUniformBlock.data[13].x, temp_86 * _sysViewUniformBlock.data[13].y)), temp_89, fma(fma(temp_85, _sysViewUniformBlock.data[13].z, fma(temp_82, _sysViewUniformBlock.data[13].x, temp_83 * _sysViewUniformBlock.data[13].y)), temp_87, fma(temp_75, _sysViewUniformBlock.data[13].z, fma(sin(temp_66), 0.0 - _sysViewUniformBlock.data[13].x, temp_79 * _sysViewUniformBlock.data[13].y)) * temp_88)), temp_97 * temp_112, (0.0 + fma(fma(temp_84, _sysViewUniformBlock.data[12].z, fma(temp_81, _sysViewUniformBlock.data[12].x, temp_86 * _sysViewUniformBlock.data[12].y)), temp_89, fma(fma(temp_85, _sysViewUniformBlock.data[12].z, fma(temp_82, _sysViewUniformBlock.data[12].x, temp_83 * _sysViewUniformBlock.data[12].y)), temp_87, fma(temp_75, _sysViewUniformBlock.data[12].z, fma(sin(temp_66), 0.0 - _sysViewUniformBlock.data[12].x, temp_79 * _sysViewUniformBlock.data[12].y)) * temp_88))) * temp_96 * temp_112))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_177 = temp_113 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_178 = temp_113 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_179 = int(temp_128) + int(uint(max(trunc(intBitsToFloat(temp_126) * float(uint(0 - ((int(uint(temp_111) >> 16)) * (int(uint(temp_130) >> 16)) << 16) + (temp_111 & 0xFFFF) * (int(temp_128) & 0xFFFF) + (temp_130 << 16)))), 0.0)));
    temp_180 = int(temp_142) + int(uint(max(trunc(intBitsToFloat(temp_136) * float(uint(0 - ((int(uint(abs(temp_111)) >> 16)) * (int(uint(temp_161) >> 16)) << 16) + (abs(temp_111) & 0xFFFF) * (int(temp_142) & 0xFFFF) + (temp_161 << 16)))), 0.0)));
    temp_181 = (abs(temp_111) & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_182 = int(temp_140) + int(uint(max(trunc(intBitsToFloat(temp_133) * float(uint(0 - ((int(uint(temp_119) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (temp_119 & 0xFFFF) * (int(temp_140) & 0xFFFF) + (temp_153 << 16)))), 0.0)));
    temp_183 = (temp_111 & 0xFFFF) * (int(uint(temp_179) >> 16)) & 0xFFFF | temp_179 << 16;
    temp_184 = int(temp_139) + int(uint(max(trunc(intBitsToFloat(temp_134) * float(uint(0 - ((int(uint(temp_122) >> 16)) * (int(uint(temp_145) >> 16)) << 16) + (temp_122 & 0xFFFF) * (int(temp_139) & 0xFFFF) + (temp_145 << 16)))), 0.0)));
    temp_185 = int(temp_144) + int(uint(max(trunc(intBitsToFloat(temp_138) * float(uint(0 - ((int(uint(abs(temp_119)) >> 16)) * (int(uint(temp_159) >> 16)) << 16) + (abs(temp_119) & 0xFFFF) * (int(temp_144) & 0xFFFF) + (temp_159 << 16)))), 0.0)));
    temp_186 = (temp_119 & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_187 = int(temp_143) + int(uint(max(trunc(intBitsToFloat(temp_137) * float(uint(0 - ((int(uint(abs(temp_122)) >> 16)) * (int(uint(temp_162) >> 16)) << 16) + (abs(temp_122) & 0xFFFF) * (int(temp_143) & 0xFFFF) + (temp_162 << 16)))), 0.0)));
    temp_188 = (temp_122 & 0xFFFF) * (int(uint(temp_184) >> 16)) & 0xFFFF | temp_184 << 16;
    temp_189 = (abs(temp_119) & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_190 = (abs(temp_122) & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_191 = 0 - temp_179 + ((uint(0 - ((int(uint(temp_111) >> 16)) * (int(uint(temp_183) >> 16)) << 16) + (temp_111 & 0xFFFF) * (temp_179 & 0xFFFF) + (temp_183 << 16)) >= uint(temp_111) ? -1 : 0));
    temp_192 = 0 - temp_182 + ((uint(0 - ((int(uint(temp_119) >> 16)) * (int(uint(temp_186) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_186 << 16)) >= uint(temp_119) ? -1 : 0));
    temp_193 = (temp_111 & 0xFFFF) * (int(uint(temp_191) >> 16)) & 0xFFFF | temp_191 << 16;
    temp_194 = 0 - temp_184 + ((uint(0 - ((int(uint(temp_122) >> 16)) * (int(uint(temp_188) >> 16)) << 16) + (temp_122 & 0xFFFF) * (temp_184 & 0xFFFF) + (temp_188 << 16)) >= uint(temp_122) ? -1 : 0));
    out_attr3.y = fma(temp_178, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_177, 0.0 - temp_178, temp_177), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_163, 0.0 - temp_177, temp_163), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_135, 0.0 - temp_163, temp_135), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_127, 0.0 - temp_135, temp_127), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_125, 0.0 - temp_127, temp_125), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_121, 0.0 - temp_125, temp_121), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_113 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_121, 0.0 - temp_120, temp_120), fma(temp_120, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    temp_195 = 0 - int(uint(temp_111) >> 31);
    temp_196 = (temp_122 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_197 = 0 - int(uint(temp_119) >> 31);
    temp_198 = (temp_119 & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_199 = 0 - int(uint(temp_122) >> 31);
    temp_200 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_201 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_204 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_205 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr0.x = fma(temp_104, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_101, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_103, _sysEmitterStaticUniformBlock.data[60].x), temp_105, fma(temp_102, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_104, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_101, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_103, _sysEmitterStaticUniformBlock.data[60].y), temp_105, fma(temp_102, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_104, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_101, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_103, _sysEmitterStaticUniformBlock.data[60].z), temp_105, fma(temp_102, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_124, _sysEmitterStaticUniformBlock.data[69].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_107 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_123, 0.0 - temp_124, temp_123), fma(temp_123, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = fma(temp_176, -2.0, 3.0) * temp_176 * temp_176 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(fma(temp_200, temp_114, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_200, float(temp_111 < 0 || !(temp_111 == 0) ? ((int(uint(temp_111) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_111 & 0xFFFF) * (temp_191 & 0xFFFF) + (temp_193 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr1.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_12, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_203, temp_131, -0.5), 0.0 - fma(temp_203, 0.0 - float(temp_111 < 0 || !(temp_111 == 0) ? 0 - temp_195 + (temp_180 + 0 - (uint(0 - ((int(uint(abs(temp_111)) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (abs(temp_111) & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_181 << 16)) >= uint(abs(temp_111)) ? -1 : 0) ^ temp_195) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_12 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr1.z = fma(fma(temp_202, temp_115, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_155, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_202, float(temp_122 < 0 || !(temp_122 == 0) ? ((int(uint(temp_122) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (temp_122 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_196 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_150 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr1.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_156, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_204, temp_132, -0.5), 0.0 - fma(temp_204, 0.0 - float(temp_122 < 0 || !(temp_122 == 0) ? 0 - temp_199 + (temp_187 + 0 - (uint(0 - ((int(uint(abs(temp_122)) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (abs(temp_122) & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_190 << 16)) >= uint(abs(temp_122)) ? -1 : 0) ^ temp_199) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_152 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_173, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_201, temp_116, -0.5), fma(temp_201, float(temp_119 < 0 || !(temp_119 == 0) ? ((int(uint(temp_119) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_119 & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_198 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_169 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_174, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_205, temp_117, -0.5), 0.0 - fma(temp_205, 0.0 - float(temp_119 < 0 || !(temp_119 == 0) ? 0 - temp_197 + (temp_185 + 0 - (uint(0 - ((int(uint(abs(temp_119)) >> 16)) * (int(uint(temp_189) >> 16)) << 16) + (abs(temp_119) & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_189 << 16)) >= uint(abs(temp_119)) ? -1 : 0) ^ temp_197) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_171 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
