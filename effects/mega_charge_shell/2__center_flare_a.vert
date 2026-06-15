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
layout (location = 3) in vec4 sysVertexColor0Attr;
layout (location = 4) in vec4 sysLocalPosAttr;
layout (location = 5) in vec4 sysLocalVecAttr;
layout (location = 6) in vec4 sysLocalDiffAttr;
layout (location = 7) in vec4 sysScaleAttr;
layout (location = 8) in vec4 sysRandomAttr;

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
    precise float temp_12;
    bool temp_13;
    precise float temp_14;
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
    bool temp_39;
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
    bool temp_90;
    int temp_91;
    int temp_92;
    precise float temp_93;
    precise float temp_94;
    precise float temp_95;
    precise float temp_96;
    int temp_97;
    precise float temp_98;
    precise float temp_99;
    precise float temp_100;
    precise float temp_101;
    precise float temp_102;
    int temp_103;
    int temp_104;
    precise float temp_105;
    int temp_106;
    int temp_107;
    bool temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    uint temp_112;
    uint temp_113;
    uint temp_114;
    uint temp_115;
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
    bool temp_127;
    int temp_128;
    int temp_129;
    int temp_130;
    int temp_131;
    int temp_132;
    bool temp_133;
    precise float temp_134;
    precise float temp_135;
    precise float temp_136;
    precise float temp_137;
    precise float temp_138;
    precise float temp_139;
    precise float temp_140;
    precise float temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
    bool temp_145;
    int temp_146;
    int temp_147;
    int temp_148;
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
    precise float temp_159;
    precise float temp_160;
    precise float temp_161;
    int temp_162;
    precise float temp_163;
    precise float temp_164;
    precise float temp_165;
    precise float temp_166;
    precise float temp_167;
    precise float temp_168;
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
    temp_9 = intBitsToFloat(temp_4);
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
    temp_10 = sysRandomAttr.x;
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_11) > 0.0;
    temp_14 = sysScaleAttr.x;
    temp_15 = sqrt(temp_12) > 0.0;
    temp_16 = intBitsToFloat(undef);
    temp_17 = temp_14;
    if (temp_13)
    {
        temp_16 = inversesqrt(temp_11);
    }
    temp_18 = temp_16;
    temp_19 = intBitsToFloat(undef);
    temp_20 = 0.0;
    if (temp_15)
    {
        temp_19 = inversesqrt(temp_12);
    }
    temp_21 = temp_19;
    if (!temp_13)
    {
        temp_18 = 0.0;
    }
    temp_22 = temp_18;
    if (!temp_15)
    {
        temp_9 = 0.0;
    }
    temp_23 = intBitsToFloat(undef);
    temp_24 = temp_9;
    if (!temp_15)
    {
        temp_23 = 0.0;
    }
    temp_25 = temp_23;
    if (!temp_15)
    {
        temp_21 = 0.0;
    }
    temp_26 = temp_21;
    if (!temp_13)
    {
        temp_17 = 0.0;
    }
    temp_27 = temp_17;
    if (temp_13)
    {
        temp_20 = temp_18 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_28 = temp_20;
    if (temp_13)
    {
        temp_27 = temp_18 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_29 = temp_27;
    if (temp_15)
    {
        temp_24 = temp_21 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    if (temp_15)
    {
        temp_25 = temp_21 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    if (temp_13)
    {
        temp_22 = temp_18 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_30 = temp_22;
    if (temp_15)
    {
        temp_26 = temp_21 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_31 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_32 = temp_31 + 0.0 - floor(temp_31);
    }
    else
    {
        temp_32 = temp_5 * (1.0 / temp_6);
    }
    temp_33 = temp_32 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_34 = sysLocalDiffAttr.x;
    temp_35 = sysLocalDiffAttr.y;
    temp_36 = sysLocalDiffAttr.z;
    temp_37 = 0.0 + fma(temp_36, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_35, _sysEmitterDynamicUniformBlock.data[5].y, temp_34 * _sysEmitterDynamicUniformBlock.data[5].x));
    temp_38 = 0.0 + fma(temp_36, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_35, _sysEmitterDynamicUniformBlock.data[6].y, temp_34 * _sysEmitterDynamicUniformBlock.data[6].x)) + 9.99999997E-07;
    temp_39 = temp_38 * temp_27 == temp_37 * temp_20;
    temp_40 = 0.0 + fma(temp_36, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_35, _sysEmitterDynamicUniformBlock.data[4].y, temp_34 * _sysEmitterDynamicUniformBlock.data[4].x));
    temp_41 = temp_32 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    if (temp_39)
    {
        temp_28 = fma(temp_24, 0.001, temp_20);
    }
    temp_42 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    if (temp_39)
    {
        temp_29 = fma(temp_25, 0.001, temp_27);
    }
    temp_43 = inversesqrt(fma(temp_38, temp_38, fma(temp_37, temp_37, temp_40 * temp_40)));
    temp_44 = temp_32 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    if (temp_39)
    {
        temp_30 = fma(temp_26, 0.001, temp_22);
    }
    temp_45 = fma(temp_33, 0.0 - temp_44, temp_33);
    temp_46 = temp_37 * temp_43;
    temp_47 = temp_38 * temp_43;
    temp_48 = temp_40 * temp_43;
    temp_49 = fma(temp_47, 0.0 - temp_29, 0.0 - temp_46 * 0.0 - temp_28);
    temp_50 = fma(temp_48, 0.0 - temp_28, 0.0 - temp_47 * 0.0 - temp_30);
    temp_51 = sysLocalPosAttr.x;
    temp_52 = sysLocalPosAttr.y;
    temp_53 = sysLocalPosAttr.z;
    temp_54 = fma(temp_46, 0.0 - temp_30, 0.0 - temp_48 * 0.0 - temp_29);
    temp_55 = inversesqrt(fma(temp_54, temp_54, fma(temp_50, temp_50, temp_49 * temp_49)));
    temp_56 = fma(temp_44, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_41, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_42, _sysEmitterStaticUniformBlock.data[96].y), temp_45, fma(temp_33, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_57 = (clamp(min(0.0, temp_10) + -0.0, 0.0, 1.0) + temp_14) * fma(temp_44, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_41, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_42, _sysEmitterStaticUniformBlock.data[96].x), temp_45, fma(temp_33, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_58 = temp_54 * temp_55;
    temp_59 = temp_49 * temp_55;
    temp_60 = temp_50 * temp_55;
    temp_61 = fma(temp_44, _sysEmitterStaticUniformBlock.data[97].z, fma(fma(temp_41, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_42, _sysEmitterStaticUniformBlock.data[96].z), temp_45, fma(temp_33, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_62 = 0.0 + fma(temp_53, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_52, _sysEmitterDynamicUniformBlock.data[4].y, temp_51 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_61, fma(temp_47, temp_60, 0.0 - temp_46 * temp_58), fma(temp_57, temp_59, temp_56 * temp_48));
    temp_63 = 0.0 + fma(temp_53, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_52, _sysEmitterDynamicUniformBlock.data[5].y, temp_51 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_61, fma(temp_48, temp_58, 0.0 - temp_47 * temp_59), fma(temp_57, temp_60, temp_56 * temp_46));
    temp_64 = 0.0 + fma(temp_53, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_52, _sysEmitterDynamicUniformBlock.data[6].y, temp_51 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_61, fma(temp_46, temp_59, 0.0 - temp_48 * temp_60), fma(temp_57, temp_58, temp_56 * temp_47));
    temp_65 = fma(temp_64, _sysViewUniformBlock.data[9].z, fma(temp_63, _sysViewUniformBlock.data[9].y, temp_62 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_66 = fma(temp_64, _sysViewUniformBlock.data[8].z, fma(temp_63, _sysViewUniformBlock.data[8].y, temp_62 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_67 = fma(temp_64, _sysViewUniformBlock.data[10].z, fma(temp_63, _sysViewUniformBlock.data[10].y, temp_62 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_68 = fma(temp_64, _sysViewUniformBlock.data[11].z, fma(temp_63, _sysViewUniformBlock.data[11].y, temp_62 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_69 = 0.0 * temp_65;
    gl_Position.x = temp_66;
    gl_Position.y = temp_65;
    gl_Position.z = temp_67;
    gl_Position.w = temp_68;
    temp_70 = fma(0.0, temp_66, temp_69);
    out_attr4.x = fma(temp_68, 0.5, fma(0.0, temp_67, fma(temp_66, 0.5, temp_69)));
    out_attr4.y = fma(temp_68, 0.5, fma(0.0, temp_67, fma(0.0, temp_66, temp_65 * -0.5)));
    out_attr4.z = fma(0.0, temp_68, temp_67 + temp_70);
    out_attr4.w = temp_68 + fma(0.0, temp_67, temp_70);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_71 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_72 = temp_71 + 0.0 - floor(temp_71);
    }
    else
    {
        temp_72 = temp_5 * (1.0 / temp_6);
    }
    temp_73 = temp_72 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_74 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_75 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_76 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[62].w + _sysEmitterStaticUniformBlock.data[63].w);
    temp_77 = temp_72 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_78 = temp_72 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_79 = fma(temp_73, 0.0 - temp_77, temp_73);
    temp_80 = temp_72 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_81 = temp_72 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_82 = temp_72 >= _sysEmitterStaticUniformBlock.data[63].w ? 1.0 : 0.0;
    temp_83 = fma(temp_77, 0.0 - temp_80, temp_77);
    temp_84 = temp_72 + 0.0 - _sysEmitterStaticUniformBlock.data[62].w;
    temp_85 = fma(temp_80, 0.0 - temp_82, temp_80);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_86 = fma(temp_10 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_87 = temp_86 + 0.0 - floor(temp_86);
    }
    else
    {
        temp_87 = temp_5 * (1.0 / temp_6);
    }
    temp_88 = sysRandomAttr.y;
    temp_89 = sysRandomAttr.z;
    temp_90 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_91 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_92 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_93 = temp_87 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_94 = sysTexCoordAttr.x;
    temp_95 = sysTexCoordAttr.y;
    temp_96 = temp_87 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_97 = 0;
    temp_98 = temp_89;
    temp_99 = temp_10;
    temp_100 = temp_88;
    temp_101 = temp_95;
    if (temp_90)
    {
        temp_97 = 1;
    }
    temp_102 = temp_87 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_103 = floatBitsToInt(1.0 / float(uint(temp_91))) + -2;
    temp_104 = floatBitsToInt(1.0 / float(uint(abs(temp_91)))) + -2;
    temp_105 = temp_94;
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_88 > 0.5) ? -1 : 0)) != 0))
    {
        temp_105 = 0.0 - temp_94 + 1.0;
    }
    temp_106 = floatBitsToInt(1.0 / float(uint(temp_92))) + -2;
    temp_107 = floatBitsToInt(1.0 / float(uint(abs(temp_92)))) + -2;
    temp_108 = temp_97 == 1;
    temp_109 = temp_87 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_110 = temp_94;
    temp_111 = temp_94;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_110 = 0.0 - temp_94 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_89 > 0.5) ? -1 : 0)) != 0))
    {
        temp_111 = 0.0 - temp_94 + 1.0;
    }
    temp_112 = uint(max(trunc(float(0u) * intBitsToFloat(temp_106)), 0.0));
    temp_113 = uint(max(trunc(float(0u) * intBitsToFloat(temp_103)), 0.0));
    temp_114 = uint(max(trunc(intBitsToFloat(temp_107) * float(0u)), 0.0));
    temp_115 = uint(max(trunc(float(0u) * intBitsToFloat(temp_104)), 0.0));
    temp_116 = temp_10;
    temp_117 = temp_88;
    if (temp_108)
    {
        temp_116 = temp_88;
    }
    temp_118 = temp_116;
    temp_119 = temp_116;
    if (temp_108)
    {
        temp_117 = temp_89;
    }
    temp_120 = temp_117;
    temp_121 = temp_117;
    if (temp_108)
    {
        temp_98 = temp_10;
    }
    temp_122 = temp_98;
    temp_123 = temp_98;
    if (temp_108)
    {
        temp_99 = temp_88;
    }
    temp_124 = temp_99;
    temp_125 = temp_99;
    if (temp_108)
    {
        temp_100 = temp_89;
    }
    temp_126 = temp_100;
    if (!temp_108)
    {
        temp_127 = temp_97 == 2;
        if (temp_127)
        {
            temp_118 = temp_89;
        }
        temp_119 = temp_118;
        if (temp_127)
        {
            temp_120 = temp_10;
        }
        temp_121 = temp_120;
        if (temp_127)
        {
            temp_122 = temp_88;
        }
        temp_123 = temp_122;
        if (temp_127)
        {
            temp_124 = temp_10;
        }
        temp_125 = temp_124;
        if (temp_127)
        {
            temp_126 = temp_88;
        }
    }
    temp_128 = (temp_92 & 0xFFFF) * (int(temp_112 >> 16)) & 0xFFFF | int(temp_112) << 16;
    temp_129 = (temp_91 & 0xFFFF) * (int(temp_113 >> 16)) & 0xFFFF | int(temp_113) << 16;
    temp_130 = 0;
    if (temp_90)
    {
        temp_130 = 2;
    }
    temp_131 = (abs(temp_92) & 0xFFFF) * (int(temp_114 >> 16)) & 0xFFFF | int(temp_114) << 16;
    temp_132 = (abs(temp_91) & 0xFFFF) * (int(temp_115 >> 16)) & 0xFFFF | int(temp_115) << 16;
    temp_133 = temp_130 == 1;
    temp_134 = temp_10;
    temp_135 = temp_88;
    temp_136 = temp_10;
    if (temp_133)
    {
        temp_134 = temp_88;
    }
    temp_137 = temp_134;
    temp_138 = temp_134;
    if (temp_133)
    {
        temp_135 = temp_89;
    }
    temp_139 = temp_135;
    temp_140 = temp_135;
    if (temp_133)
    {
        temp_136 = temp_88;
    }
    temp_141 = temp_88;
    temp_142 = temp_136;
    temp_143 = temp_136;
    if (temp_133)
    {
        temp_141 = temp_89;
    }
    temp_144 = temp_141;
    if (!temp_133)
    {
        temp_145 = temp_130 == 2;
        if (temp_145)
        {
            temp_137 = temp_89;
        }
        temp_138 = temp_137;
        if (temp_145)
        {
            temp_139 = temp_10;
        }
        temp_140 = temp_139;
        if (temp_145)
        {
            temp_142 = temp_10;
        }
        temp_143 = temp_142;
        if (temp_145)
        {
            temp_144 = temp_88;
        }
    }
    temp_146 = int(temp_112) + int(uint(max(trunc(intBitsToFloat(temp_106) * float(uint(0 - ((int(uint(temp_92) >> 16)) * (int(uint(temp_128) >> 16)) << 16) + (temp_92 & 0xFFFF) * (int(temp_112) & 0xFFFF) + (temp_128 << 16)))), 0.0)));
    temp_147 = int(temp_113) + int(uint(max(trunc(intBitsToFloat(temp_103) * float(uint(0 - ((int(uint(temp_91) >> 16)) * (int(uint(temp_129) >> 16)) << 16) + (temp_91 & 0xFFFF) * (int(temp_113) & 0xFFFF) + (temp_129 << 16)))), 0.0)));
    temp_148 = int(temp_114) + int(uint(max(trunc(intBitsToFloat(temp_107) * float(uint(0 - ((int(uint(abs(temp_92)) >> 16)) * (int(uint(temp_131) >> 16)) << 16) + (abs(temp_92) & 0xFFFF) * (int(temp_114) & 0xFFFF) + (temp_131 << 16)))), 0.0)));
    temp_149 = (temp_92 & 0xFFFF) * (int(uint(temp_146) >> 16)) & 0xFFFF | temp_146 << 16;
    temp_150 = int(temp_115) + int(uint(max(trunc(intBitsToFloat(temp_104) * float(uint(0 - ((int(uint(abs(temp_91)) >> 16)) * (int(uint(temp_132) >> 16)) << 16) + (abs(temp_91) & 0xFFFF) * (int(temp_115) & 0xFFFF) + (temp_132 << 16)))), 0.0)));
    temp_151 = (temp_91 & 0xFFFF) * (int(uint(temp_147) >> 16)) & 0xFFFF | temp_147 << 16;
    temp_152 = (abs(temp_92) & 0xFFFF) * (int(uint(temp_148) >> 16)) & 0xFFFF | temp_148 << 16;
    temp_153 = (abs(temp_91) & 0xFFFF) * (int(uint(temp_150) >> 16)) & 0xFFFF | temp_150 << 16;
    temp_154 = 0 - temp_146 + ((uint(0 - ((int(uint(temp_92) >> 16)) * (int(uint(temp_149) >> 16)) << 16) + (temp_92 & 0xFFFF) * (temp_146 & 0xFFFF) + (temp_149 << 16)) >= uint(temp_92) ? -1 : 0));
    temp_155 = 0 - temp_147 + ((uint(0 - ((int(uint(temp_91) >> 16)) * (int(uint(temp_151) >> 16)) << 16) + (temp_91 & 0xFFFF) * (temp_147 & 0xFFFF) + (temp_151 << 16)) >= uint(temp_91) ? -1 : 0));
    temp_156 = (temp_92 & 0xFFFF) * (int(uint(temp_154) >> 16)) & 0xFFFF | temp_154 << 16;
    temp_157 = (temp_91 & 0xFFFF) * (int(uint(temp_155) >> 16)) & 0xFFFF | temp_155 << 16;
    temp_158 = 0 - int(uint(temp_91) >> 31);
    temp_159 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_160 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_161 = temp_95;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_161 = 0.0 - temp_95 + 1.0;
    }
    temp_162 = 0 - int(uint(temp_92) >> 31);
    temp_163 = fma(temp_159, temp_111, -0.5);
    temp_164 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[52].x, fma(temp_123, _sysEmitterStaticUniformBlock.data[52].z, _sysEmitterStaticUniformBlock.data[52].z + _sysEmitterStaticUniformBlock.data[52].y));
    temp_165 = fma(temp_160, temp_161, -0.5);
    out_attr6.x = sysVertexColor0Attr.x;
    temp_166 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    out_attr6.y = sysVertexColor0Attr.y;
    out_attr6.z = sysVertexColor0Attr.z;
    temp_167 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_168 = temp_95;
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_89 > 0.5) ? -1 : 0)) != 0))
    {
        temp_168 = 0.0 - temp_95 + 1.0;
    }
    out_attr6.w = sysVertexColor0Attr.w;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_88 > 0.5) ? -1 : 0)) != 0))
    {
        temp_101 = 0.0 - temp_95 + 1.0;
    }
    out_attr5.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr0.x = fma(temp_82, _sysEmitterStaticUniformBlock.data[63].x, fma(fma(temp_84, (0.0 - _sysEmitterStaticUniformBlock.data[62].x + _sysEmitterStaticUniformBlock.data[63].x) * temp_76, _sysEmitterStaticUniformBlock.data[62].x), temp_85, fma(fma((_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_75, temp_81, _sysEmitterStaticUniformBlock.data[61].x), temp_83, fma(fma(temp_78, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_74, _sysEmitterStaticUniformBlock.data[60].x), temp_79, fma(temp_73, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_82, _sysEmitterStaticUniformBlock.data[63].y, fma(fma(temp_84, (0.0 - _sysEmitterStaticUniformBlock.data[62].y + _sysEmitterStaticUniformBlock.data[63].y) * temp_76, _sysEmitterStaticUniformBlock.data[62].y), temp_85, fma(fma((_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_75, temp_81, _sysEmitterStaticUniformBlock.data[61].y), temp_83, fma(fma(temp_78, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_74, _sysEmitterStaticUniformBlock.data[60].y), temp_79, fma(temp_73, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_82, _sysEmitterStaticUniformBlock.data[63].z, fma(fma(temp_84, (0.0 - _sysEmitterStaticUniformBlock.data[62].z + _sysEmitterStaticUniformBlock.data[63].z) * temp_76, _sysEmitterStaticUniformBlock.data[62].z), temp_85, fma(fma((_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_75, temp_81, _sysEmitterStaticUniformBlock.data[61].z), temp_83, fma(fma(temp_78, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_74, _sysEmitterStaticUniformBlock.data[60].z), temp_79, fma(temp_73, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_109, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_87 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_102, 0.0 - temp_109, temp_102), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_87 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_96, 0.0 - temp_102, temp_96), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_87 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_96, 0.0 - temp_93, temp_93), fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = temp_110 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = temp_101 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr2.z = fma(fma(cos(temp_164), temp_163, 0.0 - temp_165 * sin(temp_164)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_125, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_159, float(temp_92 < 0 || !(temp_92 == 0) ? ((int(uint(temp_92) >> 16)) * (int(uint(temp_156) >> 16)) << 16) + (temp_92 & 0xFFFF) * (temp_154 & 0xFFFF) + (temp_156 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_119 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_163, sin(temp_164), temp_165 * cos(temp_164)), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_126, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].y + _sysEmitterStaticUniformBlock.data[51].w)), 0.0 - fma(temp_160, 0.0 - float(temp_92 < 0 || !(temp_92 == 0) ? 0 - temp_162 + (temp_148 + 0 - (uint(0 - ((int(uint(abs(temp_92)) >> 16)) * (int(uint(temp_152) >> 16)) << 16) + (abs(temp_92) & 0xFFFF) * (temp_148 & 0xFFFF) + (temp_152 << 16)) >= uint(abs(temp_92)) ? -1 : 0) ^ temp_162) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_121 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_143, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_166, temp_105, -0.5), fma(temp_166, float(temp_91 < 0 || !(temp_91 == 0) ? ((int(uint(temp_91) >> 16)) * (int(uint(temp_157) >> 16)) << 16) + (temp_91 & 0xFFFF) * (temp_155 & 0xFFFF) + (temp_157 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_138 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr3.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_144, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].w + _sysEmitterStaticUniformBlock.data[56].y)), fma(temp_167, temp_168, -0.5), 0.0 - fma(temp_167, 0.0 - float(temp_91 < 0 || !(temp_91 == 0) ? 0 - temp_158 + (temp_150 + 0 - (uint(0 - ((int(uint(abs(temp_91)) >> 16)) * (int(uint(temp_153) >> 16)) << 16) + (abs(temp_91) & 0xFFFF) * (temp_150 & 0xFFFF) + (temp_153 << 16)) >= uint(abs(temp_91)) ? -1 : 0) ^ temp_158) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_140 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
