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
layout (location = 7) out vec4 out_attr7;


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
    int temp_18;
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
    bool temp_29;
    bool temp_30;
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
    int temp_71;
    precise float temp_72;
    precise float temp_73;
    precise float temp_74;
    uint temp_75;
    precise float temp_76;
    int temp_77;
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    uint temp_83;
    precise float temp_84;
    precise float temp_85;
    int temp_86;
    int temp_87;
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
    int temp_99;
    precise float temp_100;
    int temp_101;
    int temp_102;
    precise float temp_103;
    int temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    int temp_109;
    int temp_110;
    int temp_111;
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
    temp_9 = sysScaleAttr.w;
    temp_10 = sysLocalVecAttr.z;
    temp_11 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_12 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_13 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_14 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_15 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y;
    temp_16 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w;
    temp_17 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_18 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_19 = 0.5;
    temp_20 = temp_11;
    temp_21 = temp_14;
    temp_22 = temp_15;
    temp_23 = temp_16;
    temp_24 = temp_13;
    temp_25 = _sysEmitterStaticUniformBlock.data[12].x;
    temp_26 = temp_17;
    temp_27 = temp_10;
    temp_28 = temp_9;
    if (temp_12)
    {
        temp_19 = temp_13 * temp_13;
    }
    temp_29 = sqrt(temp_11) > 0.0;
    temp_30 = sqrt(temp_14) > 0.0;
    temp_31 = sysNormalAttr.x;
    temp_32 = sysNormalAttr.y;
    temp_33 = sysNormalAttr.z;
    temp_34 = temp_19;
    if (temp_29)
    {
        temp_20 = inversesqrt(temp_11);
    }
    temp_35 = sqrt(temp_17) > 0.0;
    if (temp_30)
    {
        temp_21 = inversesqrt(temp_14);
    }
    temp_36 = temp_15 * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_37 = temp_36;
    temp_38 = temp_21;
    if (temp_12)
    {
        temp_22 = temp_19 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_39 = (clamp(min(0.0, temp_8) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_40 = temp_16 * sysPosAttr.z;
    temp_41 = temp_36 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_42 = temp_39;
    temp_43 = temp_22;
    if (temp_12)
    {
        temp_37 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_44 = temp_39 * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_45 = temp_37;
    if (temp_12)
    {
        temp_42 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_46 = temp_42;
    if (temp_12)
    {
        temp_34 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_47 = temp_34;
    if (!temp_12)
    {
        temp_48 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_49 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x);
        temp_50 = temp_49 * 1.44269502;
        temp_51 = (temp_13 + 0.0 - fma(temp_50, exp2(temp_13 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_50)) * temp_48 * _sysEmitterStaticUniformBlock.data[11].w;
        temp_46 = temp_51 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_45 = temp_51 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_47 = temp_51 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_43 = temp_49;
        temp_23 = temp_48;
    }
    temp_52 = temp_43;
    temp_53 = temp_23;
    if (!temp_12)
    {
        temp_54 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_24 = fma(exp2(temp_13 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_54, temp_54);
        temp_52 = temp_54;
    }
    temp_55 = temp_52;
    temp_56 = temp_24;
    if (temp_29)
    {
        temp_25 = temp_20 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_57 = temp_25;
    if (temp_35)
    {
        temp_26 = inversesqrt(temp_17);
    }
    temp_58 = temp_26;
    if (temp_29)
    {
        temp_55 = temp_20 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_59 = temp_55;
    if (!temp_29)
    {
        temp_57 = 0.0;
    }
    if (!temp_29)
    {
        temp_59 = 0.0;
    }
    temp_60 = temp_59;
    if (temp_29)
    {
        temp_53 = temp_20 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_61 = temp_53;
    if (!temp_29)
    {
        temp_61 = 0.0;
    }
    if (temp_30)
    {
        temp_56 = temp_21 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_62 = temp_56;
    if (!temp_30)
    {
        temp_62 = 0.0;
    }
    if (temp_30)
    {
        temp_27 = temp_21 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_63 = temp_27;
    if (!temp_30)
    {
        temp_63 = 0.0;
    }
    if (temp_30)
    {
        temp_38 = temp_21 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_64 = fma(fma(temp_24, sysLocalVecAttr.x, temp_47), temp_9, sysLocalPosAttr.x);
    temp_65 = temp_38;
    if (!temp_30)
    {
        temp_65 = 0.0;
    }
    temp_66 = fma(fma(temp_24, sysLocalVecAttr.y, temp_46), temp_9, sysLocalPosAttr.y);
    temp_67 = fma(fma(temp_24, temp_10, temp_45), temp_9, sysLocalPosAttr.z);
    if (temp_35)
    {
        temp_28 = temp_26 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_68 = temp_28;
    if (!temp_35)
    {
        temp_68 = 0.0;
    }
    if (temp_35)
    {
        temp_60 = temp_26 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_69 = temp_60;
    if (!temp_35)
    {
        temp_69 = 0.0;
    }
    if (temp_35)
    {
        temp_58 = temp_26 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_70 = temp_58;
    if (!temp_35)
    {
        temp_70 = 0.0;
    }
    temp_71 = floatBitsToInt(1.0 / float(uint(temp_18))) + -2;
    temp_72 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[6].y, temp_64 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_73 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[5].y, temp_64 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_74 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[4].y, temp_64 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_75 = uint(max(trunc(float(0u) * intBitsToFloat(temp_71)), 0.0));
    temp_76 = temp_72 + fma(temp_40, temp_70, fma(temp_41, temp_65, temp_44 * temp_59));
    temp_77 = floatBitsToInt(1.0 / float(uint(abs(temp_18)))) + -2;
    temp_78 = temp_74 + fma(temp_40, temp_68, fma(temp_41, temp_62, temp_44 * temp_61));
    temp_79 = fma(0.0, temp_74, fma(temp_68, temp_33, fma(temp_62, temp_32, temp_61 * temp_31)));
    temp_80 = temp_73 + fma(temp_40, temp_69, fma(temp_41, temp_63, temp_44 * temp_57));
    temp_81 = fma(0.0, temp_73, fma(temp_69, temp_33, fma(temp_63, temp_32, temp_57 * temp_31)));
    temp_82 = fma(0.0, temp_72, fma(temp_70, temp_33, fma(temp_65, temp_32, temp_59 * temp_31)));
    out_attr6.x = temp_79;
    out_attr6.y = temp_81;
    out_attr6.z = temp_82;
    temp_83 = uint(max(trunc(intBitsToFloat(temp_77) * float(0u)), 0.0));
    temp_84 = fma(temp_76, _sysViewUniformBlock.data[0].z, fma(temp_80, _sysViewUniformBlock.data[0].y, temp_78 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_85 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_82, _sysViewUniformBlock.data[0].z, fma(temp_81, _sysViewUniformBlock.data[0].y, temp_79 * _sysViewUniformBlock.data[0].x)));
    temp_86 = (abs(temp_18) & 0xFFFF) * (int(temp_83 >> 16)) & 0xFFFF | int(temp_83) << 16;
    temp_87 = (temp_18 & 0xFFFF) * (int(temp_75 >> 16)) & 0xFFFF | int(temp_75) << 16;
    temp_88 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_82, _sysViewUniformBlock.data[1].z, fma(temp_81, _sysViewUniformBlock.data[1].y, temp_79 * _sysViewUniformBlock.data[1].x)));
    temp_89 = fma(temp_76, _sysViewUniformBlock.data[1].z, fma(temp_80, _sysViewUniformBlock.data[1].y, temp_78 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_90 = fma(temp_76, _sysViewUniformBlock.data[2].z, fma(temp_80, _sysViewUniformBlock.data[2].y, temp_78 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_91 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_82, _sysViewUniformBlock.data[2].z, fma(temp_81, _sysViewUniformBlock.data[2].y, temp_79 * _sysViewUniformBlock.data[2].x)));
    temp_92 = inversesqrt(fma(temp_90, temp_90, fma(temp_89, temp_89, temp_84 * temp_84)));
    temp_93 = inversesqrt(fma(temp_91, temp_91, fma(temp_88, temp_88, temp_85 * temp_85)));
    temp_94 = temp_84 * temp_92;
    temp_95 = temp_85 * temp_93;
    temp_96 = temp_88 * temp_93;
    temp_97 = temp_89 * temp_92;
    temp_98 = temp_90 * temp_92;
    temp_99 = int(temp_83) + int(uint(max(trunc(intBitsToFloat(temp_77) * float(uint(0 - ((int(uint(abs(temp_18)) >> 16)) * (int(uint(temp_86) >> 16)) << 16) + (abs(temp_18) & 0xFFFF) * (int(temp_83) & 0xFFFF) + (temp_86 << 16)))), 0.0)));
    temp_100 = clamp(max(temp_91 * temp_93, 0.2) + -0.0, 0.0, 1.0);
    temp_101 = int(temp_75) + int(uint(max(trunc(intBitsToFloat(temp_71) * float(uint(0 - ((int(uint(temp_18) >> 16)) * (int(uint(temp_87) >> 16)) << 16) + (temp_18 & 0xFFFF) * (int(temp_75) & 0xFFFF) + (temp_87 << 16)))), 0.0)));
    temp_102 = (abs(temp_18) & 0xFFFF) * (int(uint(temp_99) >> 16)) & 0xFFFF | temp_99 << 16;
    temp_103 = fma(temp_98, temp_100, fma(temp_97, temp_96, temp_94 * temp_95));
    temp_104 = (temp_18 & 0xFFFF) * (int(uint(temp_101) >> 16)) & 0xFFFF | temp_101 << 16;
    temp_105 = sysRandomAttr.y;
    temp_106 = fma(temp_95 * temp_103, -2.0, temp_94);
    temp_107 = fma(temp_96 * temp_103, -2.0, temp_97);
    temp_108 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_109 = 0 - temp_101 + ((uint(0 - ((int(uint(temp_18) >> 16)) * (int(uint(temp_104) >> 16)) << 16) + (temp_18 & 0xFFFF) * (temp_101 & 0xFFFF) + (temp_104 << 16)) >= uint(temp_18) ? -1 : 0));
    temp_110 = 0 - int(uint(temp_18) >> 31);
    temp_111 = (temp_18 & 0xFFFF) * (int(uint(temp_109) >> 16)) & 0xFFFF | temp_109 << 16;
    temp_112 = 1.0 / (sqrt(fma(fma(temp_100 * temp_103, -2.0, temp_98) + 1.0, fma(temp_100 * temp_103, -2.0, temp_98) + 1.0, fma(0.0 + temp_107, 0.0 + temp_107, (0.0 + temp_106) * (0.0 + temp_106)))) * 2.0);
    temp_113 = fma(temp_107, 0.0 - temp_112, 0.5);
    temp_114 = fma(temp_106, temp_112, 0.5);
    temp_115 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_116 = fma(temp_76, _sysViewUniformBlock.data[9].z, fma(temp_80, _sysViewUniformBlock.data[9].y, temp_78 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_117 = temp_113;
    temp_118 = temp_114;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_105 > 0.5) ? -1 : 0)) != 0))
    {
        temp_117 = 0.0 - temp_113 + 1.0;
    }
    temp_119 = fma(temp_76, _sysViewUniformBlock.data[8].z, fma(temp_80, _sysViewUniformBlock.data[8].y, temp_78 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_8 > 0.5) ? -1 : 0)) != 0))
    {
        temp_118 = 0.0 - temp_114 + 1.0;
    }
    temp_120 = fma(temp_76, _sysViewUniformBlock.data[10].z, fma(temp_80, _sysViewUniformBlock.data[10].y, temp_78 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_121 = fma(0.0, temp_119, 0.0 * temp_116);
    temp_122 = fma(temp_76, _sysViewUniformBlock.data[11].z, fma(temp_80, _sysViewUniformBlock.data[11].y, temp_78 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    gl_Position.x = temp_119;
    gl_Position.y = temp_116;
    gl_Position.z = temp_120;
    gl_Position.w = temp_122;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr3.z = fma(0.0, temp_122, temp_121 + temp_120);
    out_attr3.w = temp_122 + fma(0.0, temp_120, temp_121);
    out_attr2.x = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_8, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_108, temp_118, -0.5), fma(temp_108, float(temp_18 < 0 || !(temp_18 == 0) ? ((int(uint(temp_18) >> 16)) * (int(uint(temp_111) >> 16)) << 16) + (temp_18 & 0xFFFF) * (temp_109 & 0xFFFF) + (temp_111 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_8 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_105, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_115, temp_117, -0.5), 0.0 - fma(temp_115, 0.0 - float(temp_18 < 0 || !(temp_18 == 0) ? 0 - temp_110 + (temp_99 + 0 - (uint(0 - ((int(uint(abs(temp_18)) >> 16)) * (int(uint(temp_102) >> 16)) << 16) + (abs(temp_18) & 0xFFFF) * (temp_99 & 0xFFFF) + (temp_102 << 16)) >= uint(abs(temp_18)) ? -1 : 0) ^ temp_110) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_105 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr7.x = temp_78 + 0.0 - _sysViewUniformBlock.data[17].x;
    out_attr7.y = temp_80 + 0.0 - _sysViewUniformBlock.data[17].y;
    out_attr7.z = temp_76 + 0.0 - _sysViewUniformBlock.data[17].z;
    break;
} while (false);
}
