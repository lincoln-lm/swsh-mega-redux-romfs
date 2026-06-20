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
layout (location = 8) in vec4 sysEmtMat0Attr;
layout (location = 9) in vec4 sysEmtMat1Attr;
layout (location = 10) in vec4 sysEmtMat2Attr;

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
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    bool temp_23;
    precise float temp_24;
    bool temp_25;
    bool temp_26;
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
    bool temp_56;
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
    int temp_96;
    precise float temp_97;
    int temp_98;
    bool temp_99;
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
    precise float temp_118;
    precise float temp_119;
    int temp_120;
    int temp_121;
    precise float temp_122;
    precise float temp_123;
    int temp_124;
    int temp_125;
    precise float temp_126;
    precise float temp_127;
    uint temp_128;
    bool temp_129;
    precise float temp_130;
    uint temp_131;
    uint temp_132;
    precise float temp_133;
    int temp_134;
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
    precise float temp_145;
    precise float temp_146;
    bool temp_147;
    int temp_148;
    int temp_149;
    int temp_150;
    bool temp_151;
    int temp_152;
    int temp_153;
    int temp_154;
    uint temp_155;
    uint temp_156;
    uint temp_157;
    precise float temp_158;
    precise float temp_159;
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
    bool temp_172;
    int temp_173;
    int temp_174;
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
    precise float temp_193;
    int temp_194;
    int temp_195;
    precise float temp_196;
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
    temp_9 = sysEmtMat0Attr.x;
    temp_10 = sysEmtMat0Attr.y;
    temp_11 = sysEmtMat0Attr.z;
    temp_12 = sysEmtMat1Attr.x;
    temp_13 = sysEmtMat1Attr.y;
    temp_14 = sysEmtMat1Attr.z;
    temp_15 = sysEmtMat2Attr.x;
    temp_16 = sysEmtMat2Attr.y;
    temp_17 = sysEmtMat2Attr.z;
    temp_18 = sysRandomAttr.x;
    temp_19 = fma(temp_14, temp_14, temp_11 * temp_11);
    temp_20 = fma(temp_15, temp_15, fma(temp_12, temp_12, temp_9 * temp_9));
    temp_21 = fma(temp_16, temp_16, fma(temp_13, temp_13, temp_10 * temp_10));
    temp_22 = fma(temp_17, temp_17, temp_19);
    temp_23 = sqrt(temp_20) > 0.0;
    temp_24 = sysScaleAttr.x;
    temp_25 = sqrt(temp_21) > 0.0;
    temp_26 = sqrt(temp_22) > 0.0;
    temp_27 = temp_19;
    temp_28 = sqrt(temp_22);
    temp_29 = sqrt(temp_21);
    temp_30 = temp_20;
    temp_31 = temp_21;
    temp_32 = temp_24;
    if (temp_23)
    {
        temp_27 = inversesqrt(temp_20);
    }
    temp_33 = temp_27;
    if (!temp_23)
    {
        temp_33 = 0.0;
    }
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_33;
    if (temp_25)
    {
        temp_34 = inversesqrt(temp_21);
    }
    temp_36 = temp_34;
    if (!temp_23)
    {
        temp_28 = 0.0;
    }
    temp_37 = intBitsToFloat(undef);
    temp_38 = temp_28;
    if (temp_26)
    {
        temp_37 = inversesqrt(temp_22);
    }
    temp_39 = temp_37;
    if (!temp_23)
    {
        temp_29 = 0.0;
    }
    temp_40 = intBitsToFloat(undef);
    temp_41 = temp_29;
    if (!temp_25)
    {
        temp_40 = 0.0;
    }
    temp_42 = temp_40;
    if (!temp_25)
    {
        temp_30 = 0.0;
    }
    temp_43 = temp_30;
    if (!temp_26)
    {
        temp_39 = 0.0;
    }
    temp_44 = temp_39;
    if (!temp_26)
    {
        temp_31 = 0.0;
    }
    temp_45 = temp_31;
    if (temp_23)
    {
        temp_41 = temp_33 * temp_9;
    }
    if (temp_23)
    {
        temp_38 = temp_33 * temp_12;
    }
    if (temp_25)
    {
        temp_32 = temp_34 * temp_10;
    }
    temp_46 = temp_32;
    if (temp_25)
    {
        temp_42 = temp_34 * temp_13;
    }
    if (temp_25)
    {
        temp_43 = temp_34 * temp_16;
    }
    if (temp_26)
    {
        temp_45 = temp_39 * temp_11;
    }
    if (temp_26)
    {
        temp_36 = temp_39 * temp_14;
    }
    temp_47 = temp_36;
    if (temp_23)
    {
        temp_35 = temp_33 * temp_15;
    }
    if (temp_26)
    {
        temp_44 = temp_39 * temp_17;
    }
    if (!temp_25)
    {
        temp_46 = 0.0;
    }
    if (!temp_26)
    {
        temp_47 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_48 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_49 = temp_48 + 0.0 - floor(temp_48);
    }
    else
    {
        temp_49 = temp_5 * (1.0 / temp_6);
    }
    temp_50 = sysScaleAttr.w;
    temp_51 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_52 = temp_49 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_53 = temp_49 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_54 = temp_49 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_55 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_56 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_57 = fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x);
    temp_58 = fma(temp_53, 0.0 - temp_54, temp_53);
    temp_59 = fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y);
    temp_60 = temp_57;
    temp_61 = temp_59;
    temp_62 = temp_55;
    if (temp_56)
    {
        temp_60 = temp_55 * temp_55;
    }
    temp_63 = fma(fma(temp_52, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_51, _sysEmitterStaticUniformBlock.data[96].z), temp_58, fma(temp_53, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z));
    temp_64 = temp_60;
    temp_65 = temp_63;
    if (temp_56)
    {
        temp_64 = temp_60 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_66 = intBitsToFloat(undef);
    if (temp_56)
    {
        temp_66 = temp_64 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_67 = temp_66;
    if (temp_56)
    {
        temp_65 = temp_64 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_68 = temp_65;
    if (temp_56)
    {
        temp_61 = temp_64 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_69 = temp_61;
    if (!temp_56)
    {
        temp_70 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_71 = (temp_55 + 0.0 - fma(temp_70, exp2(temp_55 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_70)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_69 = temp_71 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_67 = temp_71 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_68 = temp_71 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_56)
    {
        temp_72 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_62 = fma(exp2(temp_55 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_72, temp_72);
    }
    temp_73 = fma(fma(temp_62, sysLocalVecAttr.x, temp_69), temp_50, sysLocalPosAttr.x);
    temp_74 = (clamp(min(0.0, temp_18) + -0.0, 0.0, 1.0) + temp_24) * fma(temp_54, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_52, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_51, _sysEmitterStaticUniformBlock.data[96].x), temp_58, temp_57)) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_75 = fma(fma(temp_62, sysLocalVecAttr.y, temp_67), temp_50, sysLocalPosAttr.y);
    temp_76 = fma(temp_54, _sysEmitterStaticUniformBlock.data[97].z, temp_63) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_77 = fma(fma(temp_62, sysLocalVecAttr.z, temp_68), temp_50, sysLocalPosAttr.z);
    temp_78 = fma(temp_54, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_52, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_51, _sysEmitterStaticUniformBlock.data[96].y), temp_58, temp_59)) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_79 = fma(temp_77, temp_11, fma(temp_75, temp_10, temp_73 * temp_9)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_78, 0.0 - temp_45, fma(temp_76, temp_46, temp_74 * temp_41));
    temp_80 = fma(temp_77, temp_14, fma(temp_75, temp_13, temp_73 * temp_12)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_78, 0.0 - temp_47, fma(temp_76, temp_42, temp_74 * temp_38));
    temp_81 = fma(temp_77, temp_17, fma(temp_75, temp_16, temp_73 * temp_15)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_78, 0.0 - temp_44, fma(temp_76, temp_43, temp_74 * temp_35));
    temp_82 = fma(temp_81, _sysViewUniformBlock.data[0].z, fma(temp_80, _sysViewUniformBlock.data[0].y, temp_79 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_83 = fma(temp_81, _sysViewUniformBlock.data[1].z, fma(temp_80, _sysViewUniformBlock.data[1].y, temp_79 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_84 = fma(temp_81, _sysViewUniformBlock.data[2].z, fma(temp_80, _sysViewUniformBlock.data[2].y, temp_79 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_85 = fma(temp_81, _sysViewUniformBlock.data[3].z, fma(temp_80, _sysViewUniformBlock.data[3].y, temp_79 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_86 = fma(temp_81, _sysViewUniformBlock.data[11].z, fma(temp_80, _sysViewUniformBlock.data[11].y, temp_79 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_81, _sysViewUniformBlock.data[8].z, fma(temp_80, _sysViewUniformBlock.data[8].y, temp_79 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_81, _sysViewUniformBlock.data[9].z, fma(temp_80, _sysViewUniformBlock.data[9].y, temp_79 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_85, _sysViewUniformBlock.data[6].w, fma(temp_84, _sysViewUniformBlock.data[6].z, fma(temp_83, _sysViewUniformBlock.data[6].y, temp_82 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_85, _sysViewUniformBlock.data[7].w, fma(temp_84, _sysViewUniformBlock.data[7].z, fma(temp_83, _sysViewUniformBlock.data[7].y, temp_82 * _sysViewUniformBlock.data[7].x)))) * temp_86;
    gl_Position.w = temp_86;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_87 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_88 = temp_87 + 0.0 - floor(temp_87);
    }
    else
    {
        temp_88 = temp_5 * (1.0 / temp_6);
    }
    temp_89 = temp_88 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_90 = temp_88 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_91 = temp_88 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_92 = temp_88 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_92, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_88 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_91, 0.0 - temp_92, temp_91), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_88 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_90, 0.0 - temp_91, temp_90), fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_88 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_90, 0.0 - temp_89, temp_89), fma(temp_89, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_93 = fma(temp_18 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_94 = temp_93 + 0.0 - floor(temp_93);
    }
    else
    {
        temp_94 = temp_5 * (1.0 / temp_6);
    }
    temp_95 = sysRandomAttr.y;
    temp_96 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_97 = sysRandomAttr.z;
    temp_98 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_99 = (1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1;
    temp_100 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_101 = 1.0 / (_sysEmitterStaticUniformBlock.data[78].w + 0.0 - _sysEmitterStaticUniformBlock.data[77].w);
    temp_102 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[78].w + _sysEmitterStaticUniformBlock.data[79].w);
    temp_103 = sysTexCoordAttr.x;
    temp_104 = sysTexCoordAttr.y;
    temp_105 = temp_94 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_106 = temp_94 + 0.0 - _sysEmitterStaticUniformBlock.data[77].w;
    temp_107 = temp_94 + 0.0 - _sysEmitterStaticUniformBlock.data[78].w;
    temp_108 = temp_94 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_109 = temp_94 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_110 = temp_94 >= _sysEmitterStaticUniformBlock.data[78].w ? 1.0 : 0.0;
    temp_111 = fma(temp_108, 0.0 - temp_109, temp_108);
    temp_112 = fma(temp_109, 0.0 - temp_110, temp_109);
    temp_113 = temp_104;
    temp_114 = temp_104;
    temp_115 = temp_104;
    temp_116 = temp_103;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_95 > 0.5) ? -1 : 0)) != 0))
    {
        temp_113 = 0.0 - temp_104 + 1.0;
    }
    temp_117 = int(trunc(_sysEmitterStaticUniformBlock.data[58].z));
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_114 = 0.0 - temp_104 + 1.0;
    }
    if (!(((!((0x1000000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.3509887E-38)) || !(temp_97 > 0.5) ? -1 : 0)) != 0))
    {
        temp_115 = 0.0 - temp_104 + 1.0;
    }
    temp_118 = temp_94 >= _sysEmitterStaticUniformBlock.data[79].w ? 1.0 : 0.0;
    temp_119 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_120 = floatBitsToInt(1.0 / float(uint(temp_96))) + -2;
    temp_121 = 0;
    if (temp_99)
    {
        temp_121 = 1;
    }
    temp_122 = fma(temp_110, 0.0 - temp_118, temp_110);
    temp_123 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[47].x, fma(temp_97, _sysEmitterStaticUniformBlock.data[47].z, _sysEmitterStaticUniformBlock.data[47].z + _sysEmitterStaticUniformBlock.data[47].y));
    temp_124 = floatBitsToInt(1.0 / float(uint(temp_98))) + -2;
    temp_125 = floatBitsToInt(1.0 / float(uint(temp_117))) + -2;
    temp_126 = fma(temp_119, temp_113, -0.5);
    temp_127 = temp_103;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_18 > 0.5) ? -1 : 0)) != 0))
    {
        temp_127 = 0.0 - temp_103 + 1.0;
    }
    temp_128 = uint(max(trunc(float(0u) * intBitsToFloat(temp_120)), 0.0));
    temp_129 = temp_121 == 1;
    temp_130 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_131 = uint(max(trunc(float(0u) * intBitsToFloat(temp_124)), 0.0));
    temp_132 = uint(max(trunc(float(0u) * intBitsToFloat(temp_125)), 0.0));
    temp_133 = fma(temp_130, temp_127, -0.5);
    temp_134 = (temp_96 & 0xFFFF) * (int(temp_128 >> 16)) & 0xFFFF | int(temp_128) << 16;
    temp_135 = temp_103;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_97 > 0.5) ? -1 : 0)) != 0))
    {
        temp_135 = 0.0 - temp_103 + 1.0;
    }
    temp_136 = temp_18;
    temp_137 = temp_95;
    temp_138 = temp_18;
    temp_139 = temp_95;
    if (!(((!((0x800000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.1754944E-38)) || !(temp_95 > 0.5) ? -1 : 0)) != 0))
    {
        temp_116 = 0.0 - temp_103 + 1.0;
    }
    if (temp_129)
    {
        temp_136 = temp_95;
    }
    temp_140 = temp_136;
    temp_141 = temp_136;
    if (temp_129)
    {
        temp_137 = temp_97;
    }
    temp_142 = temp_137;
    temp_143 = temp_137;
    if (temp_129)
    {
        temp_138 = temp_95;
    }
    temp_144 = temp_138;
    temp_145 = temp_138;
    if (temp_129)
    {
        temp_139 = temp_97;
    }
    temp_146 = temp_139;
    if (!temp_129)
    {
        temp_147 = temp_121 == 2;
        if (temp_147)
        {
            temp_140 = temp_97;
        }
        temp_141 = temp_140;
        if (temp_147)
        {
            temp_142 = temp_18;
        }
        temp_143 = temp_142;
        if (temp_147)
        {
            temp_144 = temp_18;
        }
        temp_145 = temp_144;
        if (temp_147)
        {
            temp_146 = temp_95;
        }
    }
    temp_148 = (temp_98 & 0xFFFF) * (int(temp_131 >> 16)) & 0xFFFF | int(temp_131) << 16;
    temp_149 = 0;
    if (temp_99)
    {
        temp_149 = 2;
    }
    temp_150 = (temp_117 & 0xFFFF) * (int(temp_132 >> 16)) & 0xFFFF | int(temp_132) << 16;
    temp_151 = temp_149 == 1;
    temp_152 = floatBitsToInt(1.0 / float(uint(abs(temp_96)))) + -2;
    temp_153 = floatBitsToInt(1.0 / float(uint(abs(temp_98)))) + -2;
    temp_154 = floatBitsToInt(1.0 / float(uint(abs(temp_117)))) + -2;
    temp_155 = uint(max(trunc(intBitsToFloat(temp_152) * float(0u)), 0.0));
    temp_156 = uint(max(trunc(float(0u) * intBitsToFloat(temp_153)), 0.0));
    temp_157 = uint(max(trunc(float(0u) * intBitsToFloat(temp_154)), 0.0));
    temp_158 = temp_18;
    temp_159 = temp_95;
    temp_160 = temp_97;
    temp_161 = temp_18;
    temp_162 = temp_95;
    if (temp_151)
    {
        temp_158 = temp_95;
    }
    temp_163 = temp_158;
    temp_164 = temp_158;
    if (temp_151)
    {
        temp_159 = temp_97;
    }
    temp_165 = temp_159;
    temp_166 = temp_159;
    if (temp_151)
    {
        temp_160 = temp_18;
    }
    temp_167 = temp_160;
    temp_168 = temp_160;
    if (temp_151)
    {
        temp_161 = temp_95;
    }
    temp_169 = temp_161;
    temp_170 = temp_161;
    if (temp_151)
    {
        temp_162 = temp_97;
    }
    temp_171 = temp_162;
    if (!temp_151)
    {
        temp_172 = temp_149 == 2;
        if (temp_172)
        {
            temp_163 = temp_97;
        }
        temp_164 = temp_163;
        if (temp_172)
        {
            temp_165 = temp_18;
        }
        temp_166 = temp_165;
        if (temp_172)
        {
            temp_169 = temp_18;
        }
        temp_170 = temp_169;
        if (temp_172)
        {
            temp_167 = temp_95;
        }
        temp_168 = temp_167;
        if (temp_172)
        {
            temp_171 = temp_95;
        }
    }
    temp_173 = (abs(temp_96) & 0xFFFF) * (int(temp_155 >> 16)) & 0xFFFF | int(temp_155) << 16;
    temp_174 = (abs(temp_117) & 0xFFFF) * (int(temp_157 >> 16)) & 0xFFFF | int(temp_157) << 16;
    temp_175 = (abs(temp_98) & 0xFFFF) * (int(temp_156 >> 16)) & 0xFFFF | int(temp_156) << 16;
    temp_176 = int(temp_128) + int(uint(max(trunc(intBitsToFloat(temp_120) * float(uint(0 - ((int(uint(temp_96) >> 16)) * (int(uint(temp_134) >> 16)) << 16) + (temp_96 & 0xFFFF) * (int(temp_128) & 0xFFFF) + (temp_134 << 16)))), 0.0)));
    temp_177 = int(temp_155) + int(uint(max(trunc(intBitsToFloat(temp_152) * float(uint(0 - ((int(uint(abs(temp_96)) >> 16)) * (int(uint(temp_173) >> 16)) << 16) + (abs(temp_96) & 0xFFFF) * (int(temp_155) & 0xFFFF) + (temp_173 << 16)))), 0.0)));
    temp_178 = (temp_96 & 0xFFFF) * (int(uint(temp_176) >> 16)) & 0xFFFF | temp_176 << 16;
    temp_179 = (abs(temp_96) & 0xFFFF) * (int(uint(temp_177) >> 16)) & 0xFFFF | temp_177 << 16;
    temp_180 = int(temp_132) + int(uint(max(trunc(intBitsToFloat(temp_125) * float(uint(0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_150) >> 16)) << 16) + (temp_117 & 0xFFFF) * (int(temp_132) & 0xFFFF) + (temp_150 << 16)))), 0.0)));
    temp_181 = int(temp_131) + int(uint(max(trunc(intBitsToFloat(temp_124) * float(uint(0 - ((int(uint(temp_98) >> 16)) * (int(uint(temp_148) >> 16)) << 16) + (temp_98 & 0xFFFF) * (int(temp_131) & 0xFFFF) + (temp_148 << 16)))), 0.0)));
    temp_182 = int(temp_156) + int(uint(max(trunc(intBitsToFloat(temp_153) * float(uint(0 - ((int(uint(abs(temp_98)) >> 16)) * (int(uint(temp_175) >> 16)) << 16) + (abs(temp_98) & 0xFFFF) * (int(temp_156) & 0xFFFF) + (temp_175 << 16)))), 0.0)));
    temp_183 = int(temp_157) + int(uint(max(trunc(intBitsToFloat(temp_154) * float(uint(0 - ((int(uint(abs(temp_117)) >> 16)) * (int(uint(temp_174) >> 16)) << 16) + (abs(temp_117) & 0xFFFF) * (int(temp_157) & 0xFFFF) + (temp_174 << 16)))), 0.0)));
    temp_184 = (temp_98 & 0xFFFF) * (int(uint(temp_181) >> 16)) & 0xFFFF | temp_181 << 16;
    temp_185 = (abs(temp_98) & 0xFFFF) * (int(uint(temp_182) >> 16)) & 0xFFFF | temp_182 << 16;
    temp_186 = (abs(temp_117) & 0xFFFF) * (int(uint(temp_183) >> 16)) & 0xFFFF | temp_183 << 16;
    temp_187 = 0 - temp_176 + ((uint(0 - ((int(uint(temp_96) >> 16)) * (int(uint(temp_178) >> 16)) << 16) + (temp_96 & 0xFFFF) * (temp_176 & 0xFFFF) + (temp_178 << 16)) >= uint(temp_96) ? -1 : 0));
    temp_188 = (temp_117 & 0xFFFF) * (int(uint(temp_180) >> 16)) & 0xFFFF | temp_180 << 16;
    temp_189 = 0 - temp_181 + ((uint(0 - ((int(uint(temp_98) >> 16)) * (int(uint(temp_184) >> 16)) << 16) + (temp_98 & 0xFFFF) * (temp_181 & 0xFFFF) + (temp_184 << 16)) >= uint(temp_98) ? -1 : 0));
    temp_190 = (temp_96 & 0xFFFF) * (int(uint(temp_187) >> 16)) & 0xFFFF | temp_187 << 16;
    temp_191 = 0 - int(uint(temp_96) >> 31);
    temp_192 = 0 - int(uint(temp_98) >> 31);
    temp_193 = 0.0 - fma(temp_5, _sysEmitterStaticUniformBlock.data[57].x, fma(temp_168, _sysEmitterStaticUniformBlock.data[57].z, _sysEmitterStaticUniformBlock.data[57].z + _sysEmitterStaticUniformBlock.data[57].y));
    temp_194 = 0 - temp_180 + ((uint(0 - ((int(uint(temp_117) >> 16)) * (int(uint(temp_188) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_180 & 0xFFFF) + (temp_188 << 16)) >= uint(temp_117) ? -1 : 0));
    temp_195 = 0 - int(uint(temp_117) >> 31);
    temp_196 = 1.0 / _sysEmitterStaticUniformBlock.data[58].w * _sysEmitterStaticUniformBlock.data[58].y;
    temp_197 = (temp_98 & 0xFFFF) * (int(uint(temp_189) >> 16)) & 0xFFFF | temp_189 << 16;
    temp_198 = (temp_117 & 0xFFFF) * (int(uint(temp_194) >> 16)) & 0xFFFF | temp_194 << 16;
    temp_199 = 1.0 / _sysEmitterStaticUniformBlock.data[58].z * _sysEmitterStaticUniformBlock.data[58].x;
    temp_200 = fma(temp_196, temp_115, -0.5);
    temp_201 = fma(temp_199, temp_116, -0.5);
    out_attr6.w = sysVertexColor0Attr.w;
    temp_202 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_203 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.z = _sysEmitterStaticUniformBlock.data[104].z;
    out_attr4.y = _sysEmitterStaticUniformBlock.data[104].x;
    out_attr5.y = _sysEmitterStaticUniformBlock.data[104].y;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = fma(temp_118, _sysEmitterStaticUniformBlock.data[79].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[78].x + _sysEmitterStaticUniformBlock.data[79].x) * temp_102, temp_107, _sysEmitterStaticUniformBlock.data[78].x), temp_122, fma(fma((_sysEmitterStaticUniformBlock.data[78].x + 0.0 - _sysEmitterStaticUniformBlock.data[77].x) * temp_101, temp_106, _sysEmitterStaticUniformBlock.data[77].x), temp_112, fma(fma(temp_105, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_100, _sysEmitterStaticUniformBlock.data[76].x), temp_111, fma(temp_108, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_118, _sysEmitterStaticUniformBlock.data[79].y, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[78].y + _sysEmitterStaticUniformBlock.data[79].y) * temp_102, temp_107, _sysEmitterStaticUniformBlock.data[78].y), temp_122, fma(fma((_sysEmitterStaticUniformBlock.data[78].y + 0.0 - _sysEmitterStaticUniformBlock.data[77].y) * temp_101, temp_106, _sysEmitterStaticUniformBlock.data[77].y), temp_112, fma(fma(temp_105, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_100, _sysEmitterStaticUniformBlock.data[76].y), temp_111, fma(temp_108, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_118, _sysEmitterStaticUniformBlock.data[79].z, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[78].z + _sysEmitterStaticUniformBlock.data[79].z) * temp_102, temp_107, _sysEmitterStaticUniformBlock.data[78].z), temp_122, fma(fma((_sysEmitterStaticUniformBlock.data[78].z + 0.0 - _sysEmitterStaticUniformBlock.data[77].z) * temp_101, temp_106, _sysEmitterStaticUniformBlock.data[77].z), temp_112, fma(fma(temp_105, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_100, _sysEmitterStaticUniformBlock.data[76].z), temp_111, fma(temp_108, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.w = _sysEmitterStaticUniformBlock.data[84].x * _sysEmitterDynamicUniformBlock.data[1].w;
    out_attr3.x = fma(fma(temp_201, cos(temp_193), 0.0 - temp_200 * sin(temp_193)), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].z, fma(temp_170, _sysEmitterStaticUniformBlock.data[56].z, _sysEmitterStaticUniformBlock.data[56].x + _sysEmitterStaticUniformBlock.data[56].z)), fma(temp_199, float(temp_117 < 0 || !(temp_117 == 0) ? ((int(uint(temp_117) >> 16)) * (int(uint(temp_198) >> 16)) << 16) + (temp_117 & 0xFFFF) * (temp_194 & 0xFFFF) + (temp_198 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[54].x, 0.0 - fma(temp_164 * _sysEmitterStaticUniformBlock.data[55].x, -2.0, _sysEmitterStaticUniformBlock.data[55].x + _sysEmitterStaticUniformBlock.data[54].z)))) + 0.5;
    out_attr2.x = fma(fma(cos(temp_123), temp_133, 0.0 - temp_126 * sin(temp_123)), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_18, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_130, float(temp_96 < 0 || !(temp_96 == 0) ? ((int(uint(temp_96) >> 16)) * (int(uint(temp_190) >> 16)) << 16) + (temp_96 & 0xFFFF) * (temp_187 & 0xFFFF) + (temp_190 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_18 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_133, sin(temp_123), cos(temp_123) * temp_126), fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_95, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].y + _sysEmitterStaticUniformBlock.data[46].w)), 0.0 - fma(temp_119, 0.0 - float(temp_96 < 0 || !(temp_96 == 0) ? 0 - temp_191 + (temp_177 + 0 - (uint(0 - ((int(uint(abs(temp_96)) >> 16)) * (int(uint(temp_179) >> 16)) << 16) + (abs(temp_96) & 0xFFFF) * (temp_177 & 0xFFFF) + (temp_179 << 16)) >= uint(abs(temp_96)) ? -1 : 0) ^ temp_191) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_95 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_145, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_202, temp_135, -0.5), fma(temp_202, float(temp_98 < 0 || !(temp_98 == 0) ? ((int(uint(temp_98) >> 16)) * (int(uint(temp_197) >> 16)) << 16) + (temp_98 & 0xFFFF) * (temp_189 & 0xFFFF) + (temp_197 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_141 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_146, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_203, temp_114, -0.5), 0.0 - fma(temp_203, 0.0 - float(temp_98 < 0 || !(temp_98 == 0) ? 0 - temp_192 + (temp_182 + 0 - (uint(0 - ((int(uint(abs(temp_98)) >> 16)) * (int(uint(temp_185) >> 16)) << 16) + (abs(temp_98) & 0xFFFF) * (temp_182 & 0xFFFF) + (temp_185 << 16)) >= uint(abs(temp_98)) ? -1 : 0) ^ temp_192) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_143 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr3.y = fma(fma(temp_201, sin(temp_193), cos(temp_193) * temp_200), fma(temp_5, _sysEmitterStaticUniformBlock.data[55].w, fma(temp_171, _sysEmitterStaticUniformBlock.data[56].w, _sysEmitterStaticUniformBlock.data[56].y + _sysEmitterStaticUniformBlock.data[56].w)), 0.0 - fma(temp_196, 0.0 - float(temp_117 < 0 || !(temp_117 == 0) ? 0 - temp_195 + (temp_183 + 0 - (uint(0 - ((int(uint(abs(temp_117)) >> 16)) * (int(uint(temp_186) >> 16)) << 16) + (abs(temp_117) & 0xFFFF) * (temp_183 & 0xFFFF) + (temp_186 << 16)) >= uint(abs(temp_117)) ? -1 : 0) ^ temp_195) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[54].y, fma(temp_166 * _sysEmitterStaticUniformBlock.data[55].y, -2.0, _sysEmitterStaticUniformBlock.data[55].y + _sysEmitterStaticUniformBlock.data[54].w)))) + 0.5;
    break;
} while (false);
}
