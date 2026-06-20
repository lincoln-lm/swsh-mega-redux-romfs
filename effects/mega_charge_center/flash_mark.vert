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
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;
layout (location = 7) in vec4 sysInitRotateAttr;

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
    int temp_14;
    precise float temp_15;
    int temp_16;
    int temp_17;
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
    bool temp_28;
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
    bool temp_52;
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
    int temp_105;
    int temp_106;
    uint temp_107;
    int temp_108;
    int temp_109;
    uint temp_110;
    int temp_111;
    int temp_112;
    int temp_113;
    precise float temp_114;
    int temp_115;
    int temp_116;
    precise float temp_117;
    precise float temp_118;
    int temp_119;
    bool temp_120;
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
    bool temp_135;
    int temp_136;
    precise float temp_137;
    int temp_138;
    int temp_139;
    precise float temp_140;
    precise float temp_141;
    precise float temp_142;
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
    temp_14 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_15 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_16 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_17 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_18 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[98].w;
    temp_19 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_20 = floor(temp_9 * 2.0);
    temp_21 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[98].w + _sysEmitterStaticUniformBlock.data[99].w);
    temp_22 = floor(temp_12 * 2.0);
    temp_23 = floor(temp_13 * 2.0);
    temp_24 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_25 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_26 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_27 = fma(temp_18, (0.0 - _sysEmitterStaticUniformBlock.data[98].z + _sysEmitterStaticUniformBlock.data[99].z) * temp_21, _sysEmitterStaticUniformBlock.data[98].z);
    temp_28 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_29 = fma(temp_9 + temp_12, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x;
    temp_30 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_31 = fma(temp_26, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y);
    temp_32 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_33 = fma(temp_26, 0.0 - temp_30, temp_26);
    temp_34 = fma(temp_29, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_35 = temp_32;
    temp_36 = temp_29;
    temp_37 = temp_31;
    temp_38 = temp_27;
    if (!temp_28)
    {
        temp_35 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    temp_39 = fma(fma(temp_12 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_40 = fma(fma(temp_9 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    if (!temp_28)
    {
        temp_36 = 1.0 / temp_35;
    }
    temp_41 = temp_11 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_42 = sysInitRotateAttr.x;
    temp_43 = sysInitRotateAttr.y;
    temp_44 = sysInitRotateAttr.z;
    temp_45 = temp_11 >= _sysEmitterStaticUniformBlock.data[99].w ? 1.0 : 0.0;
    temp_46 = ((temp_22 > 0.0 ? 1.0 : 0.0) + 0.0 - (temp_22 < 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - (temp_14 >= 0 ? 0 : 1)));
    temp_47 = fma(temp_30, 0.0 - temp_41, temp_30);
    temp_48 = temp_46;
    if (temp_28)
    {
        temp_37 = temp_5;
    }
    temp_49 = ((temp_23 > 0.0 ? 1.0 : 0.0) + 0.0 - (temp_23 < 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - (temp_16 >= 0 ? 0 : 1)));
    temp_50 = fma(temp_41, 0.0 - temp_45, temp_41);
    temp_51 = temp_37;
    if (!temp_28)
    {
        temp_51 = fma(exp2(temp_32), 0.0 - temp_36, temp_36);
    }
    temp_52 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_53 = ((temp_20 > 0.0 ? 1.0 : 0.0) + 0.0 - (temp_20 < 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_17 > 0 ? -1 : 0) + 0 - (temp_17 >= 0 ? 0 : 1)));
    temp_54 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_55 = temp_39 * temp_49;
    temp_56 = temp_55;
    temp_57 = temp_54;
    if (temp_52)
    {
        temp_38 = temp_54 * temp_54;
    }
    temp_58 = temp_38;
    if (temp_52)
    {
        temp_58 = temp_38 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_59 = temp_58;
    if (temp_52)
    {
        temp_56 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_60 = temp_56;
    if (temp_52)
    {
        temp_48 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_61 = temp_48;
    if (temp_52)
    {
        temp_59 = temp_58 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_62 = temp_59;
    if (!temp_52)
    {
        temp_63 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_64 = (temp_54 + 0.0 - fma(exp2(temp_54 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), temp_63, 0.0 - temp_63)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_60 = temp_64 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_61 = temp_64 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_62 = temp_64 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_52)
    {
        temp_65 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_57 = fma(exp2(temp_54 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_65, temp_65);
    }
    temp_66 = fma(fma(temp_40 * temp_53, -2.0, temp_40), temp_51, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_53 * temp_44, -2.0, temp_44)));
    temp_67 = fma(fma(temp_34 * temp_46, -2.0, temp_34), temp_51, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_46 * temp_42, -2.0, temp_42)));
    temp_68 = fma(fma(temp_55, -2.0, temp_39), temp_51, fma(temp_12 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_49 * temp_43, -2.0, temp_43)));
    temp_69 = sysScaleAttr.w;
    temp_70 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_45, _sysEmitterStaticUniformBlock.data[99].x, fma(temp_50, fma(temp_18, (0.0 - _sysEmitterStaticUniformBlock.data[98].x + _sysEmitterStaticUniformBlock.data[99].x) * temp_21, _sysEmitterStaticUniformBlock.data[98].x), fma(fma(temp_25, (_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_19, _sysEmitterStaticUniformBlock.data[97].x), temp_47, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_15, _sysEmitterStaticUniformBlock.data[96].x), temp_33, fma(temp_26, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_71 = fma(temp_45, _sysEmitterStaticUniformBlock.data[99].y, fma(temp_50, fma(temp_18, (0.0 - _sysEmitterStaticUniformBlock.data[98].y + _sysEmitterStaticUniformBlock.data[99].y) * temp_21, _sysEmitterStaticUniformBlock.data[98].y), fma(fma(temp_25, (_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_19, _sysEmitterStaticUniformBlock.data[97].y), temp_47, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_15, _sysEmitterStaticUniformBlock.data[96].y), temp_33, temp_31)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_72 = fma(temp_45, _sysEmitterStaticUniformBlock.data[99].z, fma(temp_50, temp_27, fma(fma(temp_25, (_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_19, _sysEmitterStaticUniformBlock.data[97].z), temp_47, fma(fma(temp_24, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_15, _sysEmitterStaticUniformBlock.data[96].z), temp_33, fma(temp_26, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_73 = cos(temp_68) * cos(temp_67);
    temp_74 = sin(temp_67) * cos(temp_68);
    temp_75 = sin(temp_67) * sin(temp_68);
    temp_76 = cos(temp_67) * sin(temp_68);
    temp_77 = fma(fma(temp_57, sysLocalVecAttr.x, temp_60), temp_69, sysLocalPosAttr.x);
    temp_78 = fma(cos(temp_66) * sin(temp_68), temp_72, fma(temp_70, cos(temp_66) * cos(temp_68), temp_71 * 0.0 - sin(temp_66)));
    temp_79 = fma(fma(temp_57, sysLocalVecAttr.y, temp_61), temp_69, sysLocalPosAttr.y);
    temp_80 = fma(fma(sin(temp_66), temp_76, 0.0 - temp_74), temp_72, fma(temp_70, fma(sin(temp_66), temp_73, temp_75), temp_71 * cos(temp_66) * cos(temp_67)));
    temp_81 = fma(fma(temp_57, sysLocalVecAttr.z, temp_62), temp_69, sysLocalPosAttr.z);
    temp_82 = fma(fma(sin(temp_66), temp_75, temp_73), temp_72, fma(temp_70, fma(sin(temp_66), temp_74, 0.0 - temp_76), temp_71 * cos(temp_66) * sin(temp_67)));
    temp_83 = fma(temp_81, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_79, _sysEmitterDynamicUniformBlock.data[4].y, temp_77 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w + fma(temp_82, _sysViewUniformBlock.data[12].z, fma(temp_80, _sysViewUniformBlock.data[12].y, temp_78 * _sysViewUniformBlock.data[12].x)) + _sysViewUniformBlock.data[12].w;
    temp_84 = fma(temp_81, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_79, _sysEmitterDynamicUniformBlock.data[5].y, temp_77 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w + fma(temp_82, _sysViewUniformBlock.data[13].z, fma(temp_80, _sysViewUniformBlock.data[13].y, temp_78 * _sysViewUniformBlock.data[13].x)) + _sysViewUniformBlock.data[13].w;
    temp_85 = fma(temp_81, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_79, _sysEmitterDynamicUniformBlock.data[6].y, temp_77 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w + fma(temp_82, _sysViewUniformBlock.data[14].z, fma(temp_80, _sysViewUniformBlock.data[14].y, temp_78 * _sysViewUniformBlock.data[14].x)) + _sysViewUniformBlock.data[14].w;
    temp_86 = fma(temp_85, _sysViewUniformBlock.data[0].z, fma(temp_84, _sysViewUniformBlock.data[0].y, temp_83 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_87 = fma(temp_85, _sysViewUniformBlock.data[1].z, fma(temp_84, _sysViewUniformBlock.data[1].y, temp_83 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_88 = fma(temp_85, _sysViewUniformBlock.data[9].z, fma(temp_84, _sysViewUniformBlock.data[9].y, temp_83 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_89 = fma(temp_85, _sysViewUniformBlock.data[3].z, fma(temp_84, _sysViewUniformBlock.data[3].y, temp_83 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_90 = fma(temp_85, _sysViewUniformBlock.data[2].z, fma(temp_84, _sysViewUniformBlock.data[2].y, temp_83 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_91 = 0.0 * temp_88;
    temp_92 = fma(temp_85, _sysViewUniformBlock.data[8].z, fma(temp_84, _sysViewUniformBlock.data[8].y, temp_83 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_93 = fma(temp_85, _sysViewUniformBlock.data[11].z, fma(temp_84, _sysViewUniformBlock.data[11].y, temp_83 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_94 = fma(0.0, temp_92, temp_91);
    temp_95 = fma(temp_89, _sysViewUniformBlock.data[6].w, fma(temp_90, _sysViewUniformBlock.data[6].z, fma(temp_87, _sysViewUniformBlock.data[6].y, temp_86 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_89, _sysViewUniformBlock.data[7].w, fma(temp_90, _sysViewUniformBlock.data[7].z, fma(temp_87, _sysViewUniformBlock.data[7].y, temp_86 * _sysViewUniformBlock.data[7].x)))) * temp_93;
    gl_Position.x = temp_92;
    gl_Position.y = temp_88;
    gl_Position.z = temp_95;
    gl_Position.w = temp_93;
    out_attr3.x = fma(temp_93, 0.5, fma(0.0, temp_95, fma(temp_92, 0.5, temp_91)));
    out_attr3.y = fma(temp_93, 0.5, fma(0.0, temp_95, fma(0.0, temp_92, temp_88 * -0.5)));
    out_attr3.z = fma(0.0, temp_93, temp_95 + temp_94);
    out_attr3.w = temp_93 + fma(0.0, temp_95, temp_94);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_96 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_97 = temp_96 + 0.0 - floor(temp_96);
    }
    else
    {
        temp_97 = temp_5 * (1.0 / temp_6);
    }
    temp_98 = temp_97 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_99 = temp_97 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_100 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_101 = temp_97 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_102 = fma(temp_99, 0.0 - temp_101, temp_99);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_103 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_104 = temp_103 + 0.0 - floor(temp_103);
    }
    else
    {
        temp_104 = temp_5 * (1.0 / temp_6);
    }
    temp_105 = int(trunc(_sysEmitterStaticUniformBlock.data[53].z));
    temp_106 = floatBitsToInt(1.0 / float(uint(abs(temp_105)))) + -2;
    temp_107 = uint(max(trunc(intBitsToFloat(temp_106) * float(0u)), 0.0));
    temp_108 = (abs(temp_105) & 0xFFFF) * (int(temp_107 >> 16)) & 0xFFFF | int(temp_107) << 16;
    temp_109 = floatBitsToInt(1.0 / float(uint(temp_105))) + -2;
    temp_110 = uint(max(trunc(float(0u) * intBitsToFloat(temp_109)), 0.0));
    temp_111 = int(temp_107) + int(uint(max(trunc(intBitsToFloat(temp_106) * float(uint(0 - ((int(uint(abs(temp_105)) >> 16)) * (int(uint(temp_108) >> 16)) << 16) + (abs(temp_105) & 0xFFFF) * (int(temp_107) & 0xFFFF) + (temp_108 << 16)))), 0.0)));
    temp_112 = (temp_105 & 0xFFFF) * (int(temp_110 >> 16)) & 0xFFFF | int(temp_110) << 16;
    temp_113 = (abs(temp_105) & 0xFFFF) * (int(uint(temp_111) >> 16)) & 0xFFFF | temp_111 << 16;
    temp_114 = temp_104 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_115 = 0;
    if ((1 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].y)) != 1)
    {
        temp_115 = 1;
    }
    temp_116 = int(temp_110) + int(uint(max(trunc(intBitsToFloat(temp_109) * float(uint(0 - ((int(uint(temp_105) >> 16)) * (int(uint(temp_112) >> 16)) << 16) + (temp_105 & 0xFFFF) * (int(temp_110) & 0xFFFF) + (temp_112 << 16)))), 0.0)));
    temp_117 = sysTexCoordAttr.x;
    temp_118 = sysTexCoordAttr.y;
    temp_119 = (temp_105 & 0xFFFF) * (int(uint(temp_116) >> 16)) & 0xFFFF | temp_116 << 16;
    temp_120 = temp_115 == 1;
    temp_121 = temp_104 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_122 = temp_9;
    temp_123 = temp_12;
    temp_124 = temp_9;
    temp_125 = temp_12;
    temp_126 = temp_117;
    temp_127 = temp_118;
    if (temp_120)
    {
        temp_122 = temp_12;
    }
    temp_128 = temp_122;
    temp_129 = temp_122;
    if (temp_120)
    {
        temp_123 = temp_13;
    }
    temp_130 = temp_123;
    temp_131 = temp_123;
    if (temp_120)
    {
        temp_124 = temp_12;
    }
    temp_132 = temp_124;
    temp_133 = temp_124;
    if (temp_120)
    {
        temp_125 = temp_13;
    }
    temp_134 = temp_125;
    if (!temp_120)
    {
        temp_135 = temp_115 == 2;
        if (temp_135)
        {
            temp_128 = temp_13;
        }
        temp_129 = temp_128;
        if (temp_135)
        {
            temp_130 = temp_9;
        }
        temp_131 = temp_130;
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
    temp_136 = 0 - temp_116 + ((uint(0 - ((int(uint(temp_105) >> 16)) * (int(uint(temp_119) >> 16)) << 16) + (temp_105 & 0xFFFF) * (temp_116 & 0xFFFF) + (temp_119 << 16)) >= uint(temp_105) ? -1 : 0));
    temp_137 = temp_117;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_137 = 0.0 - temp_117 + 1.0;
    }
    temp_138 = 0 - int(uint(temp_105) >> 31);
    temp_139 = (temp_105 & 0xFFFF) * (int(uint(temp_136) >> 16)) & 0xFFFF | temp_136 << 16;
    temp_140 = 1.0 / _sysEmitterStaticUniformBlock.data[53].z * _sysEmitterStaticUniformBlock.data[53].x;
    temp_141 = temp_118;
    if (!(((!((0x200000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(2.938736E-39)) || !(temp_13 > 0.5) ? -1 : 0)) != 0))
    {
        temp_126 = 0.0 - temp_117 + 1.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_141 = 0.0 - temp_118 + 1.0;
    }
    if (!(((!((0x400000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(5.877472E-39)) || !(sysRandomAttr.w > 0.5) ? -1 : 0)) != 0))
    {
        temp_127 = 0.0 - temp_118 + 1.0;
    }
    temp_142 = 1.0 / _sysEmitterStaticUniformBlock.data[53].w * _sysEmitterStaticUniformBlock.data[53].y;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr0.x = fma(temp_101, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_98, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_100, _sysEmitterStaticUniformBlock.data[60].x), temp_102, fma(temp_99, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_101, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_98, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_100, _sysEmitterStaticUniformBlock.data[60].y), temp_102, fma(temp_99, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_101, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_98, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_100, _sysEmitterStaticUniformBlock.data[60].z), temp_102, fma(temp_99, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_114, _sysEmitterStaticUniformBlock.data[69].x, fma(fma((_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), temp_104 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, _sysEmitterStaticUniformBlock.data[68].x), fma(temp_114, 0.0 - temp_121, temp_121), fma(temp_121, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))) * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr2.x = temp_137 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = temp_141 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr2.z = fma(fma(temp_5, _sysEmitterStaticUniformBlock.data[50].z, fma(temp_133, _sysEmitterStaticUniformBlock.data[51].z, _sysEmitterStaticUniformBlock.data[51].z + _sysEmitterStaticUniformBlock.data[51].x)), fma(temp_140, temp_126, -0.5), fma(temp_140, float(temp_105 < 0 || !(temp_105 == 0) ? ((int(uint(temp_105) >> 16)) * (int(uint(temp_139) >> 16)) << 16) + (temp_105 & 0xFFFF) * (temp_136 & 0xFFFF) + (temp_139 << 16) : -1), fma(temp_5, 0.0 - _sysEmitterStaticUniformBlock.data[49].x, 0.0 - fma(temp_129 * _sysEmitterStaticUniformBlock.data[50].x, -2.0, _sysEmitterStaticUniformBlock.data[50].x + _sysEmitterStaticUniformBlock.data[49].z)))) + 0.5;
    out_attr2.w = fma(fma(temp_142, temp_127, -0.5), fma(temp_5, _sysEmitterStaticUniformBlock.data[50].w, fma(temp_134, _sysEmitterStaticUniformBlock.data[51].w, _sysEmitterStaticUniformBlock.data[51].w + _sysEmitterStaticUniformBlock.data[51].y)), 0.0 - fma(temp_142, 0.0 - float(temp_105 < 0 || !(temp_105 == 0) ? 0 - temp_138 + (temp_111 + 0 - (uint(0 - ((int(uint(abs(temp_105)) >> 16)) * (int(uint(temp_113) >> 16)) << 16) + (abs(temp_105) & 0xFFFF) * (temp_111 & 0xFFFF) + (temp_113 << 16)) >= uint(abs(temp_105)) ? -1 : 0) ^ temp_138) : -1), fma(temp_5, _sysEmitterStaticUniformBlock.data[49].y, fma(temp_131 * _sysEmitterStaticUniformBlock.data[50].y, -2.0, _sysEmitterStaticUniformBlock.data[50].y + _sysEmitterStaticUniformBlock.data[49].w)))) + 0.5;
    break;
} while (false);
}
