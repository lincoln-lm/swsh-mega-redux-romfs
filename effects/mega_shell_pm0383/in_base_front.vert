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
layout (location = 2) in vec4 sysLocalPosAttr;
layout (location = 3) in vec4 sysLocalVecAttr;
layout (location = 4) in vec4 sysScaleAttr;
layout (location = 5) in vec4 sysRandomAttr;

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
    int temp_11;
    int temp_12;
    precise float temp_13;
    precise float temp_14;
    int temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    bool temp_20;
    precise float temp_21;
    precise float temp_22;
    bool temp_23;
    bool temp_24;
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
    precise float temp_131;
    precise float temp_132;
    precise float temp_133;
    precise float temp_134;
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
    temp_10 = sysPosAttr.z;
    temp_11 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 1;
    temp_12 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 2;
    temp_13 = sysScaleAttr.w;
    temp_14 = fma(temp_5 + _sysEmitterStaticUniformBlock.data[15].z, 1.0 / _sysEmitterStaticUniformBlock.data[14].z, temp_9 * _sysEmitterStaticUniformBlock.data[15].x);
    temp_15 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 4;
    temp_16 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_17 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_18 = float(abs(0 - (temp_15 > 0 ? -1 : 0) + 0 - temp_15 >= 0 ? 0 : 1));
    temp_19 = temp_14 + 0.0 - floor(temp_14);
    temp_20 = sqrt(temp_17) > 0.0;
    temp_21 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_22 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_23 = 1.0 == _sysEmitterStaticUniformBlock.data[12].x;
    temp_24 = sqrt(temp_21) > 0.0;
    temp_25 = abs(fma(temp_19, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0)) + -0.0;
    temp_26 = fma(fma(cos(temp_14 * 6.28318548), 0.5, 0.5), 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0) * float(abs(0 - (temp_11 > 0 ? -1 : 0) + 0 - temp_11 >= 0 ? 0 : 1));
    temp_27 = sqrt(temp_22) > 0.0;
    temp_28 = sqrt(temp_21);
    temp_29 = temp_25;
    temp_30 = temp_26;
    temp_31 = temp_16;
    temp_32 = temp_18;
    temp_33 = temp_10;
    temp_34 = temp_21;
    temp_35 = temp_22;
    if (temp_23)
    {
        temp_28 = temp_16 * temp_16;
    }
    temp_36 = temp_28;
    if (temp_23)
    {
        temp_36 = temp_28 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_37 = temp_36;
    if (temp_23)
    {
        temp_29 = temp_36 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_38 = temp_29;
    if (temp_23)
    {
        temp_30 = temp_36 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_39 = temp_30;
    if (temp_23)
    {
        temp_37 = temp_36 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_40 = temp_37;
    if (!temp_23)
    {
        temp_41 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_42 = (temp_16 + 0.0 - fma(temp_41, exp2(temp_16 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_41)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_40 = temp_42 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_38 = temp_42 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_39 = temp_42 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!(_sysEmitterStaticUniformBlock.data[12].x == 1.0))
    {
        temp_43 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_31 = fma(exp2(temp_16 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_43, temp_43);
    }
    temp_44 = fma(temp_18, abs(0.0 - fma(temp_19 >= 0.5 ? 1.0 : 0.0, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, _sysEmitterStaticUniformBlock.data[14].x) + 1.0) + -0.0, fma(float(abs(0 - (temp_12 > 0 ? -1 : 0) + 0 - temp_12 >= 0 ? 0 : 1)), temp_25, temp_26));
    temp_45 = temp_44;
    if (temp_20)
    {
        temp_32 = inversesqrt(temp_17);
    }
    temp_46 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z;
    temp_47 = fma(fma(temp_31, sysLocalVecAttr.x, temp_40), temp_13, sysLocalPosAttr.x);
    temp_48 = temp_46;
    temp_49 = temp_32;
    if (temp_24)
    {
        temp_48 = inversesqrt(temp_21);
    }
    temp_50 = temp_44 * (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x;
    temp_51 = fma(fma(temp_31, sysLocalVecAttr.y, temp_38), temp_13, sysLocalPosAttr.y);
    temp_52 = fma(fma(temp_31, sysLocalVecAttr.z, temp_39), temp_13, sysLocalPosAttr.z);
    temp_53 = temp_44 * sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y;
    temp_54 = temp_53;
    temp_55 = temp_48;
    temp_56 = temp_50;
    if (temp_27)
    {
        temp_45 = inversesqrt(temp_22);
    }
    temp_57 = temp_50 * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_58 = temp_44 * temp_46 * _sysEmitterDynamicUniformBlock.data[3].w * temp_10;
    temp_59 = temp_57 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_60 = temp_57;
    temp_61 = temp_45;
    if (temp_20)
    {
        temp_33 = temp_32 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_62 = temp_33;
    if (!temp_20)
    {
        temp_62 = 0.0;
    }
    if (temp_20)
    {
        temp_54 = temp_32 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_63 = temp_54;
    if (temp_24)
    {
        temp_34 = temp_48 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_64 = temp_53 * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_65 = temp_34;
    if (!temp_20)
    {
        temp_63 = 0.0;
    }
    if (!temp_24)
    {
        temp_65 = 0.0;
    }
    if (temp_20)
    {
        temp_49 = temp_32 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_66 = temp_49;
    if (!temp_20)
    {
        temp_66 = 0.0;
    }
    if (temp_24)
    {
        temp_60 = temp_48 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_67 = temp_60;
    if (temp_27)
    {
        temp_35 = temp_45 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_68 = temp_35;
    if (!temp_24)
    {
        temp_67 = 0.0;
    }
    if (!temp_27)
    {
        temp_68 = 0.0;
    }
    if (temp_24)
    {
        temp_55 = temp_48 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_69 = temp_55;
    if (!temp_24)
    {
        temp_69 = 0.0;
    }
    if (temp_27)
    {
        temp_56 = temp_45 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_70 = temp_56;
    if (!temp_27)
    {
        temp_70 = 0.0;
    }
    temp_71 = fma(temp_52, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_51, _sysEmitterDynamicUniformBlock.data[4].y, temp_47 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    if (temp_27)
    {
        temp_61 = temp_45 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_72 = temp_61;
    if (!temp_27)
    {
        temp_72 = 0.0;
    }
    temp_73 = fma(temp_52, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_51, _sysEmitterDynamicUniformBlock.data[5].y, temp_47 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_74 = sysNormalAttr.x;
    temp_75 = sysNormalAttr.y;
    temp_76 = sysNormalAttr.z;
    temp_77 = temp_71 + fma(temp_58, temp_68, fma(temp_64, temp_65, temp_59 * temp_62));
    temp_78 = fma(temp_52, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_51, _sysEmitterDynamicUniformBlock.data[6].y, temp_47 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_79 = temp_73 + fma(temp_58, temp_70, fma(temp_64, temp_67, temp_59 * temp_63));
    temp_80 = temp_78 + fma(temp_58, temp_72, fma(temp_64, temp_69, temp_59 * temp_66));
    temp_81 = fma(temp_80, _sysViewUniformBlock.data[9].z, fma(temp_79, _sysViewUniformBlock.data[9].y, temp_77 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_82 = fma(temp_80, _sysViewUniformBlock.data[8].z, fma(temp_79, _sysViewUniformBlock.data[8].y, temp_77 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_83 = fma(temp_80, _sysViewUniformBlock.data[10].z, fma(temp_79, _sysViewUniformBlock.data[10].y, temp_77 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_84 = temp_80 + 0.0 - _sysViewUniformBlock.data[17].z;
    temp_85 = fma(0.0, temp_82, 0.0 * temp_81);
    temp_86 = fma(temp_80, _sysViewUniformBlock.data[11].z, fma(temp_79, _sysViewUniformBlock.data[11].y, temp_77 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_82;
    gl_Position.y = temp_81;
    gl_Position.z = temp_83;
    gl_Position.w = temp_86;
    temp_87 = fma(0.0, temp_73, fma(temp_70, temp_76, fma(temp_67, temp_75, temp_63 * temp_74)));
    temp_88 = temp_79 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_89 = fma(0.0, temp_78, fma(temp_72, temp_76, fma(temp_69, temp_75, temp_66 * temp_74)));
    temp_90 = fma(0.0, temp_71, fma(temp_68, temp_76, fma(temp_65, temp_75, temp_62 * temp_74)));
    out_attr3.z = fma(0.0, temp_86, temp_83 + temp_85);
    out_attr3.w = temp_86 + fma(0.0, temp_83, temp_85);
    temp_91 = temp_77 + 0.0 - _sysViewUniformBlock.data[17].x;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_92 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_93 = temp_92 + 0.0 - floor(temp_92);
    }
    else
    {
        temp_93 = temp_5 * (1.0 / temp_6);
    }
    temp_94 = fma(temp_80, _sysViewUniformBlock.data[0].z, fma(temp_79, _sysViewUniformBlock.data[0].y, temp_77 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_95 = fma(temp_80, _sysViewUniformBlock.data[2].z, fma(temp_79, _sysViewUniformBlock.data[2].y, temp_77 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_96 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_89, _sysViewUniformBlock.data[1].z, fma(temp_87, _sysViewUniformBlock.data[1].y, temp_90 * _sysViewUniformBlock.data[1].x)));
    temp_97 = fma(temp_80, _sysViewUniformBlock.data[1].z, fma(temp_79, _sysViewUniformBlock.data[1].y, temp_77 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_98 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_89, _sysViewUniformBlock.data[2].z, fma(temp_87, _sysViewUniformBlock.data[2].y, temp_90 * _sysViewUniformBlock.data[2].x)));
    temp_99 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_89, _sysViewUniformBlock.data[0].z, fma(temp_87, _sysViewUniformBlock.data[0].y, temp_90 * _sysViewUniformBlock.data[0].x)));
    temp_100 = 1.0 / (_sysEmitterStaticUniformBlock.data[61].w + 0.0 - _sysEmitterStaticUniformBlock.data[60].w);
    temp_101 = inversesqrt(fma(temp_95, temp_95, fma(temp_97, temp_97, temp_94 * temp_94)));
    temp_102 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_103 = inversesqrt(fma(temp_98, temp_98, fma(temp_96, temp_96, temp_99 * temp_99)));
    temp_104 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[62].w + _sysEmitterStaticUniformBlock.data[63].w);
    temp_105 = temp_94 * temp_101;
    temp_106 = temp_97 * temp_101;
    temp_107 = temp_95 * temp_101;
    temp_108 = temp_99 * temp_103;
    temp_109 = temp_96 * temp_103;
    temp_110 = clamp(max(temp_98 * temp_103, 0.2) + -0.0, 0.0, 1.0);
    temp_111 = fma(temp_107, temp_110, fma(temp_109, temp_106, temp_108 * temp_105));
    temp_112 = 1.0 / (_sysEmitterStaticUniformBlock.data[64].w + 0.0 - _sysEmitterStaticUniformBlock.data[63].w);
    temp_113 = temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_114 = temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[62].w;
    temp_115 = fma(temp_109 * temp_111, -2.0, temp_106);
    temp_116 = fma(temp_108 * temp_111, -2.0, temp_105);
    temp_117 = temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_118 = inversesqrt(fma(temp_84, temp_84, fma(temp_88, temp_88, temp_91 * temp_91)));
    temp_119 = temp_93 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_120 = temp_93 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_121 = fma(temp_119, 0.0 - temp_120, temp_119);
    temp_122 = temp_93 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_123 = temp_93 >= _sysEmitterStaticUniformBlock.data[63].w ? 1.0 : 0.0;
    temp_124 = fma(temp_120, 0.0 - temp_122, temp_120);
    temp_125 = temp_93 >= _sysEmitterStaticUniformBlock.data[64].w ? 1.0 : 0.0;
    temp_126 = 1.0 / (sqrt(fma(fma(temp_110 * temp_111, -2.0, temp_107) + 1.0, fma(temp_110 * temp_111, -2.0, temp_107) + 1.0, fma(0.0 + temp_115, 0.0 + temp_115, (0.0 + temp_116) * (0.0 + temp_116)))) * 2.0);
    temp_127 = temp_93 + 0.0 - _sysEmitterStaticUniformBlock.data[63].w;
    temp_128 = fma(temp_122, 0.0 - temp_123, temp_122);
    temp_129 = fma(temp_123, 0.0 - temp_125, temp_123);
    temp_130 = clamp((abs(fma(temp_89, temp_84 * temp_118, fma(temp_87, temp_88 * temp_118, temp_90 * temp_91 * temp_118))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    temp_131 = fma(temp_116, temp_126, 0.5);
    temp_132 = fma(temp_115, 0.0 - temp_126, 0.5);
    temp_133 = temp_132;
    temp_134 = temp_131;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_133 = 0.0 - temp_132 + 1.0;
    }
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_134 = 0.0 - temp_131 + 1.0;
    }
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.x = fma(temp_125, _sysEmitterStaticUniformBlock.data[64].x, fma(fma((_sysEmitterStaticUniformBlock.data[64].x + 0.0 - _sysEmitterStaticUniformBlock.data[63].x) * temp_112, temp_127, _sysEmitterStaticUniformBlock.data[63].x), temp_129, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].x + _sysEmitterStaticUniformBlock.data[63].x) * temp_104, temp_114, _sysEmitterStaticUniformBlock.data[62].x), temp_128, fma(fma((_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_102, temp_117, _sysEmitterStaticUniformBlock.data[61].x), temp_124, fma(fma((_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_100, temp_113, _sysEmitterStaticUniformBlock.data[60].x), temp_121, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x)))))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_125, _sysEmitterStaticUniformBlock.data[64].y, fma(fma((_sysEmitterStaticUniformBlock.data[64].y + 0.0 - _sysEmitterStaticUniformBlock.data[63].y) * temp_112, temp_127, _sysEmitterStaticUniformBlock.data[63].y), temp_129, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].y + _sysEmitterStaticUniformBlock.data[63].y) * temp_104, temp_114, _sysEmitterStaticUniformBlock.data[62].y), temp_128, fma(fma((_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_102, temp_117, _sysEmitterStaticUniformBlock.data[61].y), temp_124, fma(fma((_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_100, temp_113, _sysEmitterStaticUniformBlock.data[60].y), temp_121, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y)))))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_125, _sysEmitterStaticUniformBlock.data[64].z, fma(fma((_sysEmitterStaticUniformBlock.data[64].z + 0.0 - _sysEmitterStaticUniformBlock.data[63].z) * temp_112, temp_127, _sysEmitterStaticUniformBlock.data[63].z), temp_129, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[62].z + _sysEmitterStaticUniformBlock.data[63].z) * temp_104, temp_114, _sysEmitterStaticUniformBlock.data[62].z), temp_128, fma(fma((_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_102, temp_117, _sysEmitterStaticUniformBlock.data[61].z), temp_124, fma(fma((_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_100, temp_113, _sysEmitterStaticUniformBlock.data[60].z), temp_121, fma(temp_119, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z)))))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr4.x = fma(temp_130, -2.0, 3.0) * temp_130 * temp_130 * _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr2.x = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * temp_134 * _sysEmitterStaticUniformBlock.data[48].x;
    out_attr2.y = temp_133 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
