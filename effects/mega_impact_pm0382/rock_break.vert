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
    int temp_45;
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
    bool temp_68;
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
    int temp_112;
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
    precise float temp_132;
    precise float temp_133;
    precise float temp_134;
    precise float temp_135;
    uint temp_136;
    int temp_137;
    precise float temp_138;
    precise float temp_139;
    uint temp_140;
    int temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    int temp_145;
    precise float temp_146;
    precise float temp_147;
    precise float temp_148;
    precise float temp_149;
    precise float temp_150;
    int temp_151;
    precise float temp_152;
    int temp_153;
    int temp_154;
    int temp_155;
    precise float temp_156;
    int temp_157;
    int temp_158;
    int temp_159;
    precise float temp_160;
    precise float temp_161;
    precise float temp_162;
    precise float temp_163;
    precise float temp_164;
    precise float temp_165;
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
    temp_43 = floor(temp_9 * 2.0);
    temp_44 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_45 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_46 = floor(temp_39 * 2.0);
    temp_47 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_48 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_49 = floor(temp_40 * 2.0);
    temp_50 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_51 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_52 = temp_38 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_53 = temp_38 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_54 = intBitsToFloat(undef);
    temp_55 = _sysEmitterStaticUniformBlock.data[114].w;
    if (!temp_51)
    {
        temp_54 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_56 = temp_54;
    if (!temp_51)
    {
        temp_56 = 1.0 / temp_54;
    }
    temp_57 = fma(temp_52, 0.0 - temp_53, temp_52);
    temp_58 = temp_38 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    if (temp_51)
    {
        temp_55 = temp_5;
    }
    temp_59 = fma(fma(temp_9 + temp_39, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_60 = fma(fma(temp_39 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_61 = fma(fma(temp_9 + temp_40, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_62 = sysInitRotateAttr.x;
    temp_63 = sysInitRotateAttr.y;
    temp_64 = sysInitRotateAttr.z;
    temp_65 = fma(temp_53, 0.0 - temp_58, temp_53);
    temp_66 = temp_55;
    if (!temp_51)
    {
        temp_66 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_56, temp_56);
    }
    temp_67 = (0.0 - temp_46 < 0.0 ? 1.0 : 0.0 + (temp_46 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_41 > 0 ? -1 : 0) + 0 - temp_41 >= 0 ? 0 : 1));
    temp_68 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_69 = (0.0 - temp_43 < 0.0 ? 1.0 : 0.0 + (temp_43 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_45 > 0 ? -1 : 0) + 0 - temp_45 >= 0 ? 0 : 1));
    temp_70 = (0.0 - temp_49 < 0.0 ? 1.0 : 0.0 + (temp_49 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_42 > 0 ? -1 : 0) + 0 - temp_42 >= 0 ? 0 : 1));
    temp_71 = sysScaleAttr.w;
    temp_72 = temp_59 * temp_67;
    temp_73 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_74 = temp_72;
    temp_75 = temp_67;
    temp_76 = temp_73;
    if (temp_68)
    {
        temp_74 = temp_73 * temp_73;
    }
    temp_77 = temp_61 * temp_69;
    temp_78 = temp_67 * temp_62;
    temp_79 = temp_78;
    temp_80 = temp_74;
    temp_81 = temp_77;
    if (temp_68)
    {
        temp_75 = temp_74 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_68)
    {
        temp_79 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_82 = temp_79;
    if (temp_68)
    {
        temp_80 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_83 = temp_80;
    if (temp_68)
    {
        temp_81 = temp_75 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_84 = temp_81;
    if (!temp_68)
    {
        temp_85 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_86 = (0.0 - fma(temp_85, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_73), 0.0 - temp_85) + temp_73) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_82 = temp_86 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_84 = temp_86 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_83 = temp_86 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_68)
    {
        temp_87 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_76 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_73), 0.0 - temp_87, temp_87);
    }
    temp_88 = fma(fma(temp_72, -2.0, temp_59), temp_66, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_78, -2.0, temp_62)));
    temp_89 = fma(fma(temp_60 * temp_70, -2.0, temp_60), temp_66, fma(temp_39 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_70 * temp_63, -2.0, temp_63)));
    temp_90 = fma(fma(temp_77, -2.0, temp_61), temp_66, fma(temp_40 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_69 * temp_64, -2.0, temp_64)));
    temp_91 = fma(temp_58, _sysEmitterStaticUniformBlock.data[98].z, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_44, temp_50, _sysEmitterStaticUniformBlock.data[97].z), temp_65, fma(fma(temp_48, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_47, _sysEmitterStaticUniformBlock.data[96].z), temp_57, fma(temp_52, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z)))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_92 = sysNormalAttr.x;
    temp_93 = sysNormalAttr.y;
    temp_94 = sysNormalAttr.z;
    temp_95 = fma(temp_58, _sysEmitterStaticUniformBlock.data[98].y, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_44, temp_50, _sysEmitterStaticUniformBlock.data[97].y), temp_65, fma(fma(temp_48, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_47, _sysEmitterStaticUniformBlock.data[96].y), temp_57, fma(temp_52, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_96 = fma(fma(temp_76, sysLocalVecAttr.x, fma(temp_83, temp_19, fma(temp_84, temp_26, temp_82 * temp_23))), temp_71, sysLocalPosAttr.x);
    temp_97 = fma(fma(temp_76, sysLocalVecAttr.z, fma(temp_83, temp_33, fma(temp_84, temp_36, temp_82 * temp_34))), temp_71, sysLocalPosAttr.z);
    temp_98 = fma(fma(temp_76, sysLocalVecAttr.y, fma(temp_83, temp_28, fma(temp_84, temp_31, temp_82 * temp_30))), temp_71, sysLocalPosAttr.y);
    temp_99 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_58, _sysEmitterStaticUniformBlock.data[98].x, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_44, temp_50, _sysEmitterStaticUniformBlock.data[97].x), temp_65, fma(fma(temp_48, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_47, _sysEmitterStaticUniformBlock.data[96].x), temp_57, fma(temp_52, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_100 = cos(temp_88) * cos(temp_89);
    temp_101 = cos(temp_88) * sin(temp_89);
    temp_102 = sin(temp_88) * cos(temp_89);
    temp_103 = cos(temp_90) * cos(temp_88);
    temp_104 = cos(temp_90) * sin(temp_88);
    temp_105 = sin(temp_88) * sin(temp_89);
    temp_106 = cos(temp_90) * cos(temp_89);
    temp_107 = cos(temp_90) * sin(temp_89);
    temp_108 = fma(sin(temp_90), temp_102, 0.0 - temp_101);
    temp_109 = fma(sin(temp_90), temp_101, 0.0 - temp_102);
    temp_110 = fma(sin(temp_90), temp_100, temp_105);
    temp_111 = fma(sin(temp_90), temp_105, temp_100);
    temp_112 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_113 = fma(temp_107, 0.0 - temp_93, fma(temp_106, temp_92, sin(temp_90) * 0.0 - temp_94));
    temp_114 = 0.0 + fma(temp_95, 0.0 - temp_107, fma(temp_99, temp_106, sin(temp_90) * 0.0 - temp_91));
    temp_115 = fma(temp_109, 0.0 - temp_93, fma(temp_110, temp_92, temp_103 * temp_94));
    temp_116 = fma(temp_111, 0.0 - temp_93, fma(temp_108, temp_92, temp_104 * temp_94));
    temp_117 = 0.0 + fma(temp_95, 0.0 - temp_109, fma(temp_99, temp_110, temp_103 * temp_91));
    temp_118 = 0.0 + fma(temp_95, 0.0 - temp_111, fma(temp_99, temp_108, temp_104 * temp_91));
    temp_119 = fma(temp_97, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_98, _sysEmitterDynamicUniformBlock.data[4].y, temp_96 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_120 = fma(0.0, 0.0 - temp_95, fma(0.0, temp_99, 0.0 * temp_91)) + 1.0;
    temp_121 = fma(temp_97, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_98, _sysEmitterDynamicUniformBlock.data[5].y, temp_96 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_122 = fma(0.0, temp_119, fma(temp_116, temp_36, fma(temp_115, temp_31, temp_113 * temp_26)));
    temp_123 = fma(temp_97, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_98, _sysEmitterDynamicUniformBlock.data[6].y, temp_96 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_124 = fma(temp_119, temp_120, fma(temp_118, temp_36, fma(temp_117, temp_31, temp_114 * temp_26)));
    temp_125 = fma(0.0, temp_121, fma(temp_116, temp_34, fma(temp_115, temp_30, temp_113 * temp_23)));
    temp_126 = fma(temp_121, temp_120, fma(temp_118, temp_34, fma(temp_117, temp_30, temp_114 * temp_23)));
    temp_127 = fma(temp_123, temp_120, fma(temp_118, temp_33, fma(temp_117, temp_28, temp_114 * temp_19)));
    out_attr5.x = temp_124;
    out_attr5.y = temp_126;
    out_attr5.z = temp_127;
    temp_128 = fma(0.0, temp_123, fma(temp_116, temp_33, fma(temp_115, temp_28, temp_113 * temp_19)));
    out_attr6.x = temp_122;
    out_attr6.y = temp_125;
    out_attr6.z = temp_128;
    temp_129 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_128, _sysViewUniformBlock.data[0].z, fma(temp_125, _sysViewUniformBlock.data[0].y, temp_122 * _sysViewUniformBlock.data[0].x)));
    temp_130 = fma(temp_127, _sysViewUniformBlock.data[0].z, fma(temp_126, _sysViewUniformBlock.data[0].y, temp_124 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_131 = floatBitsToInt(1.0 / float(uint(abs(temp_112)))) + -2;
    temp_132 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_128, _sysViewUniformBlock.data[1].z, fma(temp_125, _sysViewUniformBlock.data[1].y, temp_122 * _sysViewUniformBlock.data[1].x)));
    temp_133 = fma(temp_127, _sysViewUniformBlock.data[1].z, fma(temp_126, _sysViewUniformBlock.data[1].y, temp_124 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_134 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_128, _sysViewUniformBlock.data[2].z, fma(temp_125, _sysViewUniformBlock.data[2].y, temp_122 * _sysViewUniformBlock.data[2].x)));
    temp_135 = fma(temp_127, _sysViewUniformBlock.data[2].z, fma(temp_126, _sysViewUniformBlock.data[2].y, temp_124 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_136 = uint(max(trunc(intBitsToFloat(temp_131) * float(0u)), 0.0));
    temp_137 = floatBitsToInt(1.0 / float(uint(temp_112))) + -2;
    temp_138 = inversesqrt(fma(temp_134, temp_134, fma(temp_132, temp_132, temp_129 * temp_129)));
    temp_139 = inversesqrt(fma(temp_135, temp_135, fma(temp_133, temp_133, temp_130 * temp_130)));
    temp_140 = uint(max(trunc(float(0u) * intBitsToFloat(temp_137)), 0.0));
    temp_141 = (abs(temp_112) & 0xFFFF) * (int(temp_136 >> 16)) & 0xFFFF | int(temp_136) << 16;
    temp_142 = temp_129 * temp_138;
    temp_143 = temp_130 * temp_139;
    temp_144 = temp_132 * temp_138;
    temp_145 = (temp_112 & 0xFFFF) * (int(temp_140 >> 16)) & 0xFFFF | int(temp_140) << 16;
    temp_146 = temp_133 * temp_139;
    temp_147 = temp_135 * temp_139;
    temp_148 = clamp(max(temp_134 * temp_138, 0.2) + -0.0, 0.0, 1.0);
    temp_149 = fma(temp_147, temp_148, fma(temp_144, temp_146, temp_142 * temp_143));
    temp_150 = fma(temp_142 * temp_149, -2.0, temp_143);
    temp_151 = int(temp_136) + int(uint(max(trunc(intBitsToFloat(temp_131) * float(uint(0 - ((int(uint(abs(temp_112)) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (abs(temp_112) & 0xFFFF) * (int(temp_136) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_152 = fma(temp_144 * temp_149, -2.0, temp_146);
    temp_153 = (abs(temp_112) & 0xFFFF) * (int(uint(temp_151) >> 16)) & 0xFFFF | temp_151 << 16;
    temp_154 = int(temp_140) + int(uint(max(trunc(intBitsToFloat(temp_137) * float(uint(0 - ((int(uint(temp_112) >> 16)) * (int(uint(temp_145) >> 16)) << 16) + (temp_112 & 0xFFFF) * (int(temp_140) & 0xFFFF) + (temp_145 << 16)))), 0.0)));
    temp_155 = (temp_112 & 0xFFFF) * (int(uint(temp_154) >> 16)) & 0xFFFF | temp_154 << 16;
    temp_156 = 1.0 / (sqrt(fma(fma(temp_148 * temp_149, -2.0, temp_147) + 1.0, fma(temp_148 * temp_149, -2.0, temp_147) + 1.0, fma(0.0 + temp_152, 0.0 + temp_152, (0.0 + temp_150) * (0.0 + temp_150)))) * 2.0);
    temp_157 = 0 - int(uint(temp_112) >> 31);
    temp_158 = 0 - temp_154 + ((uint(0 - ((int(uint(temp_112) >> 16)) * (int(uint(temp_155) >> 16)) << 16) + (temp_112 & 0xFFFF) * (temp_154 & 0xFFFF) + (temp_155 << 16)) >= uint(temp_112) ? -1 : 0));
    temp_159 = (temp_112 & 0xFFFF) * (int(uint(temp_158) >> 16)) & 0xFFFF | temp_158 << 16;
    temp_160 = fma(temp_152, 0.0 - temp_156, 0.5);
    temp_161 = fma(temp_150, temp_156, 0.5);
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    temp_162 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    out_attr4.x = sysVertexColor0Attr.x;
    temp_163 = temp_160;
    temp_164 = temp_161;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_39 > 0.5) ? -1 : 0)) != 0))
    {
        temp_163 = 0.0 - temp_160 + 1.0;
    }
    out_attr4.y = sysVertexColor0Attr.y;
    out_attr4.w = sysVertexColor0Attr.w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_164 = 0.0 - temp_161 + 1.0;
    }
    temp_165 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    out_attr4.z = sysVertexColor0Attr.z;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr7.x = temp_124 + 0.0 - _sysViewUniformBlock.data[17].x;
    out_attr7.y = temp_126 + 0.0 - _sysViewUniformBlock.data[17].y;
    out_attr7.z = temp_127 + 0.0 - _sysViewUniformBlock.data[17].z;
    gl_Position.x = fma(temp_127, _sysViewUniformBlock.data[8].z, fma(temp_126, _sysViewUniformBlock.data[8].y, temp_124 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_127, _sysViewUniformBlock.data[9].z, fma(temp_126, _sysViewUniformBlock.data[9].y, temp_124 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_127, _sysViewUniformBlock.data[10].z, fma(temp_126, _sysViewUniformBlock.data[10].y, temp_124 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_127, _sysViewUniformBlock.data[11].z, fma(temp_126, _sysViewUniformBlock.data[11].y, temp_124 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_165, temp_164, -0.5), fma(temp_165, float(temp_112 < 0 || !(temp_112 == 0) ? ((int(uint(temp_112) >> 16)) * (int(uint(temp_159) >> 16)) << 16) + (temp_112 & 0xFFFF) * (temp_158 & 0xFFFF) + (temp_159 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_39, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_162, temp_163, -0.5), 0.0 - fma(temp_162, 0.0 - float(temp_112 < 0 || !(temp_112 == 0) ? 0 - temp_157 + (temp_151 + 0 - (uint(0 - ((int(uint(abs(temp_112)) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (abs(temp_112) & 0xFFFF) * (temp_151 & 0xFFFF) + (temp_153 << 16)) >= uint(abs(temp_112)) ? -1 : 0) ^ temp_157) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_39 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
