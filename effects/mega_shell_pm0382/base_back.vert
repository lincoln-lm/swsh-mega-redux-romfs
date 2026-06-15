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
    bool temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    bool temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    bool temp_21;
    precise float temp_22;
    precise float temp_23;
    bool temp_24;
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
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
    precise float temp_46;
    bool temp_47;
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
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    int temp_82;
    int temp_83;
    uint temp_84;
    uint temp_85;
    precise float temp_86;
    precise float temp_87;
    precise float temp_88;
    precise float temp_89;
    precise float temp_90;
    precise float temp_91;
    int temp_92;
    int temp_93;
    precise float temp_94;
    precise float temp_95;
    precise float temp_96;
    precise float temp_97;
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
    precise float temp_108;
    precise float temp_109;
    int temp_110;
    int temp_111;
    int temp_112;
    precise float temp_113;
    precise float temp_114;
    precise float temp_115;
    precise float temp_116;
    precise float temp_117;
    precise float temp_118;
    precise float temp_119;
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
    temp_6 = temp_5 >= float(int(trunc(sysLocalPosAttr.w)));
    if (temp_6)
    {
        out_attr3.x = 0.0;
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
    temp_12 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_13 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_14 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_15 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z;
    temp_16 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_9);
    temp_17 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_18 = sysNormalAttr.x;
    temp_19 = sysNormalAttr.y;
    temp_20 = sysNormalAttr.z;
    temp_21 = sqrt(temp_13) > 0.0;
    temp_22 = sysLocalVecAttr.x;
    temp_23 = (clamp(min(0.0, temp_8) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x;
    temp_24 = sqrt(temp_14) > 0.0;
    temp_25 = temp_15 * _sysEmitterDynamicUniformBlock.data[3].w;
    temp_26 = temp_13;
    temp_27 = temp_15;
    temp_28 = temp_9;
    temp_29 = temp_23;
    temp_30 = temp_17;
    temp_31 = temp_25;
    temp_32 = temp_16;
    temp_33 = temp_11;
    temp_34 = temp_22;
    if (temp_21)
    {
        temp_26 = inversesqrt(temp_13);
    }
    temp_35 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_36 = temp_26;
    temp_37 = temp_35;
    if (temp_12)
    {
        temp_27 = temp_11 * temp_11;
    }
    temp_38 = temp_27;
    temp_39 = sqrt(temp_35);
    if (temp_24)
    {
        temp_28 = inversesqrt(temp_14);
    }
    temp_40 = temp_17 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_41 = temp_25 * sysPosAttr.z;
    temp_42 = temp_40;
    if (temp_12)
    {
        temp_29 = temp_27 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_43 = temp_23 * _sysEmitterDynamicUniformBlock.data[3].y * temp_16;
    temp_44 = temp_29;
    if (temp_21)
    {
        temp_30 = temp_26 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_45 = temp_30;
    if (temp_21)
    {
        temp_38 = temp_26 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_46 = temp_38;
    if (temp_12)
    {
        temp_31 = temp_29 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_47 = sqrt(temp_35) > 0.0;
    temp_48 = temp_31;
    if (temp_12)
    {
        temp_39 = temp_29 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_49 = temp_39;
    if (temp_21)
    {
        temp_36 = temp_26 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_50 = temp_36;
    if (temp_12)
    {
        temp_44 = temp_29 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_51 = temp_44;
    if (!temp_12)
    {
        temp_52 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_53 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_54 = (temp_11 + 0.0 - fma(temp_53, exp2(temp_11 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_53)) * temp_52 * _sysEmitterStaticUniformBlock.data[11].w;
        temp_49 = temp_54 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_48 = temp_54 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_51 = temp_54 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_32 = temp_52;
    }
    temp_55 = temp_32;
    temp_56 = temp_49;
    if (!temp_12)
    {
        temp_57 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_58 = exp2(temp_11 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x)));
        temp_33 = fma(temp_58, 0.0 - temp_57, temp_57);
        temp_55 = temp_58;
    }
    temp_59 = temp_55;
    if (temp_47)
    {
        temp_37 = inversesqrt(temp_35);
    }
    temp_60 = temp_37;
    if (!temp_21)
    {
        temp_46 = 0.0;
    }
    if (!temp_21)
    {
        temp_45 = 0.0;
    }
    if (!temp_21)
    {
        temp_50 = 0.0;
    }
    temp_61 = fma(temp_33, sysLocalVecAttr.z, temp_48);
    temp_62 = temp_61;
    if (temp_24)
    {
        temp_34 = temp_28 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_63 = fma(fma(temp_33, temp_22, temp_51), temp_10, sysLocalPosAttr.x);
    temp_64 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_65 = temp_34;
    if (!temp_24)
    {
        temp_65 = 0.0;
    }
    if (temp_24)
    {
        temp_56 = temp_28 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_66 = temp_56;
    if (temp_24)
    {
        temp_59 = temp_28 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_67 = temp_59;
    if (!temp_24)
    {
        temp_66 = 0.0;
    }
    temp_68 = fma(fma(temp_33, sysLocalVecAttr.y, temp_49), temp_10, sysLocalPosAttr.y);
    temp_69 = fma(temp_61, temp_10, sysLocalPosAttr.z);
    if (temp_47)
    {
        temp_62 = temp_37 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_70 = temp_62;
    if (!temp_47)
    {
        temp_70 = 0.0;
    }
    if (!temp_24)
    {
        temp_67 = 0.0;
    }
    if (!temp_47)
    {
        temp_60 = 0.0;
    }
    temp_71 = temp_60;
    if (temp_47)
    {
        temp_42 = temp_60 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_72 = temp_42;
    if (!temp_47)
    {
        temp_72 = 0.0;
    }
    if (temp_47)
    {
        temp_71 = temp_60 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_73 = fma(temp_69, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_68, _sysEmitterDynamicUniformBlock.data[4].y, temp_63 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_74 = fma(temp_69, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_68, _sysEmitterDynamicUniformBlock.data[5].y, temp_63 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_75 = fma(0.0, temp_73, fma(temp_70, temp_20, fma(temp_65, temp_19, temp_45 * temp_18)));
    temp_76 = temp_73 + fma(temp_41, temp_70, fma(temp_40, temp_65, temp_43 * temp_45));
    temp_77 = fma(0.0, temp_74, fma(temp_72, temp_20, fma(temp_66, temp_19, temp_46 * temp_18)));
    temp_78 = temp_74 + fma(temp_41, temp_72, fma(temp_40, temp_66, temp_43 * temp_46));
    temp_79 = fma(temp_69, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_68, _sysEmitterDynamicUniformBlock.data[6].y, temp_63 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_80 = fma(0.0, temp_79, fma(temp_71, temp_20, fma(temp_67, temp_19, temp_50 * temp_18)));
    temp_81 = temp_79 + fma(temp_41, temp_71, fma(temp_40, temp_67, temp_43 * temp_50));
    out_attr5.x = temp_76;
    out_attr5.y = temp_78;
    out_attr5.z = temp_81;
    temp_82 = floatBitsToInt(1.0 / float(uint(temp_64))) + -2;
    temp_83 = floatBitsToInt(1.0 / float(uint(abs(temp_64)))) + -2;
    temp_84 = uint(max(trunc(float(0u) * intBitsToFloat(temp_82)), 0.0));
    temp_85 = uint(max(trunc(intBitsToFloat(temp_83) * float(0u)), 0.0));
    temp_86 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_80, _sysViewUniformBlock.data[0].z, fma(temp_77, _sysViewUniformBlock.data[0].y, temp_75 * _sysViewUniformBlock.data[0].x)));
    temp_87 = fma(temp_81, _sysViewUniformBlock.data[0].z, fma(temp_78, _sysViewUniformBlock.data[0].y, temp_76 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_88 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_80, _sysViewUniformBlock.data[1].z, fma(temp_77, _sysViewUniformBlock.data[1].y, temp_75 * _sysViewUniformBlock.data[1].x)));
    temp_89 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_80, _sysViewUniformBlock.data[2].z, fma(temp_77, _sysViewUniformBlock.data[2].y, temp_75 * _sysViewUniformBlock.data[2].x)));
    temp_90 = fma(temp_81, _sysViewUniformBlock.data[1].z, fma(temp_78, _sysViewUniformBlock.data[1].y, temp_76 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_91 = fma(temp_81, _sysViewUniformBlock.data[2].z, fma(temp_78, _sysViewUniformBlock.data[2].y, temp_76 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_92 = (temp_64 & 0xFFFF) * (int(temp_84 >> 16)) & 0xFFFF | int(temp_84) << 16;
    temp_93 = (abs(temp_64) & 0xFFFF) * (int(temp_85 >> 16)) & 0xFFFF | int(temp_85) << 16;
    temp_94 = inversesqrt(fma(temp_89, temp_89, fma(temp_88, temp_88, temp_86 * temp_86)));
    temp_95 = inversesqrt(fma(temp_91, temp_91, fma(temp_90, temp_90, temp_87 * temp_87)));
    temp_96 = temp_86 * temp_94;
    temp_97 = temp_87 * temp_95;
    temp_98 = temp_88 * temp_94;
    temp_99 = temp_90 * temp_95;
    temp_100 = temp_91 * temp_95;
    temp_101 = clamp(max(temp_89 * temp_94, 0.2) + -0.0, 0.0, 1.0);
    temp_102 = fma(temp_100, temp_101, fma(temp_98, temp_99, temp_96 * temp_97));
    temp_103 = int(temp_85) + int(uint(max(trunc(intBitsToFloat(temp_83) * float(uint(0 - ((int(uint(abs(temp_64)) >> 16)) * (int(uint(temp_93) >> 16)) << 16) + (abs(temp_64) & 0xFFFF) * (int(temp_85) & 0xFFFF) + (temp_93 << 16)))), 0.0)));
    temp_104 = int(temp_84) + int(uint(max(trunc(intBitsToFloat(temp_82) * float(uint(0 - ((int(uint(temp_64) >> 16)) * (int(uint(temp_92) >> 16)) << 16) + (temp_64 & 0xFFFF) * (int(temp_84) & 0xFFFF) + (temp_92 << 16)))), 0.0)));
    temp_105 = fma(temp_96 * temp_102, -2.0, temp_97);
    temp_106 = (abs(temp_64) & 0xFFFF) * (int(uint(temp_103) >> 16)) & 0xFFFF | temp_103 << 16;
    temp_107 = (temp_64 & 0xFFFF) * (int(uint(temp_104) >> 16)) & 0xFFFF | temp_104 << 16;
    temp_108 = fma(temp_98 * temp_102, -2.0, temp_99);
    temp_109 = sysRandomAttr.y;
    temp_110 = 0 - temp_104 + ((uint(0 - ((int(uint(temp_64) >> 16)) * (int(uint(temp_107) >> 16)) << 16) + (temp_64 & 0xFFFF) * (temp_104 & 0xFFFF) + (temp_107 << 16)) >= uint(temp_64) ? -1 : 0));
    temp_111 = 0 - int(uint(temp_64) >> 31);
    temp_112 = (temp_64 & 0xFFFF) * (int(uint(temp_110) >> 16)) & 0xFFFF | temp_110 << 16;
    temp_113 = 1.0 / (sqrt(fma(fma(temp_101 * temp_102, -2.0, temp_100) + 1.0, fma(temp_101 * temp_102, -2.0, temp_100) + 1.0, fma(0.0 + temp_108, 0.0 + temp_108, (0.0 + temp_105) * (0.0 + temp_105)))) * 2.0);
    temp_114 = fma(temp_105, temp_113, 0.5);
    temp_115 = fma(temp_108, 0.0 - temp_113, 0.5);
    temp_116 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_117 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_118 = temp_115;
    temp_119 = temp_114;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_109 > 0.5) ? -1 : 0)) != 0))
    {
        temp_118 = 0.0 - temp_115 + 1.0;
    }
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_8 > 0.5) ? -1 : 0)) != 0))
    {
        temp_119 = 0.0 - temp_114 + 1.0;
    }
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    gl_Position.x = fma(temp_81, _sysViewUniformBlock.data[8].z, fma(temp_78, _sysViewUniformBlock.data[8].y, temp_76 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_81, _sysViewUniformBlock.data[9].z, fma(temp_78, _sysViewUniformBlock.data[9].y, temp_76 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_81, _sysViewUniformBlock.data[10].z, fma(temp_78, _sysViewUniformBlock.data[10].y, temp_76 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_81, _sysViewUniformBlock.data[11].z, fma(temp_78, _sysViewUniformBlock.data[11].y, temp_76 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_8, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_117, temp_119, -0.5), fma(temp_117, float(temp_64 < 0 || !(temp_64 == 0) ? ((int(uint(temp_64) >> 16)) * (int(uint(temp_112) >> 16)) << 16) + (temp_64 & 0xFFFF) * (temp_110 & 0xFFFF) + (temp_112 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_8 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_109, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_116, temp_118, -0.5), 0.0 - fma(temp_116, 0.0 - float(temp_64 < 0 || !(temp_64 == 0) ? 0 - temp_111 + (temp_103 + 0 - (uint(0 - ((int(uint(abs(temp_64)) >> 16)) * (int(uint(temp_106) >> 16)) << 16) + (abs(temp_64) & 0xFFFF) * (temp_103 & 0xFFFF) + (temp_106 << 16)) >= uint(abs(temp_64)) ? -1 : 0) ^ temp_111) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_109 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    break;
} while (false);
}
