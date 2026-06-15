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
layout (location = 6) out vec4 out_attr6;


void main() { do
{
    precise float temp_0;
    bool temp_1;
    precise float temp_2;
    int temp_3;
    int temp_4;
    precise float temp_5;
    bool temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    bool temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    bool temp_18;
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
    bool temp_31;
    precise float temp_32;
    precise float temp_33;
    precise float temp_34;
    bool temp_35;
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
    int temp_64;
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
    int temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    uint temp_83;
    int temp_84;
    precise float temp_85;
    precise float temp_86;
    precise float temp_87;
    uint temp_88;
    int temp_89;
    precise float temp_90;
    precise float temp_91;
    precise float temp_92;
    precise float temp_93;
    int temp_94;
    precise float temp_95;
    precise float temp_96;
    precise float temp_97;
    precise float temp_98;
    precise float temp_99;
    precise float temp_100;
    precise float temp_101;
    int temp_102;
    precise float temp_103;
    precise float temp_104;
    int temp_105;
    int temp_106;
    precise float temp_107;
    precise float temp_108;
    int temp_109;
    int temp_110;
    int temp_111;
    precise float temp_112;
    int temp_113;
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
    temp_6 = temp_5 >= float(int(trunc(sysLocalPosAttr.w)));
    if (temp_6)
    {
        out_attr4.x = 0.0;
    }
    temp_7 = intBitsToFloat(undef);
    if (temp_6)
    {
        temp_7 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_6)
    {
        temp_4 = floatBitsToInt(temp_7 * 5.0);
    }
    if (temp_6)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_4);
    }
    if (!(!temp_6))
    {
        break;
    }
    temp_8 = sysRandomAttr.x;
    temp_9 = sysPosAttr.x;
    temp_10 = sysScaleAttr.w;
    temp_11 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_13 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_14 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z;
    temp_15 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_16 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_17 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_18 = sqrt(temp_12) > 0.0;
    temp_19 = sysLocalVecAttr.z;
    temp_20 = temp_14 * _sysEmitterDynamicUniformBlock.data[3].w;
    temp_21 = intBitsToFloat(undef);
    temp_22 = temp_9;
    temp_23 = temp_14;
    temp_24 = temp_17;
    temp_25 = temp_20;
    temp_26 = temp_12;
    temp_27 = temp_16;
    temp_28 = temp_19;
    temp_29 = _sysEmitterStaticUniformBlock.data[12].x;
    if (temp_13)
    {
        temp_21 = temp_11 * temp_11;
    }
    temp_30 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_31 = sqrt(temp_15) > 0.0;
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_21;
    temp_34 = temp_30;
    if (temp_18)
    {
        temp_32 = inversesqrt(temp_12);
    }
    temp_35 = sqrt(temp_16) > 0.0;
    temp_36 = sysNormalAttr.x;
    temp_37 = sysNormalAttr.y;
    temp_38 = sysNormalAttr.z;
    temp_39 = temp_32;
    temp_40 = temp_37;
    if (temp_13)
    {
        temp_22 = temp_21 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_31)
    {
        temp_23 = inversesqrt(temp_15);
    }
    temp_41 = (clamp(min(0.0, temp_8) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_42 = temp_30 * temp_17;
    temp_43 = temp_20 * sysPosAttr.z;
    temp_44 = temp_41;
    temp_45 = temp_23;
    if (temp_13)
    {
        temp_24 = temp_11;
    }
    temp_46 = temp_24;
    if (temp_13)
    {
        temp_25 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_47 = temp_41 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_9);
    temp_48 = temp_25;
    if (temp_13)
    {
        temp_33 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_49 = temp_33;
    if (temp_13)
    {
        temp_34 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_50 = temp_34;
    if (!temp_13)
    {
        temp_51 = temp_11 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x));
        temp_52 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_53 = (temp_11 + 0.0 - fma(temp_52, exp2(temp_51), 0.0 - temp_52)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_48 = temp_53 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_49 = temp_53 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_50 = temp_53 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_44 = temp_51;
        temp_26 = temp_53;
    }
    temp_54 = temp_44;
    temp_55 = temp_26;
    if (!temp_13)
    {
        temp_56 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_46 = fma(exp2(temp_11 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_56, temp_56);
    }
    if (temp_18)
    {
        temp_54 = temp_32 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_57 = temp_54;
    if (temp_35)
    {
        temp_27 = inversesqrt(temp_16);
    }
    temp_58 = temp_27;
    if (temp_18)
    {
        temp_55 = temp_32 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_59 = fma(temp_46, sysLocalVecAttr.y, temp_48);
    temp_60 = temp_55;
    temp_61 = temp_59;
    if (temp_18)
    {
        temp_39 = temp_32 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_62 = temp_39;
    if (!temp_18)
    {
        temp_57 = 0.0;
    }
    if (!temp_18)
    {
        temp_60 = 0.0;
    }
    if (!temp_18)
    {
        temp_62 = 0.0;
    }
    if (temp_31)
    {
        temp_28 = temp_23 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_63 = temp_28;
    if (!temp_31)
    {
        temp_63 = 0.0;
    }
    temp_64 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_65 = fma(fma(temp_46, sysLocalVecAttr.x, temp_50), temp_10, sysLocalPosAttr.x);
    if (temp_31)
    {
        temp_29 = temp_23 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_66 = temp_29;
    if (!temp_31)
    {
        temp_66 = 0.0;
    }
    if (temp_31)
    {
        temp_45 = temp_23 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_67 = temp_45;
    if (!temp_31)
    {
        temp_67 = 0.0;
    }
    temp_68 = fma(temp_59, temp_10, sysLocalPosAttr.y);
    temp_69 = fma(fma(temp_46, temp_19, temp_49), temp_10, sysLocalPosAttr.z);
    if (temp_35)
    {
        temp_61 = temp_27 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_70 = temp_61;
    if (!temp_35)
    {
        temp_70 = 0.0;
    }
    if (temp_35)
    {
        temp_40 = temp_27 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_71 = temp_40;
    if (temp_35)
    {
        temp_58 = temp_27 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_72 = temp_58;
    if (!temp_35)
    {
        temp_71 = 0.0;
    }
    if (!temp_35)
    {
        temp_72 = 0.0;
    }
    temp_73 = fma(temp_69, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_68, _sysEmitterDynamicUniformBlock.data[4].y, temp_65 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_74 = fma(temp_69, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_68, _sysEmitterDynamicUniformBlock.data[5].y, temp_65 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_75 = fma(0.0, temp_73, fma(temp_70, temp_38, fma(temp_66, temp_37, temp_57 * temp_36)));
    temp_76 = temp_73 + fma(temp_43, temp_70, fma(temp_42, temp_66, temp_47 * temp_57));
    temp_77 = fma(temp_69, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_68, _sysEmitterDynamicUniformBlock.data[6].y, temp_65 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_78 = floatBitsToInt(1.0 / float(uint(temp_64))) + -2;
    temp_79 = fma(0.0, temp_74, fma(temp_72, temp_38, fma(temp_63, temp_37, temp_62 * temp_36)));
    temp_80 = temp_74 + fma(temp_43, temp_72, fma(temp_42, temp_63, temp_47 * temp_62));
    temp_81 = fma(0.0, temp_77, fma(temp_71, temp_38, fma(temp_67, temp_37, temp_60 * temp_36)));
    temp_82 = temp_77 + fma(temp_43, temp_71, fma(temp_42, temp_67, temp_47 * temp_60));
    out_attr6.x = temp_76;
    out_attr6.y = temp_80;
    out_attr6.z = temp_82;
    temp_83 = uint(max(trunc(float(0u) * intBitsToFloat(temp_78)), 0.0));
    temp_84 = floatBitsToInt(1.0 / float(uint(abs(temp_64)))) + -2;
    temp_85 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_81, _sysViewUniformBlock.data[1].z, fma(temp_79, _sysViewUniformBlock.data[1].y, temp_75 * _sysViewUniformBlock.data[1].x)));
    temp_86 = fma(temp_82, _sysViewUniformBlock.data[0].z, fma(temp_80, _sysViewUniformBlock.data[0].y, temp_76 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_87 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_81, _sysViewUniformBlock.data[0].z, fma(temp_79, _sysViewUniformBlock.data[0].y, temp_75 * _sysViewUniformBlock.data[0].x)));
    temp_88 = uint(max(trunc(intBitsToFloat(temp_84) * float(0u)), 0.0));
    temp_89 = (temp_64 & 0xFFFF) * (int(temp_83 >> 16)) & 0xFFFF | int(temp_83) << 16;
    temp_90 = fma(temp_82, _sysViewUniformBlock.data[1].z, fma(temp_80, _sysViewUniformBlock.data[1].y, temp_76 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_91 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_81, _sysViewUniformBlock.data[2].z, fma(temp_79, _sysViewUniformBlock.data[2].y, temp_75 * _sysViewUniformBlock.data[2].x)));
    temp_92 = fma(temp_82, _sysViewUniformBlock.data[2].z, fma(temp_80, _sysViewUniformBlock.data[2].y, temp_76 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_93 = inversesqrt(fma(temp_92, temp_92, fma(temp_90, temp_90, temp_86 * temp_86)));
    temp_94 = (abs(temp_64) & 0xFFFF) * (int(temp_88 >> 16)) & 0xFFFF | int(temp_88) << 16;
    temp_95 = inversesqrt(fma(temp_91, temp_91, fma(temp_85, temp_85, temp_87 * temp_87)));
    temp_96 = temp_86 * temp_93;
    temp_97 = temp_87 * temp_95;
    temp_98 = temp_85 * temp_95;
    temp_99 = temp_90 * temp_93;
    temp_100 = temp_92 * temp_93;
    temp_101 = clamp(max(temp_91 * temp_95, 0.2) + -0.0, 0.0, 1.0);
    temp_102 = int(temp_83) + int(uint(max(trunc(intBitsToFloat(temp_78) * float(uint(0 - ((int(uint(temp_64) >> 16)) * (int(uint(temp_89) >> 16)) << 16) + (temp_64 & 0xFFFF) * (int(temp_83) & 0xFFFF) + (temp_89 << 16)))), 0.0)));
    temp_103 = sysRandomAttr.y;
    temp_104 = fma(temp_100, temp_101, fma(temp_98, temp_99, temp_97 * temp_96));
    temp_105 = (temp_64 & 0xFFFF) * (int(uint(temp_102) >> 16)) & 0xFFFF | temp_102 << 16;
    temp_106 = int(temp_88) + int(uint(max(trunc(intBitsToFloat(temp_84) * float(uint(0 - ((int(uint(abs(temp_64)) >> 16)) * (int(uint(temp_94) >> 16)) << 16) + (abs(temp_64) & 0xFFFF) * (int(temp_88) & 0xFFFF) + (temp_94 << 16)))), 0.0)));
    temp_107 = fma(temp_97 * temp_104, -2.0, temp_96);
    temp_108 = fma(temp_98 * temp_104, -2.0, temp_99);
    temp_109 = (abs(temp_64) & 0xFFFF) * (int(uint(temp_106) >> 16)) & 0xFFFF | temp_106 << 16;
    temp_110 = 0 - temp_102 + ((uint(0 - ((int(uint(temp_64) >> 16)) * (int(uint(temp_105) >> 16)) << 16) + (temp_64 & 0xFFFF) * (temp_102 & 0xFFFF) + (temp_105 << 16)) >= uint(temp_64) ? -1 : 0));
    temp_111 = (temp_64 & 0xFFFF) * (int(uint(temp_110) >> 16)) & 0xFFFF | temp_110 << 16;
    temp_112 = 1.0 / (sqrt(fma(fma(temp_101 * temp_104, -2.0, temp_100) + 1.0, fma(temp_101 * temp_104, -2.0, temp_100) + 1.0, fma(0.0 + temp_108, 0.0 + temp_108, (0.0 + temp_107) * (0.0 + temp_107)))) * 2.0);
    temp_113 = 0 - int(uint(temp_64) >> 31);
    temp_114 = fma(temp_108, 0.0 - temp_112, 0.5);
    temp_115 = fma(temp_107, temp_112, 0.5);
    temp_116 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_117 = temp_114;
    temp_118 = temp_115;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_103 > 0.5) ? -1 : 0)) != 0))
    {
        temp_117 = 0.0 - temp_114 + 1.0;
    }
    temp_119 = fma(temp_82, _sysViewUniformBlock.data[9].z, fma(temp_80, _sysViewUniformBlock.data[9].y, temp_76 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_8 > 0.5) ? -1 : 0)) != 0))
    {
        temp_118 = 0.0 - temp_115 + 1.0;
    }
    temp_120 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_121 = fma(temp_82, _sysViewUniformBlock.data[8].z, fma(temp_80, _sysViewUniformBlock.data[8].y, temp_76 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_122 = fma(temp_82, _sysViewUniformBlock.data[10].z, fma(temp_80, _sysViewUniformBlock.data[10].y, temp_76 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_123 = fma(0.0, temp_121, 0.0 * temp_119);
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_124 = fma(temp_82, _sysViewUniformBlock.data[11].z, fma(temp_80, _sysViewUniformBlock.data[11].y, temp_76 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_121;
    gl_Position.y = temp_119;
    gl_Position.z = temp_122;
    gl_Position.w = temp_124;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr3.z = fma(0.0, temp_124, temp_123 + temp_122);
    out_attr3.w = temp_124 + fma(0.0, temp_122, temp_123);
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_8, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_116, temp_118, -0.5), fma(temp_116, float(temp_64 < 0 || !(temp_64 == 0) ? ((int(uint(temp_64) >> 16)) * (int(uint(temp_111) >> 16)) << 16) + (temp_64 & 0xFFFF) * (temp_110 & 0xFFFF) + (temp_111 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_8 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_103, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_120, temp_117, -0.5), 0.0 - fma(temp_120, 0.0 - float(temp_64 < 0 || !(temp_64 == 0) ? 0 - temp_113 + (temp_106 + 0 - (uint(0 - ((int(uint(abs(temp_64)) >> 16)) * (int(uint(temp_109) >> 16)) << 16) + (abs(temp_64) & 0xFFFF) * (temp_106 & 0xFFFF) + (temp_109 << 16)) >= uint(abs(temp_64)) ? -1 : 0) ^ temp_113) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_103 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
