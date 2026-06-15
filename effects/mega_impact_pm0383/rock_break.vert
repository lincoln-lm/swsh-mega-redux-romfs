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
layout (location = 1) in vec4 sysNormalAttr;
layout (location = 2) in vec4 sysVertexColor0Attr;
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
layout (location = 7) out vec4 out_attr7;


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
    int temp_41;
    int temp_42;
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
    precise float temp_46;
    int temp_47;
    precise float temp_48;
    precise float temp_49;
    bool temp_50;
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
    bool temp_70;
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
    int temp_131;
    int temp_132;
    precise float temp_133;
    precise float temp_134;
    precise float temp_135;
    uint temp_136;
    int temp_137;
    precise float temp_138;
    precise float temp_139;
    precise float temp_140;
    uint temp_141;
    int temp_142;
    precise float temp_143;
    precise float temp_144;
    int temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    precise float temp_151;
    int temp_152;
    precise float temp_153;
    int temp_154;
    int temp_155;
    precise float temp_156;
    precise float temp_157;
    int temp_158;
    precise float temp_159;
    int temp_160;
    int temp_161;
    precise float temp_162;
    int temp_163;
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
    temp_34 = temp_32;
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
    temp_35 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_35 = temp_25 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_36 = temp_35;
    if (temp_15)
    {
        temp_34 = temp_25 * _sysEmitterDynamicUniformBlock.data[9].z;
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
        temp_36 = 0.0;
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
    temp_41 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_42 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_43 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_44 = floor(temp_9 * 2.0);
    temp_45 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_46 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_47 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_48 = floor(temp_39 * 2.0);
    temp_49 = floor(temp_40 * 2.0);
    temp_50 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_51 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_52 = fma(temp_9 + temp_39, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x;
    temp_53 = temp_38 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_54 = intBitsToFloat(undef);
    temp_55 = temp_52;
    if (!temp_50)
    {
        temp_54 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_56 = temp_38 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_57 = temp_54;
    if (!temp_50)
    {
        temp_57 = 1.0 / temp_54;
    }
    temp_58 = fma(temp_53, 0.0 - temp_56, temp_53);
    temp_59 = fma(temp_52, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_60 = fma(fma(temp_39 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_61 = temp_38 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_62 = fma(fma(temp_9 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_63 = sysInitRotateAttr.x;
    temp_64 = sysInitRotateAttr.y;
    temp_65 = sysInitRotateAttr.z;
    temp_66 = temp_61;
    if (temp_50)
    {
        temp_55 = temp_5;
    }
    temp_67 = temp_55;
    if (!temp_50)
    {
        temp_67 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_57, temp_57);
    }
    temp_68 = fma(temp_56, 0.0 - temp_61, temp_56);
    temp_69 = (0.0 - temp_48 < 0.0 ? 1.0 : 0.0 + (temp_48 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_41 > 0 ? -1 : 0) + 0 - temp_41 >= 0 ? 0 : 1));
    temp_70 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_71 = (0.0 - temp_49 < 0.0 ? 1.0 : 0.0 + (temp_49 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_42 > 0 ? -1 : 0) + 0 - temp_42 >= 0 ? 0 : 1));
    temp_72 = (0.0 - temp_44 < 0.0 ? 1.0 : 0.0 + (temp_44 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_47 > 0 ? -1 : 0) + 0 - temp_47 >= 0 ? 0 : 1));
    temp_73 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_74 = sysScaleAttr.w;
    temp_75 = temp_71;
    temp_76 = temp_73;
    if (temp_70)
    {
        temp_66 = temp_73 * temp_73;
    }
    temp_77 = temp_60 * temp_71;
    temp_78 = temp_69 * temp_63;
    temp_79 = temp_71 * temp_64;
    temp_80 = temp_79;
    temp_81 = temp_78;
    temp_82 = temp_77;
    if (temp_70)
    {
        temp_75 = temp_66 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_70)
    {
        temp_80 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_83 = temp_80;
    if (temp_70)
    {
        temp_81 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_84 = temp_81;
    if (temp_70)
    {
        temp_82 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_85 = temp_82;
    if (!temp_70)
    {
        temp_86 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_87 = (0.0 - fma(temp_86, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_73), 0.0 - temp_86) + temp_73) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_83 = temp_87 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_85 = temp_87 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_84 = temp_87 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_70)
    {
        temp_88 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_76 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_73), 0.0 - temp_88, temp_88);
    }
    temp_89 = fma(fma(temp_59 * temp_69, -2.0, temp_59), temp_67, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_78, -2.0, temp_63)));
    temp_90 = fma(fma(temp_62 * temp_72, -2.0, temp_62), temp_67, fma(temp_40 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_72 * temp_65, -2.0, temp_65)));
    temp_91 = fma(fma(temp_77, -2.0, temp_60), temp_67, fma(temp_39 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_79, -2.0, temp_64)));
    temp_92 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_61, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_43, temp_51, _sysEmitterStaticUniformBlock.data[97].x), temp_68, fma(fma(temp_46, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_45, _sysEmitterStaticUniformBlock.data[96].x), temp_58, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_93 = sysNormalAttr.x;
    temp_94 = sysNormalAttr.y;
    temp_95 = sysNormalAttr.z;
    temp_96 = fma(temp_61, _sysEmitterStaticUniformBlock.data[98].z, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_43, temp_51, _sysEmitterStaticUniformBlock.data[97].z), temp_68, fma(fma(temp_46, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_45, _sysEmitterStaticUniformBlock.data[96].z), temp_58, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_97 = fma(fma(temp_76, sysLocalVecAttr.x, fma(temp_84, temp_19, fma(temp_85, temp_26, temp_83 * temp_23))), temp_74, sysLocalPosAttr.x);
    temp_98 = fma(fma(temp_76, sysLocalVecAttr.y, fma(temp_84, temp_28, fma(temp_85, temp_31, temp_83 * temp_30))), temp_74, sysLocalPosAttr.y);
    temp_99 = fma(fma(temp_76, sysLocalVecAttr.z, fma(temp_84, temp_33, fma(temp_85, temp_36, temp_83 * temp_34))), temp_74, sysLocalPosAttr.z);
    temp_100 = fma(temp_61, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_43, temp_51, _sysEmitterStaticUniformBlock.data[97].y), temp_68, fma(fma(temp_46, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_45, _sysEmitterStaticUniformBlock.data[96].y), temp_58, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_101 = cos(temp_89) * cos(temp_91);
    temp_102 = cos(temp_89) * sin(temp_91);
    temp_103 = sin(temp_89) * sin(temp_91);
    temp_104 = sin(temp_89) * cos(temp_91);
    temp_105 = cos(temp_90) * sin(temp_89);
    temp_106 = cos(temp_90) * cos(temp_89);
    temp_107 = cos(temp_90) * cos(temp_91);
    temp_108 = cos(temp_90) * sin(temp_91);
    temp_109 = fma(sin(temp_90), temp_103, temp_101);
    temp_110 = fma(sin(temp_90), temp_101, temp_103);
    temp_111 = fma(sin(temp_90), temp_104, 0.0 - temp_102);
    temp_112 = fma(sin(temp_90), temp_102, 0.0 - temp_104);
    temp_113 = 0.0 + fma(temp_100, 0.0 - temp_108, fma(temp_92, temp_107, sin(temp_90) * 0.0 - temp_96));
    temp_114 = fma(temp_108, 0.0 - temp_94, fma(temp_107, temp_93, sin(temp_90) * 0.0 - temp_95));
    temp_115 = fma(temp_112, 0.0 - temp_94, fma(temp_110, temp_93, temp_106 * temp_95));
    temp_116 = 0.0 + fma(temp_100, 0.0 - temp_112, fma(temp_110, temp_92, temp_106 * temp_96));
    temp_117 = fma(temp_109, 0.0 - temp_94, fma(temp_111, temp_93, temp_105 * temp_95));
    temp_118 = 0.0 + fma(temp_109, 0.0 - temp_100, fma(temp_92, temp_111, temp_105 * temp_96));
    temp_119 = fma(0.0, 0.0 - temp_100, fma(0.0, temp_92, 0.0 * temp_96)) + 1.0;
    temp_120 = fma(temp_99, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_98, _sysEmitterDynamicUniformBlock.data[4].y, temp_97 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_121 = fma(temp_99, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_98, _sysEmitterDynamicUniformBlock.data[5].y, temp_97 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_122 = fma(temp_120, temp_119, fma(temp_118, temp_36, fma(temp_116, temp_31, temp_113 * temp_26)));
    temp_123 = fma(temp_99, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_98, _sysEmitterDynamicUniformBlock.data[6].y, temp_97 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_124 = fma(temp_121, temp_119, fma(temp_118, temp_34, fma(temp_116, temp_30, temp_113 * temp_23)));
    temp_125 = fma(temp_123, temp_119, fma(temp_118, temp_33, fma(temp_116, temp_28, temp_113 * temp_19)));
    out_attr5.x = temp_122;
    out_attr5.y = temp_124;
    out_attr5.z = temp_125;
    out_attr7.x = temp_122 + 0.0 - _sysViewUniformBlock.data[17].x;
    out_attr7.y = temp_124 + 0.0 - _sysViewUniformBlock.data[17].y;
    out_attr7.z = temp_125 + 0.0 - _sysViewUniformBlock.data[17].z;
    temp_126 = fma(0.0, temp_123, fma(temp_117, temp_33, fma(temp_115, temp_28, temp_114 * temp_19)));
    gl_Position.x = fma(temp_125, _sysViewUniformBlock.data[8].z, fma(temp_124, _sysViewUniformBlock.data[8].y, temp_122 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_125, _sysViewUniformBlock.data[9].z, fma(temp_124, _sysViewUniformBlock.data[9].y, temp_122 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_125, _sysViewUniformBlock.data[10].z, fma(temp_124, _sysViewUniformBlock.data[10].y, temp_122 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_125, _sysViewUniformBlock.data[11].z, fma(temp_124, _sysViewUniformBlock.data[11].y, temp_122 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_127 = fma(0.0, temp_120, fma(temp_117, temp_36, fma(temp_115, temp_31, temp_114 * temp_26)));
    temp_128 = fma(0.0, temp_121, fma(temp_117, temp_34, fma(temp_115, temp_30, temp_114 * temp_23)));
    out_attr6.x = temp_127;
    out_attr6.y = temp_128;
    out_attr6.z = temp_126;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_129 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_130 = temp_129 + 0.0 - floor(temp_129);
    }
    else
    {
        temp_130 = temp_5 * (1.0 / temp_6);
    }
    temp_131 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_132 = floatBitsToInt(1.0 / float(uint(temp_131))) + -2;
    temp_133 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_126, _sysViewUniformBlock.data[1].z, fma(temp_128, _sysViewUniformBlock.data[1].y, temp_127 * _sysViewUniformBlock.data[1].x)));
    temp_134 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_126, _sysViewUniformBlock.data[2].z, fma(temp_128, _sysViewUniformBlock.data[2].y, temp_127 * _sysViewUniformBlock.data[2].x)));
    temp_135 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_126, _sysViewUniformBlock.data[0].z, fma(temp_128, _sysViewUniformBlock.data[0].y, temp_127 * _sysViewUniformBlock.data[0].x)));
    temp_136 = uint(max(trunc(float(0u) * intBitsToFloat(temp_132)), 0.0));
    temp_137 = floatBitsToInt(1.0 / float(uint(abs(temp_131)))) + -2;
    temp_138 = fma(temp_125, _sysViewUniformBlock.data[0].z, fma(temp_124, _sysViewUniformBlock.data[0].y, temp_122 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_139 = fma(temp_125, _sysViewUniformBlock.data[1].z, fma(temp_124, _sysViewUniformBlock.data[1].y, temp_122 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_140 = fma(temp_125, _sysViewUniformBlock.data[2].z, fma(temp_124, _sysViewUniformBlock.data[2].y, temp_122 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_141 = uint(max(trunc(intBitsToFloat(temp_137) * float(0u)), 0.0));
    temp_142 = (temp_131 & 0xFFFF) * (int(temp_136 >> 16)) & 0xFFFF | int(temp_136) << 16;
    temp_143 = inversesqrt(fma(temp_134, temp_134, fma(temp_133, temp_133, temp_135 * temp_135)));
    temp_144 = inversesqrt(fma(temp_140, temp_140, fma(temp_139, temp_139, temp_138 * temp_138)));
    temp_145 = (abs(temp_131) & 0xFFFF) * (int(temp_141 >> 16)) & 0xFFFF | int(temp_141) << 16;
    temp_146 = temp_135 * temp_143;
    temp_147 = temp_138 * temp_144;
    temp_148 = temp_133 * temp_143;
    temp_149 = temp_139 * temp_144;
    temp_150 = temp_140 * temp_144;
    temp_151 = clamp(max(temp_134 * temp_143, 0.2) + -0.0, 0.0, 1.0);
    temp_152 = int(temp_136) + int(uint(max(trunc(intBitsToFloat(temp_132) * float(uint(0 - ((int(uint(temp_131) >> 16)) * (int(uint(temp_142) >> 16)) << 16) + (temp_131 & 0xFFFF) * (int(temp_136) & 0xFFFF) + (temp_142 << 16)))), 0.0)));
    temp_153 = fma(temp_150, temp_151, fma(temp_148, temp_149, temp_146 * temp_147));
    temp_154 = int(temp_141) + int(uint(max(trunc(intBitsToFloat(temp_137) * float(uint(0 - ((int(uint(abs(temp_131)) >> 16)) * (int(uint(temp_145) >> 16)) << 16) + (abs(temp_131) & 0xFFFF) * (int(temp_141) & 0xFFFF) + (temp_145 << 16)))), 0.0)));
    temp_155 = (temp_131 & 0xFFFF) * (int(uint(temp_152) >> 16)) & 0xFFFF | temp_152 << 16;
    temp_156 = fma(temp_146 * temp_153, -2.0, temp_147);
    temp_157 = fma(temp_148 * temp_153, -2.0, temp_149);
    temp_158 = (abs(temp_131) & 0xFFFF) * (int(uint(temp_154) >> 16)) & 0xFFFF | temp_154 << 16;
    temp_159 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_160 = 0 - temp_152 + ((uint(0 - ((int(uint(temp_131) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (temp_131 & 0xFFFF) * (temp_152 & 0xFFFF) + (temp_155 << 16)) >= uint(temp_131) ? -1 : 0));
    out_attr4.z = sysVertexColor0Attr.z;
    out_attr4.y = sysVertexColor0Attr.y;
    temp_161 = 0 - int(uint(temp_131) >> 31);
    out_attr4.x = sysVertexColor0Attr.x;
    temp_162 = 1.0 / (sqrt(fma(fma(temp_151 * temp_153, -2.0, temp_150) + 1.0, fma(temp_151 * temp_153, -2.0, temp_150) + 1.0, fma(0.0 + temp_157, 0.0 + temp_157, (0.0 + temp_156) * (0.0 + temp_156)))) * 2.0);
    temp_163 = (temp_131 & 0xFFFF) * (int(uint(temp_160) >> 16)) & 0xFFFF | temp_160 << 16;
    temp_164 = fma(temp_156, temp_162, 0.5);
    temp_165 = fma(temp_157, 0.0 - temp_162, 0.5);
    temp_166 = temp_130 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_167 = temp_130 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_168 = temp_130 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_169 = fma(temp_166, 0.0 - temp_168, temp_166);
    temp_170 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_171 = temp_165;
    temp_172 = temp_164;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_39 > 0.5) ? -1 : 0)) != 0))
    {
        temp_171 = 0.0 - temp_165 + 1.0;
    }
    temp_173 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_172 = 0.0 - temp_164 + 1.0;
    }
    out_attr4.w = sysVertexColor0Attr.w;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.x = fma(temp_168, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_167, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_159, _sysEmitterStaticUniformBlock.data[60].x), temp_169, fma(temp_166, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_168, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_167, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_159, _sysEmitterStaticUniformBlock.data[60].y), temp_169, fma(temp_166, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_168, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_167, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_159, _sysEmitterStaticUniformBlock.data[60].z), temp_169, fma(temp_166, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_173, temp_172, -0.5), fma(temp_173, float(temp_131 < 0 || !(temp_131 == 0) ? ((int(uint(temp_131) >> 16)) * (int(uint(temp_163) >> 16)) << 16) + (temp_131 & 0xFFFF) * (temp_160 & 0xFFFF) + (temp_163 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_39, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_170, temp_171, -0.5), 0.0 - fma(temp_170, 0.0 - float(temp_131 < 0 || !(temp_131 == 0) ? 0 - temp_161 + (temp_154 + 0 - (uint(0 - ((int(uint(abs(temp_131)) >> 16)) * (int(uint(temp_158) >> 16)) << 16) + (abs(temp_131) & 0xFFFF) * (temp_154 & 0xFFFF) + (temp_158 << 16)) >= uint(abs(temp_131)) ? -1 : 0) ^ temp_161) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_39 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
