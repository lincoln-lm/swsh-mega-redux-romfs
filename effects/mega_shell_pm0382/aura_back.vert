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
    precise float temp_13;
    precise float temp_14;
    int temp_15;
    int temp_16;
    precise float temp_17;
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
    bool temp_86;
    bool temp_87;
    int temp_88;
    precise float temp_89;
    precise float temp_90;
    precise float temp_91;
    precise float temp_92;
    precise float temp_93;
    int temp_94;
    precise float temp_95;
    precise float temp_96;
    int temp_97;
    precise float temp_98;
    int temp_99;
    precise float temp_100;
    uint temp_101;
    int temp_102;
    precise float temp_103;
    int temp_104;
    int temp_105;
    int temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    precise float temp_110;
    precise float temp_111;
    precise float temp_112;
    int temp_113;
    uint temp_114;
    int temp_115;
    uint temp_116;
    bool temp_117;
    int temp_118;
    uint temp_119;
    precise float temp_120;
    uint temp_121;
    precise float temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    precise float temp_127;
    precise float temp_128;
    precise float temp_129;
    int temp_130;
    int temp_131;
    precise float temp_132;
    precise float temp_133;
    precise float temp_134;
    bool temp_135;
    uint temp_136;
    int temp_137;
    bool temp_138;
    int temp_139;
    int temp_140;
    int temp_141;
    precise float temp_142;
    precise float temp_143;
    precise float temp_144;
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
    bool temp_157;
    precise float temp_158;
    precise float temp_159;
    int temp_160;
    int temp_161;
    int temp_162;
    int temp_163;
    int temp_164;
    int temp_165;
    precise float temp_166;
    int temp_167;
    int temp_168;
    precise float temp_169;
    int temp_170;
    int temp_171;
    int temp_172;
    precise float temp_173;
    precise float temp_174;
    int temp_175;
    precise float temp_176;
    int temp_177;
    int temp_178;
    int temp_179;
    int temp_180;
    int temp_181;
    int temp_182;
    int temp_183;
    int temp_184;
    int temp_185;
    precise float temp_186;
    precise float temp_187;
    precise float temp_188;
    precise float temp_189;
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
    temp_12 = sysRandomAttr.y;
    temp_13 = sysRandomAttr.z;
    temp_14 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_15 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_16 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_17 = floor(temp_9 * 2.0);
    temp_18 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_19 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_20 = float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - temp_16 >= 0 ? 0 : 1));
    temp_21 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[98].w + _sysEmitterStaticUniformBlock.data[99].w);
    temp_22 = floor(temp_12 * 2.0);
    temp_23 = floor(temp_13 * 2.0);
    temp_24 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_25 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_26 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[98].w;
    temp_27 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_28 = fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_14, _sysEmitterStaticUniformBlock.data[96].y);
    temp_29 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_30 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_31 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_32 = temp_28;
    temp_33 = temp_20;
    if (!temp_27)
    {
        temp_31 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_34 = temp_31;
    if (!temp_27)
    {
        temp_34 = 1.0 / temp_31;
    }
    temp_35 = fma(temp_29, 0.0 - temp_30, temp_29);
    temp_36 = temp_11 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_37 = fma(fma(temp_9 + temp_12, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_38 = fma(fma(temp_12 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_39 = fma(fma(temp_9 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_40 = sysInitRotateAttr.x;
    temp_41 = sysInitRotateAttr.y;
    temp_42 = sysInitRotateAttr.z;
    temp_43 = fma(temp_30, 0.0 - temp_36, temp_30);
    temp_44 = temp_11 >= _sysEmitterStaticUniformBlock.data[99].w ? 1.0 : 0.0;
    temp_45 = temp_39;
    if (temp_27)
    {
        temp_32 = temp_5;
    }
    temp_46 = temp_32;
    if (!temp_27)
    {
        temp_46 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w))), 0.0 - temp_34, temp_34);
    }
    temp_47 = (0.0 - temp_17 < 0.0 ? 1.0 : 0.0 + (temp_17 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_18 > 0 ? -1 : 0) + 0 - temp_18 >= 0 ? 0 : 1));
    temp_48 = fma(temp_36, 0.0 - temp_44, temp_36);
    temp_49 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_50 = (0.0 - temp_23 < 0.0 ? 1.0 : 0.0 + (temp_23 > 0.0 ? 1.0 : 0.0)) * temp_20;
    temp_51 = (0.0 - temp_22 < 0.0 ? 1.0 : 0.0 + (temp_22 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_15 > 0 ? -1 : 0) + 0 - temp_15 >= 0 ? 0 : 1));
    temp_52 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_53 = temp_39 * temp_47;
    temp_54 = temp_53;
    temp_55 = temp_52;
    if (temp_49)
    {
        temp_33 = temp_52 * temp_52;
    }
    temp_56 = temp_33;
    if (temp_49)
    {
        temp_56 = temp_33 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_57 = temp_56;
    if (temp_49)
    {
        temp_45 = temp_56 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_58 = temp_45;
    if (temp_49)
    {
        temp_54 = temp_56 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_59 = temp_54;
    if (temp_49)
    {
        temp_57 = temp_56 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_60 = temp_57;
    if (!temp_49)
    {
        temp_61 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_62 = (temp_52 + 0.0 - fma(temp_61, exp2(temp_52 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_61)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_58 = temp_62 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_59 = temp_62 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_60 = temp_62 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_49)
    {
        temp_63 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_55 = fma(exp2(temp_52 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_63, temp_63);
    }
    temp_64 = sysScaleAttr.w;
    temp_65 = fma(fma(temp_53, -2.0, temp_39), temp_46, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_47 * temp_42, -2.0, temp_42)));
    temp_66 = fma(fma(temp_37 * temp_51, -2.0, temp_37), temp_46, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_51 * temp_40, -2.0, temp_40)));
    temp_67 = fma(fma(temp_38 * temp_50, -2.0, temp_38), temp_46, fma(temp_12 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_50 * temp_41, -2.0, temp_41)));
    temp_68 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_44, _sysEmitterStaticUniformBlock.data[99].x, fma(fma(temp_26, (0.0 - _sysEmitterStaticUniformBlock.data[98].x + _sysEmitterStaticUniformBlock.data[99].x) * temp_21, _sysEmitterStaticUniformBlock.data[98].x), temp_48, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_19, temp_25, _sysEmitterStaticUniformBlock.data[97].x), temp_43, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_14, _sysEmitterStaticUniformBlock.data[96].x), temp_35, fma(temp_29, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_69 = fma(temp_44, _sysEmitterStaticUniformBlock.data[99].y, fma(fma(temp_26, (0.0 - _sysEmitterStaticUniformBlock.data[98].y + _sysEmitterStaticUniformBlock.data[99].y) * temp_21, _sysEmitterStaticUniformBlock.data[98].y), temp_48, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_19, temp_25, _sysEmitterStaticUniformBlock.data[97].y), temp_43, fma(temp_28, temp_35, fma(temp_29, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_70 = fma(temp_44, _sysEmitterStaticUniformBlock.data[99].z, fma(fma(temp_26, (0.0 - _sysEmitterStaticUniformBlock.data[98].z + _sysEmitterStaticUniformBlock.data[99].z) * temp_21, _sysEmitterStaticUniformBlock.data[98].z), temp_48, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_19, temp_25, _sysEmitterStaticUniformBlock.data[97].z), temp_43, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_14, _sysEmitterStaticUniformBlock.data[96].z), temp_35, fma(temp_29, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_71 = cos(temp_66) * cos(temp_67);
    temp_72 = sin(temp_66) * sin(temp_67);
    temp_73 = sin(temp_66) * cos(temp_67);
    temp_74 = cos(temp_66) * sin(temp_67);
    temp_75 = fma(fma(temp_55, sysLocalVecAttr.x, temp_58), temp_64, sysLocalPosAttr.x);
    temp_76 = fma(cos(temp_65) * sin(temp_67), temp_70, fma(temp_68, cos(temp_65) * cos(temp_67), temp_69 * 0.0 - sin(temp_65)));
    temp_77 = fma(fma(temp_55, sysLocalVecAttr.y, temp_59), temp_64, sysLocalPosAttr.y);
    temp_78 = fma(fma(sin(temp_65), temp_74, 0.0 - temp_73), temp_70, fma(temp_68, fma(sin(temp_65), temp_71, temp_72), temp_69 * cos(temp_65) * cos(temp_66)));
    temp_79 = fma(fma(sin(temp_65), temp_72, temp_71), temp_70, fma(temp_68, fma(sin(temp_65), temp_73, 0.0 - temp_74), temp_69 * cos(temp_65) * sin(temp_66)));
    temp_80 = fma(fma(temp_55, sysLocalVecAttr.z, temp_60), temp_64, sysLocalPosAttr.z);
    temp_81 = fma(temp_80, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_77, _sysEmitterDynamicUniformBlock.data[4].y, temp_75 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_79, _sysViewUniformBlock.data[12].z, fma(temp_78, _sysViewUniformBlock.data[12].y, temp_76 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w;
    temp_82 = fma(temp_80, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_77, _sysEmitterDynamicUniformBlock.data[5].y, temp_75 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_79, _sysViewUniformBlock.data[13].z, fma(temp_78, _sysViewUniformBlock.data[13].y, temp_76 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w;
    temp_83 = fma(temp_80, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_77, _sysEmitterDynamicUniformBlock.data[6].y, temp_75 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_79, _sysViewUniformBlock.data[14].z, fma(temp_78, _sysViewUniformBlock.data[14].y, temp_76 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w;
    gl_Position.x = fma(temp_83, _sysViewUniformBlock.data[8].z, fma(temp_82, _sysViewUniformBlock.data[8].y, temp_81 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_83, _sysViewUniformBlock.data[9].z, fma(temp_82, _sysViewUniformBlock.data[9].y, temp_81 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_83, _sysViewUniformBlock.data[10].z, fma(temp_82, _sysViewUniformBlock.data[10].y, temp_81 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_83, _sysViewUniformBlock.data[11].z, fma(temp_82, _sysViewUniformBlock.data[11].y, temp_81 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_84 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_85 = temp_84 + 0.0 - floor(temp_84);
    }
    else
    {
        temp_85 = temp_5 * (1.0 / temp_6);
    }
    temp_86 = temp_12 > 0.5;
    temp_87 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_88 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_89 = temp_5 * (1.0 / temp_6);
    temp_90 = sysTexCoordAttr.x;
    temp_91 = sysTexCoordAttr.y;
    temp_92 = temp_85 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_93 = temp_85 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_94 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_95 = temp_89 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_96 = temp_89 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_97 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    temp_98 = temp_85 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_99 = floatBitsToInt(1.0 / float(uint(temp_88))) + -2;
    temp_100 = temp_89 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_101 = uint(max(trunc(float(0u) * intBitsToFloat(temp_99)), 0.0));
    temp_102 = floatBitsToInt(1.0 / float(uint(temp_94))) + -2;
    temp_103 = temp_89 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_104 = (temp_88 & 0xFFFF) * (int(temp_101 >> 16)) & 0xFFFF | int(temp_101) << 16;
    temp_105 = floatBitsToInt(1.0 / float(uint(temp_97))) + -2;
    temp_106 = 0;
    temp_107 = temp_91;
    if (temp_87)
    {
        temp_106 = 1;
    }
    temp_108 = temp_90;
    temp_109 = temp_90;
    temp_110 = temp_90;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_108 = 0.0 - temp_90 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_109 = 0.0 - temp_90 + 1.0;
    }
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !temp_86 ? -1 : 0)) != 0))
    {
        temp_110 = 0.0 - temp_90 + 1.0;
    }
    temp_111 = temp_91;
    temp_112 = temp_91;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !temp_86 ? -1 : 0)) != 0))
    {
        temp_111 = 0.0 - temp_91 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_112 = 0.0 - temp_91 + 1.0;
    }
    temp_113 = floatBitsToInt(1.0 / float(uint(abs(temp_88)))) + -2;
    temp_114 = uint(max(trunc(float(0u) * intBitsToFloat(temp_102)), 0.0));
    temp_115 = floatBitsToInt(1.0 / float(uint(abs(temp_94)))) + -2;
    temp_116 = uint(max(trunc(float(0u) * intBitsToFloat(temp_105)), 0.0));
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_107 = 0.0 - temp_91 + 1.0;
    }
    temp_117 = temp_106 == 1;
    temp_118 = floatBitsToInt(1.0 / float(uint(abs(temp_97)))) + -2;
    temp_119 = uint(max(trunc(intBitsToFloat(temp_113) * float(0u)), 0.0));
    temp_120 = temp_89 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_121 = uint(max(trunc(float(0u) * intBitsToFloat(temp_115)), 0.0));
    temp_122 = temp_9;
    temp_123 = temp_12;
    temp_124 = temp_9;
    temp_125 = temp_12;
    if (temp_117)
    {
        temp_122 = temp_12;
    }
    temp_126 = temp_122;
    temp_127 = temp_122;
    if (temp_117)
    {
        temp_123 = temp_13;
    }
    temp_128 = temp_123;
    temp_129 = temp_123;
    if (temp_117)
    {
        temp_124 = temp_12;
    }
    temp_130 = (temp_94 & 0xFFFF) * (int(temp_114 >> 16)) & 0xFFFF | int(temp_114) << 16;
    temp_131 = (temp_97 & 0xFFFF) * (int(temp_116 >> 16)) & 0xFFFF | int(temp_116) << 16;
    temp_132 = temp_124;
    temp_133 = temp_124;
    if (temp_117)
    {
        temp_125 = temp_13;
    }
    temp_134 = temp_125;
    if (!temp_117)
    {
        temp_135 = temp_106 == 2;
        if (temp_135)
        {
            temp_126 = temp_13;
        }
        temp_127 = temp_126;
        if (temp_135)
        {
            temp_128 = temp_9;
        }
        temp_129 = temp_128;
        if (temp_135)
        {
            temp_132 = temp_9;
        }
        temp_133 = temp_132;
        if (temp_135)
        {
            temp_134 = temp_12;
        }
    }
    temp_136 = uint(max(trunc(float(0u) * intBitsToFloat(temp_118)), 0.0));
    temp_137 = 0;
    if (temp_87)
    {
        temp_137 = 2;
    }
    temp_138 = temp_137 == 1;
    temp_139 = (abs(temp_88) & 0xFFFF) * (int(temp_119 >> 16)) & 0xFFFF | int(temp_119) << 16;
    temp_140 = (abs(temp_97) & 0xFFFF) * (int(temp_136 >> 16)) & 0xFFFF | int(temp_136) << 16;
    temp_141 = (abs(temp_94) & 0xFFFF) * (int(temp_121 >> 16)) & 0xFFFF | int(temp_121) << 16;
    temp_142 = temp_89 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_143 = temp_9;
    temp_144 = temp_12;
    temp_145 = temp_13;
    temp_146 = temp_9;
    temp_147 = temp_12;
    if (temp_138)
    {
        temp_143 = temp_12;
    }
    temp_148 = temp_143;
    temp_149 = temp_143;
    if (temp_138)
    {
        temp_144 = temp_13;
    }
    temp_150 = temp_144;
    temp_151 = temp_144;
    if (temp_138)
    {
        temp_145 = temp_9;
    }
    temp_152 = temp_145;
    temp_153 = temp_145;
    if (temp_138)
    {
        temp_146 = temp_12;
    }
    temp_154 = temp_146;
    temp_155 = temp_146;
    if (temp_138)
    {
        temp_147 = temp_13;
    }
    temp_156 = temp_147;
    if (!temp_138)
    {
        temp_157 = temp_137 == 2;
        if (temp_157)
        {
            temp_148 = temp_13;
        }
        temp_149 = temp_148;
        if (temp_157)
        {
            temp_150 = temp_9;
        }
        temp_151 = temp_150;
        if (temp_157)
        {
            temp_154 = temp_9;
        }
        temp_155 = temp_154;
        if (temp_157)
        {
            temp_152 = temp_12;
        }
        temp_153 = temp_152;
        if (temp_157)
        {
            temp_156 = temp_12;
        }
    }
    temp_158 = temp_89 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_159 = temp_89 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_160 = int(temp_121) + int(uint(max(trunc(intBitsToFloat(temp_115) * float(uint(0 - ((int(uint(abs(temp_94)) >> 16)) * (int(uint(temp_141) >> 16)) << 16) + (abs(temp_94) & 0xFFFF) * (int(temp_121) & 0xFFFF) + (temp_141 << 16)))), 0.0)));
    temp_161 = int(temp_114) + int(uint(max(trunc(intBitsToFloat(temp_102) * float(uint(0 - ((int(uint(temp_94) >> 16)) * (int(uint(temp_130) >> 16)) << 16) + (temp_94 & 0xFFFF) * (int(temp_114) & 0xFFFF) + (temp_130 << 16)))), 0.0)));
    temp_162 = int(temp_101) + int(uint(max(trunc(intBitsToFloat(temp_99) * float(uint(0 - ((int(uint(temp_88) >> 16)) * (int(uint(temp_104) >> 16)) << 16) + (temp_88 & 0xFFFF) * (int(temp_101) & 0xFFFF) + (temp_104 << 16)))), 0.0)));
    temp_163 = int(temp_116) + int(uint(max(trunc(intBitsToFloat(temp_105) * float(uint(0 - ((int(uint(temp_97) >> 16)) * (int(uint(temp_131) >> 16)) << 16) + (temp_97 & 0xFFFF) * (int(temp_116) & 0xFFFF) + (temp_131 << 16)))), 0.0)));
    temp_164 = (temp_94 & 0xFFFF) * (int(uint(temp_161) >> 16)) & 0xFFFF | temp_161 << 16;
    temp_165 = int(temp_119) + int(uint(max(trunc(intBitsToFloat(temp_113) * float(uint(0 - ((int(uint(abs(temp_88)) >> 16)) * (int(uint(temp_139) >> 16)) << 16) + (abs(temp_88) & 0xFFFF) * (int(temp_119) & 0xFFFF) + (temp_139 << 16)))), 0.0)));
    temp_166 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_153, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_167 = (temp_88 & 0xFFFF) * (int(uint(temp_162) >> 16)) & 0xFFFF | temp_162 << 16;
    temp_168 = int(temp_136) + int(uint(max(trunc(intBitsToFloat(temp_118) * float(uint(0 - ((int(uint(abs(temp_97)) >> 16)) * (int(uint(temp_140) >> 16)) << 16) + (abs(temp_97) & 0xFFFF) * (int(temp_136) & 0xFFFF) + (temp_140 << 16)))), 0.0)));
    temp_169 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_170 = (abs(temp_88) & 0xFFFF) * (int(uint(temp_165) >> 16)) & 0xFFFF | temp_165 << 16;
    temp_171 = (abs(temp_94) & 0xFFFF) * (int(uint(temp_160) >> 16)) & 0xFFFF | temp_160 << 16;
    temp_172 = (temp_97 & 0xFFFF) * (int(uint(temp_163) >> 16)) & 0xFFFF | temp_163 << 16;
    temp_173 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_174 = fma(temp_169, temp_107, -0.5);
    temp_175 = (abs(temp_97) & 0xFFFF) * (int(uint(temp_168) >> 16)) & 0xFFFF | temp_168 << 16;
    temp_176 = fma(temp_173, temp_110, -0.5);
    temp_177 = 0 - temp_162 + ((uint(0 - ((int(uint(temp_88) >> 16)) * (int(uint(temp_167) >> 16)) << 16) + (temp_88 & 0xFFFF) * (temp_162 & 0xFFFF) + (temp_167 << 16)) >= uint(temp_88) ? -1 : 0));
    temp_178 = 0 - temp_161 + ((uint(0 - ((int(uint(temp_94) >> 16)) * (int(uint(temp_164) >> 16)) << 16) + (temp_94 & 0xFFFF) * (temp_161 & 0xFFFF) + (temp_164 << 16)) >= uint(temp_94) ? -1 : 0));
    temp_179 = 0 - temp_163 + ((uint(0 - ((int(uint(temp_97) >> 16)) * (int(uint(temp_172) >> 16)) << 16) + (temp_97 & 0xFFFF) * (temp_163 & 0xFFFF) + (temp_172 << 16)) >= uint(temp_97) ? -1 : 0));
    temp_180 = (temp_88 & 0xFFFF) * (int(uint(temp_177) >> 16)) & 0xFFFF | temp_177 << 16;
    temp_181 = (temp_94 & 0xFFFF) * (int(uint(temp_178) >> 16)) & 0xFFFF | temp_178 << 16;
    temp_182 = 0 - int(uint(temp_88) >> 31);
    temp_183 = 0 - int(uint(temp_94) >> 31);
    temp_184 = 0 - int(uint(temp_97) >> 31);
    temp_185 = (temp_97 & 0xFFFF) * (int(uint(temp_179) >> 16)) & 0xFFFF | temp_179 << 16;
    out_attr5.x = sysVertexColor0Attr.x;
    out_attr5.y = sysVertexColor0Attr.y;
    temp_186 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_187 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_188 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    out_attr0.w = fma(temp_98, _sysEmitterStaticUniformBlock.data[70].x, fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_85 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_93, 0.0 - temp_98, temp_93), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_85 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_93, 0.0 - temp_92, temp_92), fma(temp_92, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x)))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr5.z = sysVertexColor0Attr.z;
    temp_189 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.w = sysVertexColor0Attr.w;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr4.y = fma(temp_159, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_158, 0.0 - temp_159, temp_158), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_142, 0.0 - temp_158, temp_142), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_120, 0.0 - temp_142, temp_120), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_103, 0.0 - temp_120, temp_103), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_100, 0.0 - temp_103, temp_100), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_96, 0.0 - temp_100, temp_96), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_89 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_96, 0.0 - temp_95, temp_95), fma(temp_95, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    out_attr2.x = fma(fma(temp_186, temp_108, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_186, float(temp_88 < 0 || !(temp_88 == 0) ? ((int(uint(temp_88) >> 16)) * (int(uint(temp_180) >> 16)) << 16) + (temp_88 & 0xFFFF) * (temp_177 & 0xFFFF) + (temp_180 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_12, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_188, temp_111, -0.5), 0.0 - fma(temp_188, 0.0 - float(temp_88 < 0 || !(temp_88 == 0) ? 0 - temp_182 + (temp_165 + 0 - (uint(0 - ((int(uint(abs(temp_88)) >> 16)) * (int(uint(temp_170) >> 16)) << 16) + (abs(temp_88) & 0xFFFF) * (temp_165 & 0xFFFF) + (temp_170 << 16)) >= uint(abs(temp_88)) ? -1 : 0) ^ temp_182) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_12 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_133, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_187, temp_109, -0.5), fma(temp_187, float(temp_94 < 0 || !(temp_94 == 0) ? ((int(uint(temp_94) >> 16)) * (int(uint(temp_181) >> 16)) << 16) + (temp_94 & 0xFFFF) * (temp_178 & 0xFFFF) + (temp_181 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_127 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_134, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_189, temp_112, -0.5), 0.0 - fma(temp_189, 0.0 - float(temp_94 < 0 || !(temp_94 == 0) ? 0 - temp_183 + (temp_160 + 0 - (uint(0 - ((int(uint(abs(temp_94)) >> 16)) * (int(uint(temp_171) >> 16)) << 16) + (abs(temp_94) & 0xFFFF) * (temp_160 & 0xFFFF) + (temp_171 << 16)) >= uint(abs(temp_94)) ? -1 : 0) ^ temp_183) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_129 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.x = fma(fma(temp_176, cos(temp_166), 0.0 - temp_174 * sin(temp_166)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_155, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].z + _sysEmitterStaticUniformBlock.data[56].x)), fma(temp_173, float(temp_97 < 0 || !(temp_97 == 0) ? ((int(uint(temp_97) >> 16)) * (int(uint(temp_185) >> 16)) << 16) + (temp_97 & 0xFFFF) * (temp_179 & 0xFFFF) + (temp_185 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_149 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr3.y = fma(fma(temp_176, sin(temp_166), cos(temp_166) * temp_174), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_156, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_169, 0.0 - float(temp_97 < 0 || !(temp_97 == 0) ? 0 - temp_184 + (temp_168 + 0 - (uint(0 - ((int(uint(abs(temp_97)) >> 16)) * (int(uint(temp_175) >> 16)) << 16) + (abs(temp_97) & 0xFFFF) * (temp_168 & 0xFFFF) + (temp_175 << 16)) >= uint(abs(temp_97)) ? -1 : 0) ^ temp_184) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_151 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
