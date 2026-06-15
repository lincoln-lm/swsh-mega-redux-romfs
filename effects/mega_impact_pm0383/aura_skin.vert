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
    precise float temp_48;
    bool temp_49;
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
    precise float temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    precise float temp_112;
    bool temp_113;
    precise float temp_114;
    precise float temp_115;
    precise float temp_116;
    precise float temp_117;
    precise float temp_118;
    precise float temp_119;
    precise float temp_120;
    precise float temp_121;
    precise float temp_122;
    int temp_123;
    int temp_124;
    int temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    int temp_132;
    precise float temp_133;
    uint temp_134;
    precise float temp_135;
    int temp_136;
    precise float temp_137;
    bool temp_138;
    int temp_139;
    int temp_140;
    int temp_141;
    int temp_142;
    int temp_143;
    uint temp_144;
    uint temp_145;
    uint temp_146;
    uint temp_147;
    uint temp_148;
    int temp_149;
    precise float temp_150;
    precise float temp_151;
    precise float temp_152;
    precise float temp_153;
    precise float temp_154;
    int temp_155;
    precise float temp_156;
    precise float temp_157;
    precise float temp_158;
    precise float temp_159;
    int temp_160;
    precise float temp_161;
    precise float temp_162;
    bool temp_163;
    int temp_164;
    int temp_165;
    bool temp_166;
    int temp_167;
    int temp_168;
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
    precise float temp_180;
    precise float temp_181;
    bool temp_182;
    precise float temp_183;
    precise float temp_184;
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
    int temp_204;
    int temp_205;
    precise float temp_206;
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
    temp_28 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_29 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_30 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_31 = temp_25;
    if (!temp_27)
    {
        temp_30 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_32 = intBitsToFloat(undef);
    if (!temp_27)
    {
        temp_32 = 1.0 / temp_30;
    }
    temp_33 = fma(temp_29, 0.0 - temp_28, temp_29);
    temp_34 = sysScaleAttr.w;
    temp_35 = temp_11 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_36 = fma(fma(temp_9 + temp_12, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_37 = fma(fma(temp_12 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_38 = fma(fma(temp_9 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_39 = fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_14, _sysEmitterStaticUniformBlock.data[96].y), temp_33, fma(temp_29, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y));
    temp_40 = sysInitRotateAttr.x;
    temp_41 = sysInitRotateAttr.y;
    temp_42 = sysInitRotateAttr.z;
    temp_43 = temp_11 >= _sysEmitterStaticUniformBlock.data[99].w ? 1.0 : 0.0;
    temp_44 = fma(temp_28, 0.0 - temp_35, temp_28);
    temp_45 = temp_39;
    if (temp_27)
    {
        temp_31 = temp_5;
    }
    temp_46 = temp_31;
    if (!temp_27)
    {
        temp_46 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_32, temp_32);
    }
    temp_47 = (0.0 - temp_23 < 0.0 ? 1.0 : 0.0 + (temp_23 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - temp_16 >= 0 ? 0 : 1));
    temp_48 = fma(temp_35, 0.0 - temp_43, temp_35);
    temp_49 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_50 = (0.0 - temp_26 < 0.0 ? 1.0 : 0.0 + (temp_26 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_17 > 0 ? -1 : 0) + 0 - temp_17 >= 0 ? 0 : 1));
    temp_51 = (0.0 - temp_15 < 0.0 ? 1.0 : 0.0 + (temp_15 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_18 > 0 ? -1 : 0) + 0 - temp_18 >= 0 ? 0 : 1));
    temp_52 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_53 = temp_47 * temp_40;
    temp_54 = temp_53;
    temp_55 = temp_48;
    temp_56 = temp_52;
    if (temp_49)
    {
        temp_45 = temp_52 * temp_52;
    }
    temp_57 = temp_50 * temp_41;
    temp_58 = temp_45;
    temp_59 = temp_57;
    if (temp_49)
    {
        temp_58 = temp_45 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_49)
    {
        temp_54 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_60 = temp_54;
    if (temp_49)
    {
        temp_59 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_61 = temp_59;
    if (temp_49)
    {
        temp_55 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_62 = temp_55;
    if (!temp_49)
    {
        temp_63 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_64 = (temp_52 + 0.0 - fma(temp_63, exp2(temp_52 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_63)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_60 = temp_64 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_62 = temp_64 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_61 = temp_64 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    if (!temp_49)
    {
        temp_65 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_56 = fma(exp2(temp_52 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_65, temp_65);
    }
    temp_66 = fma(fma(temp_36 * temp_47, -2.0, temp_36), temp_46, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_53, -2.0, temp_40)));
    temp_67 = fma(fma(temp_37 * temp_50, -2.0, temp_37), temp_46, fma(temp_12 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_57, -2.0, temp_41)));
    temp_68 = fma(fma(temp_38 * temp_51, -2.0, temp_38), temp_46, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_51 * temp_42, -2.0, temp_42)));
    temp_69 = fma(fma(temp_56, sysLocalVecAttr.x, temp_60), temp_34, sysLocalPosAttr.x);
    temp_70 = fma(fma(temp_56, sysLocalVecAttr.z, temp_62), temp_34, sysLocalPosAttr.z);
    temp_71 = fma(fma(temp_56, sysLocalVecAttr.y, temp_61), temp_34, sysLocalPosAttr.y);
    temp_72 = fma(temp_43, _sysEmitterStaticUniformBlock.data[99].y, fma(fma(temp_24, (0.0 - _sysEmitterStaticUniformBlock.data[98].y + _sysEmitterStaticUniformBlock.data[99].y) * temp_20, _sysEmitterStaticUniformBlock.data[98].y), temp_48, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_19, temp_22, _sysEmitterStaticUniformBlock.data[97].y), temp_44, temp_39))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_73 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_43, _sysEmitterStaticUniformBlock.data[99].x, fma(fma(temp_24, (0.0 - _sysEmitterStaticUniformBlock.data[98].x + _sysEmitterStaticUniformBlock.data[99].x) * temp_20, _sysEmitterStaticUniformBlock.data[98].x), temp_48, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_19, temp_22, _sysEmitterStaticUniformBlock.data[97].x), temp_44, fma(temp_25, temp_33, fma(temp_29, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_74 = fma(temp_43, _sysEmitterStaticUniformBlock.data[99].z, fma(fma(temp_24, (0.0 - _sysEmitterStaticUniformBlock.data[98].z + _sysEmitterStaticUniformBlock.data[99].z) * temp_20, _sysEmitterStaticUniformBlock.data[98].z), temp_48, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_19, temp_22, _sysEmitterStaticUniformBlock.data[97].z), temp_44, fma(fma(temp_21, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_14, _sysEmitterStaticUniformBlock.data[96].z), temp_33, fma(temp_29, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_75 = sin(temp_67) * sin(temp_66);
    temp_76 = cos(temp_66) * cos(temp_67);
    temp_77 = cos(temp_68) * cos(temp_66);
    temp_78 = cos(temp_67) * sin(temp_66);
    temp_79 = cos(temp_68) * cos(temp_67);
    temp_80 = cos(temp_66) * sin(temp_67);
    temp_81 = fma(sin(temp_68), temp_76, temp_75);
    temp_82 = fma(sin(temp_68), temp_75, temp_76);
    temp_83 = cos(temp_68) * sin(temp_66);
    temp_84 = cos(temp_68) * sin(temp_67);
    temp_85 = fma(sin(temp_68), temp_78, 0.0 - temp_80);
    temp_86 = fma(sin(temp_68), temp_80, 0.0 - temp_78);
    temp_87 = sysNormalAttr.x;
    temp_88 = sysNormalAttr.y;
    temp_89 = sysNormalAttr.z;
    temp_90 = fma(temp_86, temp_74, fma(temp_81, temp_73, temp_77 * temp_72));
    temp_91 = fma(temp_70, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_71, _sysEmitterDynamicUniformBlock.data[4].y, temp_69 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_92 = fma(temp_84, temp_74, fma(temp_79, temp_73, sin(temp_68) * 0.0 - temp_72));
    temp_93 = fma(temp_82, temp_74, fma(temp_85, temp_73, temp_83 * temp_72));
    temp_94 = fma(temp_70, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_71, _sysEmitterDynamicUniformBlock.data[5].y, temp_69 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_95 = fma(temp_70, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_71, _sysEmitterDynamicUniformBlock.data[6].y, temp_69 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_96 = fma(temp_95, _sysViewUniformBlock.data[11].z, fma(temp_94, _sysViewUniformBlock.data[11].y, temp_91 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_97 = fma(temp_95, _sysViewUniformBlock.data[10].z, fma(temp_94, _sysViewUniformBlock.data[10].y, temp_91 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_98 = temp_91 + fma(temp_93, _sysViewUniformBlock.data[12].z, fma(temp_90, _sysViewUniformBlock.data[12].y, temp_92 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w;
    temp_99 = temp_95 + fma(temp_93, _sysViewUniformBlock.data[14].z, fma(temp_90, _sysViewUniformBlock.data[14].y, temp_92 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w;
    temp_100 = temp_94 + fma(temp_93, _sysViewUniformBlock.data[13].z, fma(temp_90, _sysViewUniformBlock.data[13].y, temp_92 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w;
    gl_Position.x = fma(temp_99, _sysViewUniformBlock.data[8].z, fma(temp_100, _sysViewUniformBlock.data[8].y, temp_98 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_99, _sysViewUniformBlock.data[9].z, fma(temp_100, _sysViewUniformBlock.data[9].y, temp_98 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_99, _sysViewUniformBlock.data[10].z, fma(temp_100, _sysViewUniformBlock.data[10].y, temp_98 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_99, _sysViewUniformBlock.data[11].z, fma(temp_100, _sysViewUniformBlock.data[11].y, temp_98 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_101 = temp_98 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_102 = temp_100 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_103 = temp_99 + 0.0 - _sysViewUniformBlock.data[17].z;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_104 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_105 = temp_104 + 0.0 - floor(temp_104);
    }
    else
    {
        temp_105 = temp_5 * (1.0 / temp_6);
    }
    temp_106 = temp_105 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_107 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_108 = temp_105 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_109 = temp_105 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_110 = fma(temp_106, 0.0 - temp_108, temp_106);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_111 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_112 = temp_111 + 0.0 - floor(temp_111);
    }
    else
    {
        temp_112 = temp_5 * (1.0 / temp_6);
    }
    temp_113 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_114 = clamp(fma(1.0 / fma(fma(0.0, temp_96, temp_97) * (1.0 / fma(0.0, temp_97, temp_96)), _sysViewUniformBlock.data[18].w, 0.0 - _sysViewUniformBlock.data[18].y), 0.0 - _sysViewUniformBlock.data[18].z, 0.0 - _sysEmitterStaticUniformBlock.data[93].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[93].x + _sysEmitterStaticUniformBlock.data[93].y)), 0.0, 1.0);
    temp_115 = sysTexCoordAttr.x;
    temp_116 = sysTexCoordAttr.y;
    temp_117 = temp_5 * (1.0 / temp_6);
    temp_118 = inversesqrt(fma(temp_103, temp_103, fma(temp_102, temp_102, temp_101 * temp_101)));
    temp_119 = temp_116;
    temp_120 = temp_116;
    temp_121 = temp_116;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_119 = 0.0 - temp_116 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_120 = 0.0 - temp_116 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_121 = 0.0 - temp_116 + 1.0;
    }
    temp_122 = temp_117 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_123 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_124 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_125 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_126 = temp_112 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_127 = temp_112 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_128 = temp_117 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_129 = temp_115;
    temp_130 = temp_115;
    temp_131 = temp_115;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_129 = 0.0 - temp_115 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_130 = 0.0 - temp_115 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_131 = 0.0 - temp_115 + 1.0;
    }
    temp_132 = floatBitsToInt(1.0 / float(uint(temp_123))) + -2;
    temp_133 = temp_117 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_134 = uint(max(trunc(float(0u) * intBitsToFloat(temp_132)), 0.0));
    temp_135 = temp_117 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_136 = 0;
    if (temp_113)
    {
        temp_136 = 1;
    }
    temp_137 = temp_117 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_138 = temp_136 == 1;
    temp_139 = floatBitsToInt(1.0 / float(uint(temp_124))) + -2;
    temp_140 = floatBitsToInt(1.0 / float(uint(temp_125))) + -2;
    temp_141 = floatBitsToInt(1.0 / float(uint(abs(temp_123)))) + -2;
    temp_142 = floatBitsToInt(1.0 / float(uint(abs(temp_124)))) + -2;
    temp_143 = floatBitsToInt(1.0 / float(uint(abs(temp_125)))) + -2;
    temp_144 = uint(max(trunc(float(0u) * intBitsToFloat(temp_139)), 0.0));
    temp_145 = uint(max(trunc(float(0u) * intBitsToFloat(temp_140)), 0.0));
    temp_146 = uint(max(trunc(intBitsToFloat(temp_141) * float(0u)), 0.0));
    temp_147 = uint(max(trunc(float(0u) * intBitsToFloat(temp_142)), 0.0));
    temp_148 = uint(max(trunc(float(0u) * intBitsToFloat(temp_143)), 0.0));
    temp_149 = (temp_123 & 0xFFFF) * (int(temp_134 >> 16)) & 0xFFFF | int(temp_134) << 16;
    temp_150 = temp_12;
    temp_151 = temp_9;
    temp_152 = temp_12;
    if (temp_138)
    {
        temp_150 = temp_13;
    }
    temp_153 = temp_150;
    temp_154 = temp_150;
    if (temp_138)
    {
        temp_151 = temp_12;
    }
    temp_155 = (temp_124 & 0xFFFF) * (int(temp_144 >> 16)) & 0xFFFF | int(temp_144) << 16;
    temp_156 = temp_151;
    temp_157 = temp_151;
    if (temp_138)
    {
        temp_152 = temp_13;
    }
    temp_158 = temp_9;
    temp_159 = temp_152;
    if (temp_138)
    {
        temp_158 = temp_12;
    }
    temp_160 = (temp_125 & 0xFFFF) * (int(temp_145 >> 16)) & 0xFFFF | int(temp_145) << 16;
    temp_161 = temp_158;
    temp_162 = temp_158;
    if (!temp_138)
    {
        temp_163 = temp_136 == 2;
        if (temp_163)
        {
            temp_161 = temp_13;
        }
        temp_162 = temp_161;
        if (temp_163)
        {
            temp_153 = temp_9;
        }
        temp_154 = temp_153;
        if (temp_163)
        {
            temp_156 = temp_9;
        }
        temp_157 = temp_156;
        if (temp_163)
        {
            temp_159 = temp_12;
        }
    }
    temp_164 = 0;
    if (temp_113)
    {
        temp_164 = 2;
    }
    temp_165 = (abs(temp_125) & 0xFFFF) * (int(temp_148 >> 16)) & 0xFFFF | int(temp_148) << 16;
    temp_166 = temp_164 == 1;
    temp_167 = (abs(temp_123) & 0xFFFF) * (int(temp_146 >> 16)) & 0xFFFF | int(temp_146) << 16;
    temp_168 = (abs(temp_124) & 0xFFFF) * (int(temp_147 >> 16)) & 0xFFFF | int(temp_147) << 16;
    temp_169 = temp_117 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_170 = temp_117 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_171 = temp_9;
    temp_172 = temp_12;
    temp_173 = temp_9;
    temp_174 = temp_12;
    if (temp_166)
    {
        temp_171 = temp_12;
    }
    temp_175 = temp_171;
    temp_176 = temp_171;
    if (temp_166)
    {
        temp_172 = temp_13;
    }
    temp_177 = temp_172;
    temp_178 = temp_172;
    if (temp_166)
    {
        temp_173 = temp_12;
    }
    temp_179 = temp_173;
    temp_180 = temp_173;
    if (temp_166)
    {
        temp_174 = temp_13;
    }
    temp_181 = temp_174;
    if (!temp_166)
    {
        temp_182 = temp_164 == 2;
        if (temp_182)
        {
            temp_175 = temp_13;
        }
        temp_176 = temp_175;
        if (temp_182)
        {
            temp_177 = temp_9;
        }
        temp_178 = temp_177;
        if (temp_182)
        {
            temp_179 = temp_9;
        }
        temp_180 = temp_179;
        if (temp_182)
        {
            temp_181 = temp_12;
        }
    }
    temp_183 = clamp((abs(fma(0.0 + fma(fma(temp_82, _sysViewUniformBlock.data[14].z, fma(temp_84, _sysViewUniformBlock.data[14].x, temp_86 * _sysViewUniformBlock.data[14].y)), temp_89, fma(fma(temp_85, _sysViewUniformBlock.data[14].z, fma(temp_79, _sysViewUniformBlock.data[14].x, temp_81 * _sysViewUniformBlock.data[14].y)), temp_87, fma(temp_83, _sysViewUniformBlock.data[14].z, fma(sin(temp_68), 0.0 - _sysViewUniformBlock.data[14].x, temp_77 * _sysViewUniformBlock.data[14].y)) * temp_88)), temp_103 * temp_118, fma(0.0 + fma(fma(temp_82, _sysViewUniformBlock.data[13].z, fma(temp_84, _sysViewUniformBlock.data[13].x, temp_86 * _sysViewUniformBlock.data[13].y)), temp_89, fma(fma(temp_85, _sysViewUniformBlock.data[13].z, fma(temp_79, _sysViewUniformBlock.data[13].x, temp_81 * _sysViewUniformBlock.data[13].y)), temp_87, fma(temp_83, _sysViewUniformBlock.data[13].z, fma(sin(temp_68), 0.0 - _sysViewUniformBlock.data[13].x, temp_77 * _sysViewUniformBlock.data[13].y)) * temp_88)), temp_102 * temp_118, (0.0 + fma(fma(temp_82, _sysViewUniformBlock.data[12].z, fma(temp_84, _sysViewUniformBlock.data[12].x, temp_86 * _sysViewUniformBlock.data[12].y)), temp_89, fma(fma(temp_85, _sysViewUniformBlock.data[12].z, fma(temp_79, _sysViewUniformBlock.data[12].x, temp_81 * _sysViewUniformBlock.data[12].y)), temp_87, fma(temp_83, _sysViewUniformBlock.data[12].z, fma(sin(temp_68), 0.0 - _sysViewUniformBlock.data[12].x, temp_77 * _sysViewUniformBlock.data[12].y)) * temp_88))) * temp_101 * temp_118))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_184 = temp_117 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_185 = int(temp_134) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(temp_123) >> 16)) * (int(uint(temp_149) >> 16)) << 16) + (temp_123 & 0xFFFF) * (int(temp_134) & 0xFFFF) + (temp_149 << 16)))), 0.0)));
    temp_186 = int(temp_146) + int(uint(max(trunc(intBitsToFloat(temp_141) * float(uint(0 - ((int(uint(abs(temp_123)) >> 16)) * (int(uint(temp_167) >> 16)) << 16) + (abs(temp_123) & 0xFFFF) * (int(temp_146) & 0xFFFF) + (temp_167 << 16)))), 0.0)));
    temp_187 = (abs(temp_123) & 0xFFFF) * (int(uint(temp_186) >> 16)) & 0xFFFF | temp_186 << 16;
    temp_188 = int(temp_144) + int(uint(max(trunc(intBitsToFloat(temp_139) * float(uint(0 - ((int(uint(temp_124) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (temp_124 & 0xFFFF) * (int(temp_144) & 0xFFFF) + (temp_155 << 16)))), 0.0)));
    temp_189 = int(temp_145) + int(uint(max(trunc(intBitsToFloat(temp_140) * float(uint(0 - ((int(uint(temp_125) >> 16)) * (int(uint(temp_160) >> 16)) << 16) + (temp_125 & 0xFFFF) * (int(temp_145) & 0xFFFF) + (temp_160 << 16)))), 0.0)));
    temp_190 = (temp_123 & 0xFFFF) * (int(uint(temp_185) >> 16)) & 0xFFFF | temp_185 << 16;
    temp_191 = int(temp_147) + int(uint(max(trunc(intBitsToFloat(temp_142) * float(uint(0 - ((int(uint(abs(temp_124)) >> 16)) * (int(uint(temp_168) >> 16)) << 16) + (abs(temp_124) & 0xFFFF) * (int(temp_147) & 0xFFFF) + (temp_168 << 16)))), 0.0)));
    temp_192 = int(temp_148) + int(uint(max(trunc(intBitsToFloat(temp_143) * float(uint(0 - ((int(uint(abs(temp_125)) >> 16)) * (int(uint(temp_165) >> 16)) << 16) + (abs(temp_125) & 0xFFFF) * (int(temp_148) & 0xFFFF) + (temp_165 << 16)))), 0.0)));
    temp_193 = (temp_124 & 0xFFFF) * (int(uint(temp_188) >> 16)) & 0xFFFF | temp_188 << 16;
    temp_194 = (temp_125 & 0xFFFF) * (int(uint(temp_189) >> 16)) & 0xFFFF | temp_189 << 16;
    temp_195 = (abs(temp_124) & 0xFFFF) * (int(uint(temp_191) >> 16)) & 0xFFFF | temp_191 << 16;
    temp_196 = (abs(temp_125) & 0xFFFF) * (int(uint(temp_192) >> 16)) & 0xFFFF | temp_192 << 16;
    temp_197 = 0 - temp_185 + ((uint(0 - ((int(uint(temp_123) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (temp_123 & 0xFFFF) * (temp_185 & 0xFFFF) + (temp_190 << 16)) >= uint(temp_123) ? -1 : 0));
    out_attr3.y = fma(temp_184, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_170, 0.0 - temp_184, temp_170), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_169, 0.0 - temp_170, temp_169), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_137, 0.0 - temp_169, temp_137), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_135, 0.0 - temp_137, temp_135), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_133, 0.0 - temp_135, temp_133), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_122, 0.0 - temp_133, temp_122), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_117 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_122, 0.0 - temp_128, temp_128), fma(temp_128, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    temp_198 = 0 - temp_188 + ((uint(0 - ((int(uint(temp_124) >> 16)) * (int(uint(temp_193) >> 16)) << 16) + (temp_124 & 0xFFFF) * (temp_188 & 0xFFFF) + (temp_193 << 16)) >= uint(temp_124) ? -1 : 0));
    temp_199 = (temp_123 & 0xFFFF) * (int(uint(temp_197) >> 16)) & 0xFFFF | temp_197 << 16;
    temp_200 = 0 - temp_189 + ((uint(0 - ((int(uint(temp_125) >> 16)) * (int(uint(temp_194) >> 16)) << 16) + (temp_125 & 0xFFFF) * (temp_189 & 0xFFFF) + (temp_194 << 16)) >= uint(temp_125) ? -1 : 0));
    temp_201 = (temp_124 & 0xFFFF) * (int(uint(temp_198) >> 16)) & 0xFFFF | temp_198 << 16;
    temp_202 = 0 - int(uint(temp_123) >> 31);
    temp_203 = (temp_125 & 0xFFFF) * (int(uint(temp_200) >> 16)) & 0xFFFF | temp_200 << 16;
    temp_204 = 0 - int(uint(temp_125) >> 31);
    temp_205 = 0 - int(uint(temp_124) >> 31);
    temp_206 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_207 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_208 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_209 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_210 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_211 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr0.x = fma(temp_108, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_109, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_107, _sysEmitterStaticUniformBlock.data[60].x), temp_110, fma(temp_106, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_108, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_109, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_107, _sysEmitterStaticUniformBlock.data[60].y), temp_110, fma(temp_106, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_108, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_109, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_107, _sysEmitterStaticUniformBlock.data[60].z), temp_110, fma(temp_106, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_127, _sysEmitterStaticUniformBlock.data[69].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_112 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_126, 0.0 - temp_127, temp_126), fma(temp_126, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr3.x = temp_114 * fma(temp_183, -2.0, 3.0) * temp_183 * temp_183 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(fma(temp_206, temp_129, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_206, float(temp_123 < 0 || !(temp_123 == 0) ? ((int(uint(temp_123) >> 16)) * (int(uint(temp_199) >> 16)) << 16) + (temp_123 & 0xFFFF) * (temp_197 & 0xFFFF) + (temp_199 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr1.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_12, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_210, temp_119, -0.5), 0.0 - fma(temp_210, 0.0 - float(temp_123 < 0 || !(temp_123 == 0) ? 0 - temp_202 + (temp_186 + 0 - (uint(0 - ((int(uint(abs(temp_123)) >> 16)) * (int(uint(temp_187) >> 16)) << 16) + (abs(temp_123) & 0xFFFF) * (temp_186 & 0xFFFF) + (temp_187 << 16)) >= uint(abs(temp_123)) ? -1 : 0) ^ temp_202) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_12 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr1.z = fma(fma(temp_207, temp_130, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_157, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_207, float(temp_124 < 0 || !(temp_124 == 0) ? ((int(uint(temp_124) >> 16)) * (int(uint(temp_201) >> 16)) << 16) + (temp_124 & 0xFFFF) * (temp_198 & 0xFFFF) + (temp_201 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_162 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr1.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_159, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_209, temp_120, -0.5), 0.0 - fma(temp_209, 0.0 - float(temp_124 < 0 || !(temp_124 == 0) ? 0 - temp_205 + (temp_191 + 0 - (uint(0 - ((int(uint(abs(temp_124)) >> 16)) * (int(uint(temp_195) >> 16)) << 16) + (abs(temp_124) & 0xFFFF) * (temp_191 & 0xFFFF) + (temp_195 << 16)) >= uint(abs(temp_124)) ? -1 : 0) ^ temp_205) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_154 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_180, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_208, temp_131, -0.5), fma(temp_208, float(temp_125 < 0 || !(temp_125 == 0) ? ((int(uint(temp_125) >> 16)) * (int(uint(temp_203) >> 16)) << 16) + (temp_125 & 0xFFFF) * (temp_200 & 0xFFFF) + (temp_203 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_176 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_181, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_211, temp_121, -0.5), 0.0 - fma(temp_211, 0.0 - float(temp_125 < 0 || !(temp_125 == 0) ? 0 - temp_204 + (temp_192 + 0 - (uint(0 - ((int(uint(abs(temp_125)) >> 16)) * (int(uint(temp_196) >> 16)) << 16) + (abs(temp_125) & 0xFFFF) * (temp_192 & 0xFFFF) + (temp_196 << 16)) >= uint(abs(temp_125)) ? -1 : 0) ^ temp_204) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_178 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    if (!(temp_114 <= 0.0))
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
