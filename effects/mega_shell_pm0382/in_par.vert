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


layout (location = 0) in vec4 sysLocalPosAttr;
layout (location = 1) in vec4 sysLocalVecAttr;
layout (location = 2) in vec4 sysScaleAttr;
layout (location = 3) in vec4 sysRandomAttr;
layout (location = 4) in vec4 sysEmtMat0Attr;
layout (location = 5) in vec4 sysEmtMat1Attr;
layout (location = 6) in vec4 sysEmtMat2Attr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;


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
    bool temp_12;
    bool temp_13;
    precise float temp_14;
    int temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    int temp_21;
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
    precise float temp_39;
    precise float temp_40;
    precise float temp_41;
    precise float temp_42;
    bool temp_43;
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
    bool temp_116;
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
    precise float temp_135;
    precise float temp_136;
    precise float temp_137;
    precise float temp_138;
    precise float temp_139;
    precise float temp_140;
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
    temp_10 = intBitsToFloat(gl_VertexID);
    temp_11 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 2;
    temp_12 = (floatBitsToInt(temp_10) & 1) != 0;
    temp_13 = (floatBitsToInt(temp_10) & 2) != 0;
    temp_14 = fma(temp_5 + _sysEmitterStaticUniformBlock.data[15].z, 1.0 / _sysEmitterStaticUniformBlock.data[14].z, temp_9 * _sysEmitterStaticUniformBlock.data[15].x);
    temp_15 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 1;
    temp_16 = intBitsToFloat(undef);
    if (temp_12)
    {
        temp_16 = 0.5;
    }
    temp_17 = intBitsToFloat(undef);
    temp_18 = temp_16;
    if (temp_13)
    {
        temp_17 = 0.5;
    }
    temp_19 = temp_14 + 0.0 - floor(temp_14);
    temp_20 = temp_17;
    if (!temp_12)
    {
        temp_18 = -0.5;
    }
    temp_21 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 4;
    temp_22 = temp_18;
    if (!temp_13)
    {
        temp_20 = -0.5;
    }
    temp_23 = fma(float(abs(0 - (temp_21 > 0 ? -1 : 0) + 0 - temp_21 >= 0 ? 0 : 1)), abs(0.0 - fma(temp_19 >= 0.5 ? 1.0 : 0.0, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, _sysEmitterStaticUniformBlock.data[14].x) + 1.0) + -0.0, fma(float(abs(0 - (temp_11 > 0 ? -1 : 0) + 0 - temp_11 >= 0 ? 0 : 1)), abs(fma(temp_19, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0)) + -0.0, fma(fma(cos(temp_14 * 6.28318548), 0.5, 0.5), 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0) * float(abs(0 - (temp_15 > 0 ? -1 : 0) + 0 - temp_15 >= 0 ? 0 : 1))));
    temp_24 = temp_23;
    temp_25 = temp_20;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_26 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_27 = temp_26 + 0.0 - floor(temp_26);
    }
    else
    {
        temp_27 = temp_5 * (1.0 / temp_6);
    }
    temp_28 = sysScaleAttr.w;
    temp_29 = sysLocalVecAttr.x;
    temp_30 = sysLocalVecAttr.y;
    temp_31 = sysLocalVecAttr.z;
    temp_32 = sysLocalPosAttr.y;
    temp_33 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_34 = sysEmtMat2Attr.x;
    temp_35 = sysEmtMat2Attr.y;
    temp_36 = sysEmtMat2Attr.z;
    temp_37 = temp_27 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_38 = temp_27 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_39 = temp_27 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_40 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_41 = temp_23 * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_42 = fma(temp_37, 0.0 - temp_38, temp_37);
    temp_43 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_44 = sysEmtMat0Attr.x;
    temp_45 = sysEmtMat0Attr.y;
    temp_46 = sysEmtMat0Attr.z;
    temp_47 = fma(temp_38, _sysEmitterStaticUniformBlock.data[97].x, fma(fma((_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_33, temp_39, _sysEmitterStaticUniformBlock.data[96].x), temp_42, fma(temp_37, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)));
    temp_48 = sysEmtMat1Attr.x;
    temp_49 = sysEmtMat1Attr.y;
    temp_50 = sysEmtMat1Attr.z;
    temp_51 = temp_41;
    temp_52 = temp_47;
    temp_53 = temp_40;
    temp_54 = temp_32;
    if (temp_43)
    {
        temp_24 = temp_40 * temp_40;
    }
    if (temp_43)
    {
        temp_51 = temp_24 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_55 = intBitsToFloat(undef);
    temp_56 = temp_51;
    if (temp_43)
    {
        temp_55 = temp_51 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_57 = temp_55;
    if (temp_43)
    {
        temp_52 = temp_51 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_58 = temp_52;
    if (temp_43)
    {
        temp_56 = temp_51 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_59 = temp_56;
    if (!temp_43)
    {
        temp_60 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_61 = (0.0 - fma(temp_60, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_40), 0.0 - temp_60) + temp_40) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_57 = temp_61 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_58 = temp_61 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_59 = temp_61 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_62 = temp_59;
    if (!temp_43)
    {
        temp_63 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_53 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_40), 0.0 - temp_63, temp_63);
    }
    temp_64 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * temp_47 * temp_23 * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_18);
    temp_65 = fma(temp_53, temp_29, temp_57);
    temp_66 = fma(temp_53, temp_30, temp_58);
    temp_67 = fma(temp_53, temp_31, temp_59);
    temp_68 = fma(temp_38, _sysEmitterStaticUniformBlock.data[97].y, fma(fma((_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_33, temp_39, _sysEmitterStaticUniformBlock.data[96].y), temp_42, fma(temp_37, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))) * temp_41 * sysScaleAttr.y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_20);
    temp_69 = fma(temp_65, temp_28, sysLocalPosAttr.x);
    temp_70 = fma(temp_66, temp_28, temp_32);
    temp_71 = fma(temp_67, temp_28, sysLocalPosAttr.z);
    temp_72 = temp_68;
    if (temp_43)
    {
        temp_54 = temp_5 * temp_5;
    }
    temp_73 = temp_69 * temp_48;
    temp_74 = fma(0.0, _sysViewUniformBlock.data[12].z, fma(temp_68, _sysViewUniformBlock.data[12].y, temp_64 * _sysViewUniformBlock.data[12].x));
    temp_75 = temp_74;
    temp_76 = temp_73;
    if (temp_43)
    {
        temp_72 = temp_54 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_77 = temp_74 + _sysViewUniformBlock.data[12].w;
    temp_78 = temp_72;
    if (temp_43)
    {
        temp_75 = temp_72 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_79 = temp_75;
    if (temp_43)
    {
        temp_62 = temp_72 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_80 = temp_62;
    if (temp_43)
    {
        temp_76 = temp_5;
    }
    temp_81 = fma(0.0, _sysViewUniformBlock.data[13].z, fma(temp_68, _sysViewUniformBlock.data[13].y, temp_64 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w;
    temp_82 = temp_76;
    if (temp_43)
    {
        temp_78 = temp_72 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_83 = temp_78;
    if (!temp_43)
    {
        temp_84 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_85 = (temp_5 + 0.0 - fma(temp_84, exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_84)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_83 = temp_85 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_79 = temp_85 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_80 = temp_85 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_43)
    {
        temp_86 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_82 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_86, temp_86);
    }
    temp_87 = fma(0.0, _sysViewUniformBlock.data[14].z, fma(temp_68, _sysViewUniformBlock.data[14].y, temp_64 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w;
    temp_88 = fma(temp_82, temp_29, temp_83);
    temp_89 = fma(temp_82, temp_30, temp_79);
    temp_90 = fma(temp_82, temp_31, temp_80);
    if (temp_5 < 0.001)
    {
        temp_91 = inversesqrt(fma(temp_31, temp_31, fma(temp_30, temp_30, temp_29 * temp_29)));
        temp_88 = fma(temp_91 * temp_29, -0.001, temp_65);
        temp_89 = fma(temp_91 * temp_30, -0.001, temp_66);
        temp_90 = fma(temp_91 * temp_31, -0.001, temp_67);
    }
    temp_92 = temp_65 + 0.0 - temp_88;
    temp_93 = fma(temp_87, temp_87, fma(temp_81, temp_81, temp_77 * temp_77));
    temp_94 = temp_66 + 0.0 - temp_89;
    temp_95 = temp_67 + 0.0 - temp_90;
    temp_96 = fma(temp_71, temp_50, fma(temp_70, temp_49, temp_73)) + sysEmtMat1Attr.w;
    temp_97 = fma(temp_95, temp_36, fma(temp_94, temp_35, temp_92 * temp_34));
    temp_98 = fma(temp_95, temp_50, fma(temp_94, temp_49, temp_92 * temp_48));
    temp_99 = temp_77 + fma(temp_71, temp_46, fma(temp_70, temp_45, temp_69 * temp_44)) + sysEmtMat0Attr.w;
    temp_100 = temp_87 + fma(temp_71, temp_36, fma(temp_70, temp_35, temp_69 * temp_34)) + sysEmtMat2Attr.w;
    temp_101 = temp_81 + temp_96;
    temp_102 = 0.0 + temp_97;
    temp_103 = 0.0 + temp_98;
    temp_104 = 0.0 + fma(temp_95, temp_46, fma(temp_94, temp_45, temp_92 * temp_44));
    temp_105 = temp_97;
    temp_106 = temp_95;
    temp_107 = temp_98;
    temp_108 = temp_96;
    temp_109 = temp_103;
    temp_110 = temp_104;
    temp_111 = temp_103;
    temp_112 = temp_102;
    temp_113 = temp_99;
    temp_114 = temp_101;
    temp_115 = temp_100;
    if (sqrt(temp_93) > 0.0)
    {
        temp_116 = 0.0 < _sysEmitterDynamicUniformBlock.data[2].w;
        if (temp_116)
        {
            temp_105 = _sysEmitterDynamicUniformBlock.data[2].w;
        }
        if (temp_116)
        {
            temp_106 = 1.0 / temp_105;
        }
        temp_117 = temp_106;
        if (temp_116)
        {
            temp_107 = temp_104 * temp_106;
        }
        temp_118 = temp_107;
        temp_119 = temp_107;
        if (temp_116)
        {
            temp_108 = temp_103 * temp_106;
        }
        temp_120 = temp_108;
        temp_121 = temp_108;
        if (temp_116)
        {
            temp_117 = temp_102 * temp_106;
        }
        temp_122 = temp_117;
        temp_123 = temp_117;
        if (!temp_116)
        {
            temp_124 = temp_5 + 1.0;
            temp_125 = temp_124;
            if (temp_43)
            {
                temp_120 = temp_124 * temp_124;
            }
            temp_126 = temp_120;
            if (temp_43)
            {
                temp_122 = temp_120 * _sysEmitterStaticUniformBlock.data[11].w;
            }
            if (temp_43)
            {
                temp_118 = temp_122 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
            }
            temp_127 = temp_118;
            if (temp_43)
            {
                temp_126 = temp_122 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
            }
            temp_128 = temp_126;
            if (temp_43)
            {
                temp_109 = temp_122 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
            }
            temp_129 = temp_109;
            if (!temp_43)
            {
                temp_130 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
                temp_131 = (temp_124 + 0.0 - fma(temp_130, exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_124), 0.0 - temp_130)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
                temp_129 = temp_131 * _sysEmitterStaticUniformBlock.data[11].x;
                temp_127 = temp_131 * _sysEmitterStaticUniformBlock.data[11].y;
                temp_128 = temp_131 * _sysEmitterStaticUniformBlock.data[11].z;
            }
            if (!temp_43)
            {
                temp_132 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
                temp_125 = fma(exp2(log2(abs(_sysEmitterStaticUniformBlock.data[12].x)) * temp_124), 0.0 - temp_132, temp_132);
            }
            temp_133 = fma(temp_125, temp_29, temp_129) + 0.0 - temp_88;
            temp_134 = fma(temp_125, temp_30, temp_127) + 0.0 - temp_89;
            temp_135 = fma(temp_125, temp_31, temp_128) + 0.0 - temp_90;
            temp_136 = 0.0 + fma(temp_135, temp_46, fma(temp_134, temp_45, temp_133 * temp_44));
            temp_137 = 0.0 + fma(temp_135, temp_50, fma(temp_134, temp_49, temp_133 * temp_48));
            temp_138 = 0.0 + fma(temp_135, temp_36, fma(temp_134, temp_35, temp_133 * temp_34));
            temp_110 = temp_136;
            temp_111 = temp_137;
            temp_112 = temp_138;
            temp_119 = temp_136;
            temp_123 = temp_138;
            temp_121 = temp_137;
        }
        temp_139 = fma(temp_112, temp_112, fma(temp_111, temp_111, temp_110 * temp_110));
        if (sqrt(temp_139) > 0.0)
        {
            temp_140 = fma(temp_87 * inversesqrt(temp_93), inversesqrt(temp_139) * temp_112, fma(temp_81 * inversesqrt(temp_93), inversesqrt(temp_139) * temp_111, temp_77 * inversesqrt(temp_93) * inversesqrt(temp_139) * temp_110));
            temp_113 = fma(temp_140, temp_119 * _sysEmitterStaticUniformBlock.data[95].x, temp_99);
            temp_114 = fma(temp_140, temp_121 * _sysEmitterStaticUniformBlock.data[95].x, temp_101);
            temp_115 = fma(temp_140, temp_123 * _sysEmitterStaticUniformBlock.data[95].x, temp_100);
        }
    }
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_22 = 0.0 - temp_18 + -0.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_25 = 0.0 - temp_20 + -0.0;
    }
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    gl_Position.x = fma(temp_115, _sysViewUniformBlock.data[8].z, fma(temp_114, _sysViewUniformBlock.data[8].y, temp_113 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_115, _sysViewUniformBlock.data[9].z, fma(temp_114, _sysViewUniformBlock.data[9].y, temp_113 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_115, _sysViewUniformBlock.data[10].z, fma(temp_114, _sysViewUniformBlock.data[10].y, temp_113 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_115, _sysViewUniformBlock.data[11].z, fma(temp_114, _sysViewUniformBlock.data[11].y, temp_113 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr2.x = (temp_22 + 0.5) * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = (temp_25 + -0.5) * 0.0 - _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
