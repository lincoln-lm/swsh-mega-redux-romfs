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
    int temp_12;
    int temp_13;
    int temp_14;
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
    bool temp_43;
    precise float temp_44;
    bool temp_45;
    precise float temp_46;
    bool temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    precise float temp_51;
    precise float temp_52;
    bool temp_53;
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
    int temp_110;
    int temp_111;
    uint temp_112;
    int temp_113;
    uint temp_114;
    int temp_115;
    int temp_116;
    int temp_117;
    int temp_118;
    int temp_119;
    int temp_120;
    int temp_121;
    int temp_122;
    precise float temp_123;
    precise float temp_124;
    precise float temp_125;
    precise float temp_126;
    int temp_127;
    precise float temp_128;
    precise float temp_129;
    precise float temp_130;
    precise float temp_131;
    precise float temp_132;
    precise float temp_133;
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
    temp_10 = sysRandomAttr.y;
    temp_11 = sysRandomAttr.z;
    temp_12 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_13 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_14 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_15 = floor(temp_10 * 2.0);
    temp_16 = fma(temp_9 + temp_10, 0.5, -0.5);
    temp_17 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_18 = floor(temp_11 * 2.0);
    temp_19 = floor(temp_9 * 2.0);
    temp_20 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_21 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_22 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_23 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_24 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_25 = sysInitRotateAttr.x;
    temp_26 = sysInitRotateAttr.y;
    temp_27 = sysInitRotateAttr.z;
    temp_28 = fma(fma(temp_10 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_29 = (0.0 - temp_15 < 0.0 ? 1.0 : 0.0 + (temp_15 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_12 > 0 ? -1 : 0) + 0 - temp_12 >= 0 ? 0 : 1));
    temp_30 = temp_16 * _sysEmitterStaticUniformBlock.data[115].x;
    temp_31 = fma(fma(temp_9 + temp_11, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_32 = _sysEmitterStaticUniformBlock.data[114].w;
    temp_33 = temp_16;
    temp_34 = temp_24;
    temp_35 = temp_30;
    temp_36 = temp_17;
    temp_37 = temp_20;
    temp_38 = temp_22;
    temp_39 = temp_21;
    if (!temp_23)
    {
        temp_32 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    if (temp_23)
    {
        temp_33 = temp_5;
    }
    temp_40 = temp_33;
    if (!temp_23)
    {
        temp_34 = 1.0 / temp_32;
    }
    temp_41 = fma(temp_30, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_42 = (0.0 - temp_18 < 0.0 ? 1.0 : 0.0 + (temp_18 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_13 > 0 ? -1 : 0) + 0 - temp_13 >= 0 ? 0 : 1));
    temp_43 = sqrt(temp_22) > 0.0;
    temp_44 = (0.0 - temp_19 < 0.0 ? 1.0 : 0.0 + (temp_19 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - temp_14 >= 0 ? 0 : 1));
    if (!temp_23)
    {
        temp_40 = fma(exp2(temp_24), 0.0 - temp_34, temp_34);
    }
    temp_45 = sqrt(temp_20) > 0.0;
    temp_46 = temp_11 + -0.5;
    temp_47 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_48 = sysScaleAttr.w;
    temp_49 = fma(fma(temp_41 * temp_29, -2.0, temp_41), temp_40, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_29 * temp_25, -2.0, temp_25)));
    temp_50 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_51 = fma(fma(temp_31 * temp_44, -2.0, temp_31), temp_40, fma(temp_46, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_44 * temp_27, -2.0, temp_27)));
    temp_52 = fma(fma(temp_28 * temp_42, -2.0, temp_28), temp_40, fma(temp_10 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_42 * temp_26, -2.0, temp_26)));
    temp_53 = sqrt(temp_21) > 0.0;
    temp_54 = temp_46;
    temp_55 = temp_50;
    if (temp_47)
    {
        temp_54 = temp_50 * temp_50;
    }
    temp_56 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_57 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * temp_17;
    temp_58 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_59 = temp_54;
    temp_60 = temp_56;
    temp_61 = cos(temp_51);
    if (temp_47)
    {
        temp_59 = temp_54 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_62 = temp_56 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    if (temp_47)
    {
        temp_60 = temp_59 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_63 = temp_60;
    if (temp_47)
    {
        temp_35 = temp_59 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_64 = temp_35;
    if (temp_47)
    {
        temp_36 = temp_59 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_65 = temp_36;
    if (!temp_47)
    {
        temp_66 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_67 = (0.0 - fma(temp_66, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_50), 0.0 - temp_66) + temp_50) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_65 = temp_67 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_63 = temp_67 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_64 = temp_67 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_47)
    {
        temp_68 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_55 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_50), 0.0 - temp_68, temp_68);
    }
    if (temp_45)
    {
        temp_37 = inversesqrt(temp_20);
    }
    temp_69 = temp_37;
    if (temp_43)
    {
        temp_38 = inversesqrt(temp_22);
    }
    temp_70 = temp_38;
    if (temp_53)
    {
        temp_39 = inversesqrt(temp_21);
    }
    temp_71 = cos(temp_49) * cos(temp_52);
    temp_72 = sin(temp_49) * sin(temp_52);
    temp_73 = fma(temp_55, sysLocalVecAttr.z, temp_64);
    temp_74 = temp_57 * 0.0 - sin(temp_51);
    temp_75 = cos(temp_49) * sin(temp_52);
    temp_76 = sin(temp_49) * cos(temp_52);
    temp_77 = fma(fma(temp_55, sysLocalVecAttr.x, temp_65), temp_48, sysLocalPosAttr.x);
    temp_78 = temp_74;
    temp_79 = temp_73;
    temp_80 = temp_39;
    if (temp_45)
    {
        temp_61 = temp_37 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_81 = temp_61;
    if (!temp_45)
    {
        temp_81 = 0.0;
    }
    temp_82 = 0.0 + fma(cos(temp_51) * sin(temp_52), temp_58, fma(temp_62, cos(temp_51) * cos(temp_52), temp_74));
    temp_83 = fma(0.0, temp_62, 0.0 * temp_57);
    temp_84 = temp_83;
    temp_85 = temp_82;
    if (temp_43)
    {
        temp_78 = temp_38 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_86 = temp_78;
    if (!temp_43)
    {
        temp_86 = 0.0;
    }
    temp_87 = 0.0 + fma(fma(sin(temp_51), temp_75, 0.0 - temp_76), temp_58, fma(temp_62, fma(sin(temp_51), temp_71, temp_72), temp_57 * cos(temp_51) * cos(temp_49)));
    temp_88 = fma(fma(temp_55, sysLocalVecAttr.y, temp_63), temp_48, sysLocalPosAttr.y);
    temp_89 = fma(temp_73, temp_48, sysLocalPosAttr.z);
    temp_90 = temp_86;
    if (temp_45)
    {
        temp_79 = temp_37 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_91 = temp_79;
    if (temp_45)
    {
        temp_69 = temp_37 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_92 = temp_69;
    if (!temp_45)
    {
        temp_92 = 0.0;
    }
    if (temp_43)
    {
        temp_90 = temp_38 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_93 = temp_90;
    if (!temp_45)
    {
        temp_91 = 0.0;
    }
    if (!temp_43)
    {
        temp_93 = 0.0;
    }
    if (temp_53)
    {
        temp_84 = temp_39 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_94 = temp_84;
    if (!temp_53)
    {
        temp_94 = 0.0;
    }
    temp_95 = 0.0 + fma(fma(sin(temp_51), temp_72, temp_71), temp_58, fma(temp_62, fma(sin(temp_51), temp_76, 0.0 - temp_75), temp_57 * cos(temp_51) * sin(temp_49)));
    if (temp_43)
    {
        temp_70 = temp_38 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_96 = temp_70;
    if (!temp_43)
    {
        temp_96 = 0.0;
    }
    if (temp_53)
    {
        temp_85 = temp_39 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_97 = temp_85;
    if (!temp_53)
    {
        temp_97 = 0.0;
    }
    temp_98 = fma(0.0, temp_58, temp_83) + 1.0;
    if (temp_53)
    {
        temp_80 = temp_39 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_99 = temp_80;
    if (!temp_53)
    {
        temp_99 = 0.0;
    }
    temp_100 = fma(fma(temp_89, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_88, _sysEmitterDynamicUniformBlock.data[4].y, temp_77 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w, temp_98, fma(temp_95, temp_94, fma(temp_87, temp_86, temp_82 * temp_81)));
    temp_101 = fma(fma(temp_89, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_88, _sysEmitterDynamicUniformBlock.data[5].y, temp_77 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w, temp_98, fma(temp_95, temp_97, fma(temp_87, temp_93, temp_82 * temp_92)));
    temp_102 = fma(fma(temp_89, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_88, _sysEmitterDynamicUniformBlock.data[6].y, temp_77 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w, temp_98, fma(temp_95, temp_99, fma(temp_87, temp_96, temp_82 * temp_91)));
    temp_103 = fma(temp_102, _sysViewUniformBlock.data[0].z, fma(temp_101, _sysViewUniformBlock.data[0].y, temp_100 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_104 = fma(temp_102, _sysViewUniformBlock.data[1].z, fma(temp_101, _sysViewUniformBlock.data[1].y, temp_100 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_105 = fma(temp_102, _sysViewUniformBlock.data[2].z, fma(temp_101, _sysViewUniformBlock.data[2].y, temp_100 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_106 = fma(temp_102, _sysViewUniformBlock.data[3].z, fma(temp_101, _sysViewUniformBlock.data[3].y, temp_100 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_107 = fma(temp_102, _sysViewUniformBlock.data[11].z, fma(temp_101, _sysViewUniformBlock.data[11].y, temp_100 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_102, _sysViewUniformBlock.data[8].z, fma(temp_101, _sysViewUniformBlock.data[8].y, temp_100 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_102, _sysViewUniformBlock.data[9].z, fma(temp_101, _sysViewUniformBlock.data[9].y, temp_100 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_106, _sysViewUniformBlock.data[6].w, fma(temp_105, _sysViewUniformBlock.data[6].z, fma(temp_104, _sysViewUniformBlock.data[6].y, temp_103 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_106, _sysViewUniformBlock.data[7].w, fma(temp_105, _sysViewUniformBlock.data[7].z, fma(temp_104, _sysViewUniformBlock.data[7].y, temp_103 * _sysViewUniformBlock.data[7].x)))) * temp_107;
    gl_Position.w = temp_107;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_108 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_109 = temp_108 + 0.0 - floor(temp_108);
    }
    else
    {
        temp_109 = temp_5 * (1.0 / temp_6);
    }
    temp_110 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_111 = floatBitsToInt(1.0 / float(uint(temp_110))) + -2;
    temp_112 = uint(max(trunc(float(0u) * intBitsToFloat(temp_111)), 0.0));
    temp_113 = floatBitsToInt(1.0 / float(uint(abs(temp_110)))) + -2;
    temp_114 = uint(max(trunc(intBitsToFloat(temp_113) * float(0u)), 0.0));
    temp_115 = (temp_110 & 0xFFFF) * (int(temp_112 >> 16)) & 0xFFFF | int(temp_112) << 16;
    temp_116 = (abs(temp_110) & 0xFFFF) * (int(temp_114 >> 16)) & 0xFFFF | int(temp_114) << 16;
    temp_117 = int(temp_112) + int(uint(max(trunc(intBitsToFloat(temp_111) * float(uint(0 - ((int(uint(temp_110) >> 16)) * (int(uint(temp_115) >> 16)) << 16) + (temp_110 & 0xFFFF) * (int(temp_112) & 0xFFFF) + (temp_115 << 16)))), 0.0)));
    temp_118 = int(temp_114) + int(uint(max(trunc(intBitsToFloat(temp_113) * float(uint(0 - ((int(uint(abs(temp_110)) >> 16)) * (int(uint(temp_116) >> 16)) << 16) + (abs(temp_110) & 0xFFFF) * (int(temp_114) & 0xFFFF) + (temp_116 << 16)))), 0.0)));
    temp_119 = (abs(temp_110) & 0xFFFF) * (int(uint(temp_118) >> 16)) & 0xFFFF | temp_118 << 16;
    temp_120 = (temp_110 & 0xFFFF) * (int(uint(temp_117) >> 16)) & 0xFFFF | temp_117 << 16;
    temp_121 = 0 - int(uint(temp_110) >> 31);
    temp_122 = 0 - temp_117 + ((uint(0 - ((int(uint(temp_110) >> 16)) * (int(uint(temp_120) >> 16)) << 16) + (temp_110 & 0xFFFF) * (temp_117 & 0xFFFF) + (temp_120 << 16)) >= uint(temp_110) ? -1 : 0));
    temp_123 = sysTexCoordAttr.x;
    temp_124 = sysTexCoordAttr.y;
    temp_125 = temp_109 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_126 = temp_109 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_127 = (temp_110 & 0xFFFF) * (int(uint(temp_122) >> 16)) & 0xFFFF | temp_122 << 16;
    temp_128 = temp_109 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_129 = temp_109 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_130 = temp_123;
    temp_131 = temp_124;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_130 = 0.0 - temp_123 + 1.0;
    }
    temp_132 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    out_attr4.x = sysVertexColor0Attr.x;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_131 = 0.0 - temp_124 + 1.0;
    }
    out_attr4.y = sysVertexColor0Attr.y;
    temp_133 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    out_attr4.z = sysVertexColor0Attr.z;
    out_attr4.w = sysVertexColor0Attr.w;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_129, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[70].x + _sysEmitterStaticUniformBlock.data[71].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_109 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_128, 0.0 - temp_129, temp_128), fma(fma((_sysEmitterStaticUniformBlock.data[70].x + 0.0 - _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[70].w + 0.0 - _sysEmitterStaticUniformBlock.data[69].w)), temp_109 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_126, 0.0 - temp_128, temp_126), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[68].x + _sysEmitterStaticUniformBlock.data[69].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_109 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_126, 0.0 - temp_125, temp_125), fma(temp_125, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_9, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_132, temp_130, -0.5), fma(temp_132, float(temp_110 < 0 || !(temp_110 == 0) ? ((int(uint(temp_110) >> 16)) * (int(uint(temp_127) >> 16)) << 16) + (temp_110 & 0xFFFF) * (temp_122 & 0xFFFF) + (temp_127 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_9 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_133, temp_131, -0.5), 0.0 - fma(temp_133, 0.0 - float(temp_110 < 0 || !(temp_110 == 0) ? 0 - temp_121 + (temp_118 + 0 - (uint(0 - ((int(uint(abs(temp_110)) >> 16)) * (int(uint(temp_119) >> 16)) << 16) + (abs(temp_110) & 0xFFFF) * (temp_118 & 0xFFFF) + (temp_119 << 16)) >= uint(abs(temp_110)) ? -1 : 0) ^ temp_121) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
