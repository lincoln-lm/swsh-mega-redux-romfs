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
layout (location = 2) in vec4 sysNormalAttr;
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;

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
    precise float temp_4;
    precise float temp_5;
    bool temp_6;
    precise float temp_7;
    int temp_8;
    int temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    int temp_13;
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
    int temp_32;
    bool temp_33;
    bool temp_34;
    precise float temp_35;
    int temp_36;
    uint temp_37;
    bool temp_38;
    int temp_39;
    int temp_40;
    uint temp_41;
    precise float temp_42;
    bool temp_43;
    precise float temp_44;
    precise float temp_45;
    uint temp_46;
    uint temp_47;
    int temp_48;
    precise float temp_49;
    int temp_50;
    precise float temp_51;
    precise float temp_52;
    precise float temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    int temp_60;
    int temp_61;
    int temp_62;
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
    int temp_77;
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    bool temp_83;
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
    bool temp_97;
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
    precise float temp_111;
    precise float temp_112;
    int temp_113;
    int temp_114;
    int temp_115;
    precise float temp_116;
    precise float temp_117;
    precise float temp_118;
    int temp_119;
    int temp_120;
    int temp_121;
    precise float temp_122;
    precise float temp_123;
    int temp_124;
    precise float temp_125;
    precise float temp_126;
    precise float temp_127;
    int temp_128;
    int temp_129;
    int temp_130;
    int temp_131;
    int temp_132;
    int temp_133;
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
    temp_4 = 0.0 - temp_0 + _sysEmitterDynamicUniformBlock.data[2].x;
    temp_5 = float(int(trunc(sysLocalPosAttr.w)));
    temp_6 = temp_4 >= temp_5;
    if (temp_6)
    {
        out_attr4.x = 0.0;
    }
    temp_7 = intBitsToFloat(undef);
    if (temp_6)
    {
        temp_7 = _sysViewUniformBlock.data[18].y;
    }
    temp_8 = undef;
    if (temp_6)
    {
        temp_8 = floatBitsToInt(temp_7 * 5.0);
    }
    if (temp_6)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_8);
    }
    if (!(!temp_6))
    {
        break;
    }
    temp_9 = int(trunc(_sysEmitterStaticUniformBlock.data[48].z));
    temp_10 = sysRandomAttr.y;
    temp_11 = sysRandomAttr.x;
    temp_12 = sysRandomAttr.z;
    temp_13 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_14 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_15 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_16 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_17 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_18 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_19 = sysTexCoordAttr.x;
    temp_20 = sysTexCoordAttr.y;
    temp_21 = temp_4 * (1.0 / temp_5);
    temp_22 = temp_21 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_23 = temp_21 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_24 = temp_19;
    temp_25 = temp_19;
    temp_26 = temp_20;
    temp_27 = temp_23;
    temp_28 = temp_11;
    temp_29 = temp_14;
    temp_30 = temp_18;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_24 = 0.0 - temp_19 + 1.0;
    }
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_25 = 0.0 - temp_19 + 1.0;
    }
    temp_31 = temp_20;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_10 > 0.5) ? -1 : 0)) != 0))
    {
        temp_31 = 0.0 - temp_20 + 1.0;
    }
    temp_32 = floatBitsToInt(1.0 / float(uint(temp_9))) + -2;
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_26 = 0.0 - temp_20 + 1.0;
    }
    temp_33 = sqrt(temp_15) > 0.0;
    temp_34 = sqrt(temp_14) > 0.0;
    temp_35 = temp_21 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_36 = floatBitsToInt(1.0 / float(uint(temp_13))) + -2;
    temp_37 = uint(max(trunc(float(0u) * intBitsToFloat(temp_32)), 0.0));
    temp_38 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_39 = floatBitsToInt(1.0 / float(uint(abs(temp_9)))) + -2;
    temp_40 = floatBitsToInt(1.0 / float(uint(abs(temp_13)))) + -2;
    temp_41 = uint(max(trunc(float(0u) * intBitsToFloat(temp_36)), 0.0));
    temp_42 = temp_21 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_43 = sqrt(temp_18) > 0.0;
    temp_44 = temp_4 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_45 = (clamp(min(0.0, temp_11) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_46 = uint(max(trunc(intBitsToFloat(temp_39) * float(0u)), 0.0));
    temp_47 = uint(max(trunc(float(0u) * intBitsToFloat(temp_40)), 0.0));
    temp_48 = (temp_9 & 0xFFFF) * (int(temp_37 >> 16)) & 0xFFFF | int(temp_37) << 16;
    temp_49 = intBitsToFloat(temp_48);
    if (temp_38)
    {
        temp_27 = temp_44 * temp_44;
    }
    temp_50 = (temp_13 & 0xFFFF) * (int(temp_41 >> 16)) & 0xFFFF | int(temp_41) << 16;
    temp_51 = temp_21 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_52 = temp_51;
    if (temp_33)
    {
        temp_49 = inversesqrt(temp_15);
    }
    temp_53 = intBitsToFloat(undef);
    if (temp_38)
    {
        temp_53 = temp_27 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_54 = intBitsToFloat(undef);
    temp_55 = temp_53;
    if (temp_38)
    {
        temp_54 = temp_44;
    }
    temp_56 = intBitsToFloat(undef);
    temp_57 = temp_54;
    if (temp_38)
    {
        temp_56 = temp_53 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_58 = intBitsToFloat(undef);
    temp_59 = temp_56;
    if (temp_38)
    {
        temp_58 = temp_53 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_60 = (abs(temp_9) & 0xFFFF) * (int(temp_46 >> 16)) & 0xFFFF | int(temp_46) << 16;
    temp_61 = (abs(temp_13) & 0xFFFF) * (int(temp_47) & 0xFFFF);
    temp_62 = (abs(temp_13) & 0xFFFF) * (int(temp_47 >> 16)) & 0xFFFF | int(temp_47) << 16;
    temp_63 = temp_58;
    temp_64 = intBitsToFloat(temp_61);
    if (temp_38)
    {
        temp_55 = temp_53 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_65 = temp_55;
    if (!temp_38)
    {
        temp_66 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_67 = (temp_44 + 0.0 - fma(temp_66, exp2(temp_44 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_66)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_65 = temp_67 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_59 = temp_67 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_63 = temp_67 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_68 = temp_59;
    if (!temp_38)
    {
        temp_69 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_57 = fma(exp2(temp_44 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_69, temp_69);
    }
    temp_70 = temp_21 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_71 = sysNormalAttr.x;
    temp_72 = sysNormalAttr.y;
    temp_73 = sysNormalAttr.z;
    temp_74 = intBitsToFloat(undef);
    if (temp_34)
    {
        temp_74 = inversesqrt(temp_14);
    }
    temp_75 = sysScaleAttr.w;
    temp_76 = fma(temp_57, sysLocalVecAttr.y, temp_59);
    temp_77 = 0;
    temp_78 = temp_76;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_77 = 1;
    }
    temp_79 = intBitsToFloat(temp_77);
    if (temp_33)
    {
        temp_68 = temp_49 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_80 = temp_68;
    if (temp_33)
    {
        temp_64 = temp_49 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_81 = temp_64;
    if (temp_33)
    {
        temp_52 = temp_49 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_82 = temp_52;
    if (!temp_33)
    {
        temp_81 = 0.0;
    }
    temp_83 = temp_77 == 1;
    if (!temp_33)
    {
        temp_80 = 0.0;
    }
    if (!temp_33)
    {
        temp_82 = 0.0;
    }
    temp_84 = temp_81 * temp_71;
    temp_85 = temp_11;
    temp_86 = temp_10;
    temp_87 = temp_11;
    temp_88 = temp_10;
    temp_89 = temp_84;
    if (temp_83)
    {
        temp_85 = temp_10;
    }
    temp_90 = temp_85;
    temp_91 = temp_85;
    if (temp_83)
    {
        temp_86 = temp_12;
    }
    temp_92 = temp_86;
    temp_93 = temp_86;
    if (temp_83)
    {
        temp_87 = temp_10;
    }
    temp_94 = temp_87;
    temp_95 = temp_87;
    if (temp_83)
    {
        temp_88 = temp_12;
    }
    temp_96 = temp_88;
    if (!temp_83)
    {
        temp_97 = temp_77 == 2;
        if (temp_97)
        {
            temp_90 = temp_12;
        }
        temp_91 = temp_90;
        if (temp_97)
        {
            temp_92 = temp_11;
        }
        temp_93 = temp_92;
        if (temp_97)
        {
            temp_94 = temp_11;
        }
        temp_95 = temp_94;
        if (temp_97)
        {
            temp_96 = temp_10;
        }
    }
    temp_98 = temp_21 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_99 = fma(temp_76, temp_75, sysLocalPosAttr.y);
    if (temp_43)
    {
        temp_78 = inversesqrt(temp_18);
    }
    temp_100 = fma(fma(temp_57, sysLocalVecAttr.z, temp_63), temp_75, sysLocalPosAttr.z);
    if (temp_34)
    {
        temp_28 = temp_74 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_101 = temp_28;
    if (temp_34)
    {
        temp_29 = temp_74 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_102 = temp_29;
    if (temp_34)
    {
        temp_79 = temp_74 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_103 = temp_79;
    if (!temp_34)
    {
        temp_101 = 0.0;
    }
    temp_104 = temp_101;
    if (!temp_34)
    {
        temp_102 = 0.0;
    }
    if (!temp_34)
    {
        temp_103 = 0.0;
    }
    temp_105 = fma(fma(temp_57, sysLocalVecAttr.x, temp_65), temp_75, sysLocalPosAttr.x);
    if (temp_43)
    {
        temp_104 = temp_78 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_106 = temp_104;
    if (temp_43)
    {
        temp_30 = temp_78 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_107 = temp_30;
    if (temp_43)
    {
        temp_89 = temp_78 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_108 = temp_21 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_109 = temp_89;
    if (!temp_43)
    {
        temp_106 = 0.0;
    }
    if (!temp_43)
    {
        temp_107 = 0.0;
    }
    temp_110 = int(temp_37) + int(uint(max(trunc(intBitsToFloat(temp_32) * float(uint(0 - ((int(uint(temp_9) >> 16)) * (int(uint(temp_48) >> 16)) << 16) + (temp_9 & 0xFFFF) * (int(temp_37) & 0xFFFF) + (temp_48 << 16)))), 0.0)));
    temp_111 = fma(temp_100, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_99, _sysEmitterDynamicUniformBlock.data[6].y, temp_105 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    out_attr4.y = fma(temp_108, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_98, 0.0 - temp_108, temp_98), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_70, 0.0 - temp_98, temp_70), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_51, 0.0 - temp_70, temp_51), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_42, 0.0 - temp_51, temp_42), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_35, 0.0 - temp_42, temp_35), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_23, 0.0 - temp_35, temp_23), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_21 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_23, 0.0 - temp_22, temp_22), fma(temp_22, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    if (!temp_43)
    {
        temp_109 = 0.0;
    }
    temp_112 = fma(temp_100, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_99, _sysEmitterDynamicUniformBlock.data[4].y, temp_105 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_113 = (temp_9 & 0xFFFF) * (int(uint(temp_110) >> 16)) & 0xFFFF | temp_110 << 16;
    temp_114 = int(temp_41) + int(uint(max(trunc(intBitsToFloat(temp_36) * float(uint(0 - ((int(uint(temp_13) >> 16)) * (int(uint(temp_50) >> 16)) << 16) + (temp_13 & 0xFFFF) * (int(temp_41) & 0xFFFF) + (temp_50 << 16)))), 0.0)));
    temp_115 = int(temp_46) + int(uint(max(trunc(intBitsToFloat(temp_39) * float(uint(0 - ((int(uint(abs(temp_9)) >> 16)) * (int(uint(temp_60) >> 16)) << 16) + (abs(temp_9) & 0xFFFF) * (int(temp_46) & 0xFFFF) + (temp_60 << 16)))), 0.0)));
    temp_116 = temp_111 + fma(temp_17, temp_106, fma(temp_16, temp_101, temp_45 * temp_80));
    temp_117 = fma(temp_100, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_99, _sysEmitterDynamicUniformBlock.data[5].y, temp_105 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_118 = temp_112 + fma(temp_17, temp_107, fma(temp_16, temp_103, temp_45 * temp_81));
    temp_119 = int(temp_47) + int(uint(max(trunc(intBitsToFloat(temp_40) * float(uint(0 - ((int(uint(abs(temp_13)) >> 16)) * (int(uint(temp_62) >> 16)) << 16) + temp_61 + (temp_62 << 16)))), 0.0)));
    temp_120 = (temp_13 & 0xFFFF) * (int(uint(temp_114) >> 16)) & 0xFFFF | temp_114 << 16;
    temp_121 = (abs(temp_9) & 0xFFFF) * (int(uint(temp_115) >> 16)) & 0xFFFF | temp_115 << 16;
    temp_122 = temp_117 + fma(temp_17, temp_109, fma(temp_16, temp_102, temp_45 * temp_82));
    temp_123 = temp_118 + 0.0 - _sysViewUniformBlock.data[17].x;
    temp_124 = (abs(temp_13) & 0xFFFF) * (int(uint(temp_119) >> 16)) & 0xFFFF | temp_119 << 16;
    temp_125 = temp_122 + 0.0 - _sysViewUniformBlock.data[17].y;
    temp_126 = temp_116 + 0.0 - _sysViewUniformBlock.data[17].z;
    temp_127 = inversesqrt(fma(temp_126, temp_126, fma(temp_125, temp_125, temp_123 * temp_123)));
    temp_128 = 0 - temp_114 + ((uint(0 - ((int(uint(temp_13) >> 16)) * (int(uint(temp_120) >> 16)) << 16) + (temp_13 & 0xFFFF) * (temp_114 & 0xFFFF) + (temp_120 << 16)) >= uint(temp_13) ? -1 : 0));
    temp_129 = 0 - temp_110 + ((uint(0 - ((int(uint(temp_9) >> 16)) * (int(uint(temp_113) >> 16)) << 16) + (temp_9 & 0xFFFF) * (temp_110 & 0xFFFF) + (temp_113 << 16)) >= uint(temp_9) ? -1 : 0));
    temp_130 = 0 - int(uint(temp_9) >> 31);
    temp_131 = (temp_9 & 0xFFFF) * (int(uint(temp_129) >> 16)) & 0xFFFF | temp_129 << 16;
    temp_132 = (temp_13 & 0xFFFF) * (int(uint(temp_128) >> 16)) & 0xFFFF | temp_128 << 16;
    temp_133 = 0 - int(uint(temp_13) >> 31);
    temp_134 = 1.0 / _sysEmitterStaticUniformBlock.data[48].w * _sysEmitterStaticUniformBlock.data[48].y;
    temp_135 = 1.0 / _sysEmitterStaticUniformBlock.data[48].z * _sysEmitterStaticUniformBlock.data[48].x;
    temp_136 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_137 = fma(temp_116, _sysViewUniformBlock.data[9].z, fma(temp_122, _sysViewUniformBlock.data[9].y, temp_118 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_138 = fma(temp_116, _sysViewUniformBlock.data[8].z, fma(temp_122, _sysViewUniformBlock.data[8].y, temp_118 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_139 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    temp_140 = clamp((abs(fma(fma(0.0, temp_111, fma(temp_106, temp_73, fma(temp_101, temp_72, temp_80 * temp_71))), temp_126 * temp_127, fma(fma(0.0, temp_117, fma(temp_109, temp_73, fma(temp_102, temp_72, temp_82 * temp_71))), temp_125 * temp_127, fma(0.0, temp_112, fma(temp_107, temp_73, fma(temp_103, temp_72, temp_84))) * temp_123 * temp_127))) + 0.0 - _sysEmitterStaticUniformBlock.data[92].z) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[92].z + _sysEmitterStaticUniformBlock.data[92].w)), 0.0, 1.0);
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_141 = fma(temp_116, _sysViewUniformBlock.data[10].z, fma(temp_122, _sysViewUniformBlock.data[10].y, temp_118 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_142 = fma(0.0, temp_138, 0.0 * temp_137);
    temp_143 = fma(temp_116, _sysViewUniformBlock.data[11].z, fma(temp_122, _sysViewUniformBlock.data[11].y, temp_118 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_138;
    gl_Position.y = temp_137;
    gl_Position.z = temp_141;
    gl_Position.w = temp_143;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr3.z = fma(0.0, temp_143, temp_142 + temp_141);
    out_attr3.w = temp_143 + fma(0.0, temp_141, temp_142);
    out_attr2.x = fma(fma(temp_4, _sysEmitterStaticUniformBlock.data[45].z, fma(temp_11, _sysEmitterStaticUniformBlock.data[46].z, _sysEmitterStaticUniformBlock.data[46].x + _sysEmitterStaticUniformBlock.data[46].z)), fma(temp_135, temp_24, -0.5), fma(temp_135, float(temp_9 < 0 || !(temp_9 == 0) ? ((int(uint(temp_9) >> 16)) * (int(uint(temp_131) >> 16)) << 16) + (temp_9 & 0xFFFF) * (temp_129 & 0xFFFF) + (temp_131 << 16) : -1), fma(temp_4, 0.0 - _sysEmitterStaticUniformBlock.data[44].x, 0.0 - fma(temp_11 * _sysEmitterStaticUniformBlock.data[45].x, -2.0, _sysEmitterStaticUniformBlock.data[45].x + _sysEmitterStaticUniformBlock.data[44].z)))) + 0.5;
    out_attr2.y = fma(fma(temp_4, _sysEmitterStaticUniformBlock.data[45].w, fma(temp_10, _sysEmitterStaticUniformBlock.data[46].w, _sysEmitterStaticUniformBlock.data[46].w + _sysEmitterStaticUniformBlock.data[46].y)), fma(temp_134, temp_31, -0.5), 0.0 - fma(temp_134, 0.0 - float(temp_9 < 0 || !(temp_9 == 0) ? 0 - temp_130 + (temp_115 + 0 - (uint(0 - ((int(uint(abs(temp_9)) >> 16)) * (int(uint(temp_121) >> 16)) << 16) + (abs(temp_9) & 0xFFFF) * (temp_115 & 0xFFFF) + (temp_121 << 16)) >= uint(abs(temp_9)) ? -1 : 0) ^ temp_130) : -1), fma(temp_4, _sysEmitterStaticUniformBlock.data[44].y, fma(temp_10 * _sysEmitterStaticUniformBlock.data[45].y, -2.0, _sysEmitterStaticUniformBlock.data[45].y + _sysEmitterStaticUniformBlock.data[44].w)))) + 0.5;
    out_attr2.z = fma(fma(temp_4, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_95, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].x + _sysEmitterStaticUniformBlock.data[51].z)), fma(temp_136, temp_25, -0.5), fma(temp_136, float(temp_13 < 0 || !(temp_13 == 0) ? ((int(uint(temp_13) >> 16)) * (int(uint(temp_132) >> 16)) << 16) + (temp_13 & 0xFFFF) * (temp_128 & 0xFFFF) + (temp_132 << 16) : -1), fma(temp_4, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_91 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_4, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_96, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), fma(temp_139, temp_26, -0.5), 0.0 - fma(temp_139, 0.0 - float(temp_13 < 0 || !(temp_13 == 0) ? 0 - temp_133 + (temp_119 + 0 - (uint(0 - ((int(uint(abs(temp_13)) >> 16)) * (int(uint(temp_124) >> 16)) << 16) + (abs(temp_13) & 0xFFFF) * (temp_119 & 0xFFFF) + (temp_124 << 16)) >= uint(abs(temp_13)) ? -1 : 0) ^ temp_133) : -1), fma(temp_4, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_93 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    out_attr4.x = fma(temp_140, -2.0, 3.0) * temp_140 * temp_140 * _sysEmitterDynamicUniformBlock.data[3].x;
    break;
} while (false);
}
