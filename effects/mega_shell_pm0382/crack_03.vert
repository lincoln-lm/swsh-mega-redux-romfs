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
    bool temp_10;
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
    bool temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    precise float temp_39;
    precise float temp_40;
    bool temp_41;
    precise float temp_42;
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
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
    int temp_59;
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
    int temp_82;
    precise float temp_83;
    uint temp_84;
    int temp_85;
    precise float temp_86;
    precise float temp_87;
    precise float temp_88;
    int temp_89;
    precise float temp_90;
    uint temp_91;
    precise float temp_92;
    precise float temp_93;
    precise float temp_94;
    precise float temp_95;
    int temp_96;
    precise float temp_97;
    precise float temp_98;
    precise float temp_99;
    precise float temp_100;
    precise float temp_101;
    precise float temp_102;
    int temp_103;
    precise float temp_104;
    precise float temp_105;
    int temp_106;
    precise float temp_107;
    precise float temp_108;
    int temp_109;
    int temp_110;
    int temp_111;
    int temp_112;
    precise float temp_113;
    int temp_114;
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
    temp_8 = sysScaleAttr.w;
    temp_9 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_10 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_11 = intBitsToFloat(undef);
    temp_12 = temp_9;
    if (temp_10)
    {
        temp_11 = temp_9 * temp_9;
    }
    temp_13 = temp_11;
    if (temp_10)
    {
        temp_13 = temp_11 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_14 = intBitsToFloat(undef);
    if (temp_10)
    {
        temp_14 = temp_13 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_15 = intBitsToFloat(undef);
    temp_16 = temp_14;
    if (temp_10)
    {
        temp_15 = temp_13 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_17 = intBitsToFloat(undef);
    temp_18 = temp_15;
    if (temp_10)
    {
        temp_17 = temp_13 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_19 = temp_17;
    if (!temp_10)
    {
        temp_20 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_21 = (temp_9 + 0.0 - fma(temp_20, exp2(temp_9 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_20)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_19 = temp_21 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_16 = temp_21 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_18 = temp_21 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_10)
    {
        temp_22 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_12 = fma(exp2(temp_9 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_22, temp_22);
    }
    temp_23 = fma(fma(temp_12, sysLocalVecAttr.x, temp_19), temp_8, sysLocalPosAttr.x);
    temp_24 = fma(fma(temp_12, sysLocalVecAttr.y, temp_16), temp_8, sysLocalPosAttr.y);
    temp_25 = fma(fma(temp_12, sysLocalVecAttr.z, temp_18), temp_8, sysLocalPosAttr.z);
    temp_26 = fma(temp_25, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_24, _sysEmitterDynamicUniformBlock.data[4].y, temp_23 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_27 = fma(temp_25, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_24, _sysEmitterDynamicUniformBlock.data[5].y, temp_23 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_28 = temp_26 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_29 = fma(temp_25, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_24, _sysEmitterDynamicUniformBlock.data[6].y, temp_23 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_30 = temp_27 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_31 = temp_29 + 0.0 - _sysViewUniformBlock.data[17].z;
    temp_32 = sysRandomAttr.x;
    temp_33 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_34 = inversesqrt(fma(temp_31, temp_31, fma(temp_30, temp_30, temp_28 * temp_28)));
    temp_35 = sqrt(temp_33) > 0.0;
    temp_36 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_37 = sysScaleAttr.x;
    temp_38 = temp_28 * 0.0 - temp_34;
    temp_39 = temp_30 * 0.0 - temp_34;
    temp_40 = temp_31 * 0.0 - temp_34;
    temp_41 = sqrt(temp_36) > 0.0;
    temp_42 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_43 = temp_36;
    temp_44 = temp_37;
    temp_45 = temp_42;
    temp_46 = temp_33;
    temp_47 = temp_34;
    if (temp_41)
    {
        temp_43 = inversesqrt(temp_36);
    }
    temp_48 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z;
    temp_49 = temp_43;
    temp_50 = temp_48;
    if (!temp_41)
    {
        temp_49 = 0.0;
    }
    temp_51 = sqrt(temp_42) > 0.0;
    temp_52 = sysNormalAttr.x;
    temp_53 = sysNormalAttr.y;
    temp_54 = sysNormalAttr.z;
    temp_55 = (clamp(min(0.0, temp_32) + -0.0, 0.0, 1.0) + temp_37) * _sysEmitterStaticUniformBlock.data[96].x;
    temp_56 = temp_55;
    temp_57 = temp_49;
    if (temp_35)
    {
        temp_44 = inversesqrt(temp_33);
    }
    temp_58 = temp_44;
    if (temp_51)
    {
        temp_45 = inversesqrt(temp_42);
    }
    if (!temp_41)
    {
        temp_46 = 0.0;
    }
    temp_59 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_60 = temp_55 * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_61 = temp_34 * sqrt(fma(fma(temp_40, _sysEmitterStaticUniformBlock.data[13].z, temp_31), fma(temp_40, _sysEmitterStaticUniformBlock.data[13].z, temp_31), fma(fma(temp_39, _sysEmitterStaticUniformBlock.data[13].z, temp_30), fma(temp_39, _sysEmitterStaticUniformBlock.data[13].z, temp_30), fma(temp_38, _sysEmitterStaticUniformBlock.data[13].z, temp_28) * fma(temp_38, _sysEmitterStaticUniformBlock.data[13].z, temp_28))));
    temp_62 = temp_46;
    temp_63 = temp_60;
    if (temp_35)
    {
        temp_47 = temp_44 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_64 = temp_47;
    if (!temp_35)
    {
        temp_64 = 0.0;
    }
    if (temp_35)
    {
        temp_50 = temp_44 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_65 = temp_50;
    if (!temp_35)
    {
        temp_65 = 0.0;
    }
    if (temp_35)
    {
        temp_56 = temp_44 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_66 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x) * temp_60 * temp_61;
    temp_67 = temp_48 * _sysEmitterDynamicUniformBlock.data[3].w * temp_61;
    temp_68 = temp_56;
    temp_69 = temp_67;
    temp_70 = temp_66;
    if (temp_41)
    {
        temp_62 = temp_49 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    if (temp_41)
    {
        temp_58 = temp_49 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_71 = temp_58;
    if (!temp_41)
    {
        temp_71 = 0.0;
    }
    temp_72 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y) * sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * temp_61;
    if (temp_41)
    {
        temp_57 = temp_49 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    if (!temp_35)
    {
        temp_68 = 0.0;
    }
    temp_73 = temp_67 * sysPosAttr.z;
    if (temp_51)
    {
        temp_63 = temp_45 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_74 = temp_63;
    if (!temp_51)
    {
        temp_74 = 0.0;
    }
    if (temp_51)
    {
        temp_69 = temp_45 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_75 = temp_69;
    if (!temp_51)
    {
        temp_75 = 0.0;
    }
    if (temp_51)
    {
        temp_70 = temp_45 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_76 = temp_70;
    if (!temp_51)
    {
        temp_76 = 0.0;
    }
    temp_77 = fma(0.0, temp_26, fma(temp_74, temp_54, fma(temp_57, temp_53, temp_65 * temp_52)));
    temp_78 = fma(temp_38, _sysEmitterStaticUniformBlock.data[13].z, temp_26 + fma(temp_73, temp_74, fma(temp_72, temp_57, temp_66 * temp_65)));
    temp_79 = fma(0.0, temp_27, fma(temp_75, temp_54, fma(temp_71, temp_53, temp_64 * temp_52)));
    temp_80 = fma(0.0, temp_29, fma(temp_76, temp_54, fma(temp_62, temp_53, temp_68 * temp_52)));
    temp_81 = fma(temp_39, _sysEmitterStaticUniformBlock.data[13].z, temp_27 + fma(temp_73, temp_75, fma(temp_72, temp_71, temp_66 * temp_64)));
    temp_82 = floatBitsToInt(1.0 / float(uint(temp_59))) + -2;
    temp_83 = fma(temp_40, _sysEmitterStaticUniformBlock.data[13].z, temp_29 + fma(temp_73, temp_76, fma(temp_72, temp_62, temp_66 * temp_68)));
    out_attr6.x = temp_78;
    out_attr6.y = temp_81;
    out_attr6.z = temp_83;
    temp_84 = uint(max(trunc(float(0u) * intBitsToFloat(temp_82)), 0.0));
    temp_85 = floatBitsToInt(1.0 / float(uint(abs(temp_59)))) + -2;
    temp_86 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_80, _sysViewUniformBlock.data[0].z, fma(temp_79, _sysViewUniformBlock.data[0].y, temp_77 * _sysViewUniformBlock.data[0].x)));
    temp_87 = fma(temp_83, _sysViewUniformBlock.data[0].z, fma(temp_81, _sysViewUniformBlock.data[0].y, temp_78 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_88 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_80, _sysViewUniformBlock.data[1].z, fma(temp_79, _sysViewUniformBlock.data[1].y, temp_77 * _sysViewUniformBlock.data[1].x)));
    temp_89 = (temp_59 & 0xFFFF) * (int(temp_84 >> 16)) & 0xFFFF | int(temp_84) << 16;
    temp_90 = fma(temp_83, _sysViewUniformBlock.data[1].z, fma(temp_81, _sysViewUniformBlock.data[1].y, temp_78 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_91 = uint(max(trunc(intBitsToFloat(temp_85) * float(0u)), 0.0));
    temp_92 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_80, _sysViewUniformBlock.data[2].z, fma(temp_79, _sysViewUniformBlock.data[2].y, temp_77 * _sysViewUniformBlock.data[2].x)));
    temp_93 = fma(temp_83, _sysViewUniformBlock.data[2].z, fma(temp_81, _sysViewUniformBlock.data[2].y, temp_78 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_94 = inversesqrt(fma(temp_92, temp_92, fma(temp_88, temp_88, temp_86 * temp_86)));
    temp_95 = inversesqrt(fma(temp_93, temp_93, fma(temp_90, temp_90, temp_87 * temp_87)));
    temp_96 = (abs(temp_59) & 0xFFFF) * (int(temp_91 >> 16)) & 0xFFFF | int(temp_91) << 16;
    temp_97 = temp_88 * temp_94;
    temp_98 = temp_86 * temp_94;
    temp_99 = temp_87 * temp_95;
    temp_100 = temp_93 * temp_95;
    temp_101 = temp_90 * temp_95;
    temp_102 = clamp(max(temp_92 * temp_94, 0.2) + -0.0, 0.0, 1.0);
    temp_103 = int(temp_84) + int(uint(max(trunc(intBitsToFloat(temp_82) * float(uint(0 - ((int(uint(temp_59) >> 16)) * (int(uint(temp_89) >> 16)) << 16) + (temp_59 & 0xFFFF) * (int(temp_84) & 0xFFFF) + (temp_89 << 16)))), 0.0)));
    temp_104 = sysRandomAttr.y;
    temp_105 = fma(temp_100, temp_102, fma(temp_97, temp_101, temp_98 * temp_99));
    temp_106 = (temp_59 & 0xFFFF) * (int(uint(temp_103) >> 16)) & 0xFFFF | temp_103 << 16;
    temp_107 = fma(temp_98 * temp_105, -2.0, temp_99);
    temp_108 = fma(temp_97 * temp_105, -2.0, temp_101);
    temp_109 = int(temp_91) + int(uint(max(trunc(intBitsToFloat(temp_85) * float(uint(0 - ((int(uint(abs(temp_59)) >> 16)) * (int(uint(temp_96) >> 16)) << 16) + (abs(temp_59) & 0xFFFF) * (int(temp_91) & 0xFFFF) + (temp_96 << 16)))), 0.0)));
    temp_110 = (abs(temp_59) & 0xFFFF) * (int(uint(temp_109) >> 16)) & 0xFFFF | temp_109 << 16;
    temp_111 = 0 - temp_103 + ((uint(0 - ((int(uint(temp_59) >> 16)) * (int(uint(temp_106) >> 16)) << 16) + (temp_59 & 0xFFFF) * (temp_103 & 0xFFFF) + (temp_106 << 16)) >= uint(temp_59) ? -1 : 0));
    temp_112 = (temp_59 & 0xFFFF) * (int(uint(temp_111) >> 16)) & 0xFFFF | temp_111 << 16;
    temp_113 = 1.0 / (sqrt(fma(fma(temp_102 * temp_105, -2.0, temp_100) + 1.0, fma(temp_102 * temp_105, -2.0, temp_100) + 1.0, fma(0.0 + temp_108, 0.0 + temp_108, (0.0 + temp_107) * (0.0 + temp_107)))) * 2.0);
    temp_114 = 0 - int(uint(temp_59) >> 31);
    temp_115 = fma(temp_107, temp_113, 0.5);
    temp_116 = fma(temp_108, 0.0 - temp_113, 0.5);
    temp_117 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_118 = temp_116;
    temp_119 = temp_115;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_104 > 0.5) ? -1 : 0)) != 0))
    {
        temp_118 = 0.0 - temp_116 + 1.0;
    }
    temp_120 = fma(temp_83, _sysViewUniformBlock.data[9].z, fma(temp_81, _sysViewUniformBlock.data[9].y, temp_78 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_121 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_32 > 0.5) ? -1 : 0)) != 0))
    {
        temp_119 = 0.0 - temp_115 + 1.0;
    }
    temp_122 = fma(temp_83, _sysViewUniformBlock.data[8].z, fma(temp_81, _sysViewUniformBlock.data[8].y, temp_78 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_123 = fma(temp_83, _sysViewUniformBlock.data[10].z, fma(temp_81, _sysViewUniformBlock.data[10].y, temp_78 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_124 = fma(0.0, temp_122, 0.0 * temp_120);
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_125 = fma(temp_83, _sysViewUniformBlock.data[11].z, fma(temp_81, _sysViewUniformBlock.data[11].y, temp_78 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    gl_Position.x = temp_122;
    gl_Position.y = temp_120;
    gl_Position.z = temp_123;
    gl_Position.w = temp_125;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr3.z = fma(0.0, temp_125, temp_124 + temp_123);
    out_attr3.w = temp_125 + fma(0.0, temp_123, temp_124);
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_32, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_117, temp_119, -0.5), fma(temp_117, float(temp_59 < 0 || !(temp_59 == 0) ? ((int(uint(temp_59) >> 16)) * (int(uint(temp_112) >> 16)) << 16) + (temp_59 & 0xFFFF) * (temp_111 & 0xFFFF) + (temp_112 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_32 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_104, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_121, temp_118, -0.5), 0.0 - fma(temp_121, 0.0 - float(temp_59 < 0 || !(temp_59 == 0) ? 0 - temp_114 + (temp_109 + 0 - (uint(0 - ((int(uint(abs(temp_59)) >> 16)) * (int(uint(temp_110) >> 16)) << 16) + (abs(temp_59) & 0xFFFF) * (temp_109 & 0xFFFF) + (temp_110 << 16)) >= uint(abs(temp_59)) ? -1 : 0) ^ temp_114) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_104 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
