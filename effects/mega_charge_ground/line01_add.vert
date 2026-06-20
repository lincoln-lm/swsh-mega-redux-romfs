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
    precise float temp_11;
    bool temp_12;
    bool temp_13;
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
    bool temp_25;
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
    temp_8 = 0.0;
    if (temp_7)
    {
        out_attr3.x = 0.0;
    }
    temp_9 = intBitsToFloat(undef);
    if (temp_7)
    {
        temp_9 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_7)
    {
        temp_4 = floatBitsToInt(temp_9 * 5.0);
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
    temp_10 = intBitsToFloat(gl_VertexID);
    temp_11 = sysRandomAttr.x;
    temp_12 = (floatBitsToInt(temp_10) & 1) != 0;
    temp_13 = (floatBitsToInt(temp_10) & 2) != 0;
    temp_14 = intBitsToFloat(undef);
    if (temp_12)
    {
        temp_14 = 0.5;
    }
    temp_15 = intBitsToFloat(undef);
    temp_16 = temp_14;
    if (temp_13)
    {
        temp_15 = 0.5;
    }
    temp_17 = temp_15;
    if (!temp_12)
    {
        temp_16 = -0.5;
    }
    temp_18 = temp_16;
    if (!temp_13)
    {
        temp_17 = -0.5;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_19 = fma(temp_11 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_20 = temp_19 + 0.0 - floor(temp_19);
    }
    else
    {
        temp_20 = temp_5 * (1.0 / temp_6);
    }
    temp_21 = sysLocalVecAttr.x;
    temp_22 = sysLocalVecAttr.y;
    temp_23 = sysLocalVecAttr.z;
    temp_24 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_25 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_26 = temp_24;
    if (temp_25)
    {
        temp_8 = temp_24 * temp_24;
    }
    temp_27 = intBitsToFloat(undef);
    temp_28 = temp_8;
    if (temp_25)
    {
        temp_27 = temp_5 * temp_5;
    }
    temp_29 = temp_27;
    if (temp_25)
    {
        temp_28 = temp_8 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_25)
    {
        temp_29 = temp_27 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_30 = intBitsToFloat(undef);
    temp_31 = temp_29;
    if (temp_25)
    {
        temp_30 = temp_28 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_30;
    if (temp_25)
    {
        temp_32 = temp_28 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_32;
    if (temp_25)
    {
        temp_34 = temp_28 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_36 = temp_34;
    temp_37 = intBitsToFloat(undef);
    if (!temp_25)
    {
        temp_38 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_39 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_40 = (temp_24 + 0.0 - fma(exp2(temp_24 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), temp_39, 0.0 - temp_39)) * temp_38 * _sysEmitterStaticUniformBlock.data[11].w;
        temp_33 = temp_40 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_35 = temp_40 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_36 = temp_40 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_37 = temp_38;
    }
    temp_41 = temp_33;
    temp_42 = temp_35;
    temp_43 = temp_37;
    if (!temp_25)
    {
        temp_44 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_26 = fma(exp2(temp_24 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_44, temp_44);
    }
    temp_45 = fma(temp_26, temp_21, temp_33);
    temp_46 = fma(temp_26, temp_22, temp_35);
    if (temp_25)
    {
        temp_41 = temp_29 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_47 = temp_41;
    if (temp_25)
    {
        temp_42 = temp_29 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_48 = fma(temp_26, temp_23, temp_36);
    temp_49 = temp_42;
    if (temp_25)
    {
        temp_43 = temp_5;
    }
    temp_50 = temp_43;
    if (temp_25)
    {
        temp_31 = temp_29 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_51 = temp_31;
    if (!temp_25)
    {
        temp_52 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_53 = (temp_5 + 0.0 - fma(temp_52, exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_52)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_47 = temp_53 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_49 = temp_53 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_51 = temp_53 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_25)
    {
        temp_54 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_50 = fma(exp2(temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_54, temp_54);
    }
    temp_55 = fma(temp_50, temp_21, temp_47);
    temp_56 = fma(temp_50, temp_22, temp_49);
    temp_57 = fma(temp_50, temp_23, temp_51);
    if (temp_5 < 0.001)
    {
        temp_58 = inversesqrt(fma(temp_23, temp_23, fma(temp_22, temp_22, temp_21 * temp_21)));
        temp_55 = fma(temp_58 * temp_21, -0.001, temp_45);
        temp_56 = fma(temp_58 * temp_22, -0.001, temp_46);
        temp_57 = fma(temp_58 * temp_23, -0.001, temp_48);
    }
    temp_59 = temp_45 + 0.0 - temp_55;
    temp_60 = temp_46 + 0.0 - temp_56;
    temp_61 = temp_48 + 0.0 - temp_57;
    temp_62 = 0.0 + fma(temp_61, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_60, _sysEmitterDynamicUniformBlock.data[4].y, temp_59 * _sysEmitterDynamicUniformBlock.data[4].x));
    temp_63 = 0.0 + fma(temp_61, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_60, _sysEmitterDynamicUniformBlock.data[5].y, temp_59 * _sysEmitterDynamicUniformBlock.data[5].x));
    temp_64 = 0.0 + fma(temp_61, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_60, _sysEmitterDynamicUniformBlock.data[6].y, temp_59 * _sysEmitterDynamicUniformBlock.data[6].x));
    temp_65 = 1.0 / (_sysEmitterStaticUniformBlock.data[97].w + 0.0 - _sysEmitterStaticUniformBlock.data[96].w);
    temp_66 = temp_62;
    temp_67 = temp_63;
    temp_68 = temp_64;
    if (sqrt(fma(temp_64, temp_64, fma(temp_63, temp_63, temp_62 * temp_62))) < 0.001)
    {
        temp_66 = 0.0 + fma(temp_48, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_46, _sysEmitterDynamicUniformBlock.data[4].y, temp_45 * _sysEmitterDynamicUniformBlock.data[4].x));
        temp_67 = 0.0 + fma(temp_48, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_46, _sysEmitterDynamicUniformBlock.data[5].y, temp_45 * _sysEmitterDynamicUniformBlock.data[5].x));
        temp_68 = 0.0 + fma(temp_48, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_46, _sysEmitterDynamicUniformBlock.data[6].y, temp_45 * _sysEmitterDynamicUniformBlock.data[6].x));
    }
    temp_69 = temp_20 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_70 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_71 = temp_20 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_72 = inversesqrt(fma(temp_68, temp_68, fma(temp_67, temp_67, temp_66 * temp_66)));
    temp_73 = temp_20 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_74 = fma(temp_71, 0.0 - temp_69, temp_69);
    temp_75 = sysScaleAttr.w;
    temp_76 = temp_20 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_77 = temp_20 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_78 = temp_72 * temp_67;
    temp_79 = temp_72 * temp_68;
    temp_80 = fma(temp_71, 0.0 - temp_76, temp_71);
    temp_81 = temp_72 * temp_66;
    temp_82 = fma(temp_79, 0.0 - _sysViewUniformBlock.data[16].y, 0.0 - temp_78 * 0.0 - _sysViewUniformBlock.data[16].z);
    temp_83 = fma(temp_81, 0.0 - _sysViewUniformBlock.data[16].z, 0.0 - temp_79 * 0.0 - _sysViewUniformBlock.data[16].x);
    temp_84 = fma(temp_78, 0.0 - _sysViewUniformBlock.data[16].x, 0.0 - temp_81 * 0.0 - _sysViewUniformBlock.data[16].y);
    temp_85 = fma(temp_45, temp_75, sysLocalPosAttr.x);
    temp_86 = fma(temp_48, temp_75, sysLocalPosAttr.z);
    temp_87 = fma(temp_46, temp_75, sysLocalPosAttr.y);
    temp_88 = inversesqrt(fma(temp_84, temp_84, fma(temp_83, temp_83, temp_82 * temp_82)));
    temp_89 = fma(temp_76, _sysEmitterStaticUniformBlock.data[98].y, fma(fma(temp_77, (0.0 - _sysEmitterStaticUniformBlock.data[97].y + _sysEmitterStaticUniformBlock.data[98].y) * temp_70, _sysEmitterStaticUniformBlock.data[97].y), temp_80, fma(fma((_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_65, temp_73, _sysEmitterStaticUniformBlock.data[96].y), temp_74, fma(temp_69, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, temp_17);
    temp_90 = (clamp(min(0.0, temp_11) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_76, _sysEmitterStaticUniformBlock.data[98].x, fma(fma(temp_77, (0.0 - _sysEmitterStaticUniformBlock.data[97].x + _sysEmitterStaticUniformBlock.data[98].x) * temp_70, _sysEmitterStaticUniformBlock.data[97].x), temp_80, fma(fma((_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_65, temp_73, _sysEmitterStaticUniformBlock.data[96].x), temp_74, fma(temp_69, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x)))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, temp_16);
    temp_91 = 0.0 + fma(temp_90, temp_82 * temp_88, temp_81 * temp_89) + fma(temp_86, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_87, _sysEmitterDynamicUniformBlock.data[4].y, temp_85 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_92 = 0.0 + fma(temp_90, temp_83 * temp_88, temp_78 * temp_89) + fma(temp_86, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_87, _sysEmitterDynamicUniformBlock.data[5].y, temp_85 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_93 = 0.0 + fma(temp_90, temp_84 * temp_88, temp_79 * temp_89) + fma(temp_86, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_87, _sysEmitterDynamicUniformBlock.data[6].y, temp_85 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_94 = fma(temp_93, _sysViewUniformBlock.data[0].z, fma(temp_92, _sysViewUniformBlock.data[0].y, temp_91 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_95 = fma(temp_93, _sysViewUniformBlock.data[1].z, fma(temp_92, _sysViewUniformBlock.data[1].y, temp_91 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_96 = fma(temp_93, _sysViewUniformBlock.data[3].z, fma(temp_92, _sysViewUniformBlock.data[3].y, temp_91 * _sysViewUniformBlock.data[3].x)) + _sysViewUniformBlock.data[3].w;
    temp_97 = fma(temp_93, _sysViewUniformBlock.data[2].z, fma(temp_92, _sysViewUniformBlock.data[2].y, temp_91 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w + _sysEmitterStaticUniformBlock.data[13].z;
    temp_98 = fma(temp_93, _sysViewUniformBlock.data[11].z, fma(temp_92, _sysViewUniformBlock.data[11].y, temp_91 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = fma(temp_93, _sysViewUniformBlock.data[8].z, fma(temp_92, _sysViewUniformBlock.data[8].y, temp_91 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_93, _sysViewUniformBlock.data[9].z, fma(temp_92, _sysViewUniformBlock.data[9].y, temp_91 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_96, _sysViewUniformBlock.data[6].w, fma(temp_97, _sysViewUniformBlock.data[6].z, fma(temp_95, _sysViewUniformBlock.data[6].y, temp_94 * _sysViewUniformBlock.data[6].x))) * (1.0 / fma(temp_96, _sysViewUniformBlock.data[7].w, fma(temp_97, _sysViewUniformBlock.data[7].z, fma(temp_95, _sysViewUniformBlock.data[7].y, temp_94 * _sysViewUniformBlock.data[7].x)))) * temp_98;
    gl_Position.w = temp_98;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_99 = fma(temp_11 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_100 = temp_99 + 0.0 - floor(temp_99);
    }
    else
    {
        temp_100 = temp_5 * (1.0 / temp_6);
    }
    temp_101 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_102 = 1.0 / (_sysEmitterStaticUniformBlock.data[62].w + 0.0 - _sysEmitterStaticUniformBlock.data[61].w);
    temp_103 = temp_100 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_104 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_105 = temp_100 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_106 = temp_100 >= _sysEmitterStaticUniformBlock.data[62].w ? 1.0 : 0.0;
    temp_107 = fma(temp_105, 0.0 - temp_103, temp_103);
    temp_108 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[61].w;
    temp_109 = fma(temp_105, 0.0 - temp_106, temp_105);
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].y)
    {
        temp_110 = fma(temp_11 * _sysEmitterStaticUniformBlock.data[9].z, _sysEmitterStaticUniformBlock.data[8].y, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].y);
        temp_111 = temp_110 + 0.0 - floor(temp_110);
    }
    else
    {
        temp_111 = temp_5 * (1.0 / temp_6);
    }
    temp_112 = temp_111 >= _sysEmitterStaticUniformBlock.data[68].w ? 1.0 : 0.0;
    temp_113 = temp_111 >= _sysEmitterStaticUniformBlock.data[69].w ? 1.0 : 0.0;
    temp_114 = temp_111 >= _sysEmitterStaticUniformBlock.data[70].w ? 1.0 : 0.0;
    temp_115 = temp_111 >= _sysEmitterStaticUniformBlock.data[71].w ? 1.0 : 0.0;
    temp_116 = temp_17;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_116 = 0.0 - temp_17 + -0.0;
    }
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_18 = 0.0 - temp_16 + -0.0;
    }
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr2.x = (temp_18 + 0.5) * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = (temp_116 + -0.5) * 0.0 - _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.x = fma(temp_106, _sysEmitterStaticUniformBlock.data[62].x, fma(temp_109, fma(temp_108, (_sysEmitterStaticUniformBlock.data[62].x + 0.0 - _sysEmitterStaticUniformBlock.data[61].x) * temp_102, _sysEmitterStaticUniformBlock.data[61].x), fma(fma(temp_104, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_101, _sysEmitterStaticUniformBlock.data[60].x), temp_107, fma(temp_103, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x)))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_106, _sysEmitterStaticUniformBlock.data[62].y, fma(temp_109, fma(temp_108, (_sysEmitterStaticUniformBlock.data[62].y + 0.0 - _sysEmitterStaticUniformBlock.data[61].y) * temp_102, _sysEmitterStaticUniformBlock.data[61].y), fma(fma(temp_104, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_101, _sysEmitterStaticUniformBlock.data[60].y), temp_107, fma(temp_103, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y)))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_106, _sysEmitterStaticUniformBlock.data[62].z, fma(temp_109, fma(temp_108, (_sysEmitterStaticUniformBlock.data[62].z + 0.0 - _sysEmitterStaticUniformBlock.data[61].z) * temp_102, _sysEmitterStaticUniformBlock.data[61].z), fma(fma(temp_104, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_101, _sysEmitterStaticUniformBlock.data[60].z), temp_107, fma(temp_103, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z)))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = fma(temp_115, _sysEmitterStaticUniformBlock.data[71].x, fma(fma((_sysEmitterStaticUniformBlock.data[71].x + 0.0 - _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[70].w + _sysEmitterStaticUniformBlock.data[71].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[70].w, _sysEmitterStaticUniformBlock.data[70].x), fma(temp_114, 0.0 - temp_115, temp_114), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[69].x + _sysEmitterStaticUniformBlock.data[70].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[69].w + _sysEmitterStaticUniformBlock.data[70].w)), temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[69].w, _sysEmitterStaticUniformBlock.data[69].x), fma(temp_113, 0.0 - temp_114, temp_113), fma(fma(temp_111 + 0.0 - _sysEmitterStaticUniformBlock.data[68].w, (_sysEmitterStaticUniformBlock.data[69].x + 0.0 - _sysEmitterStaticUniformBlock.data[68].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[68].w + _sysEmitterStaticUniformBlock.data[69].w)), _sysEmitterStaticUniformBlock.data[68].x), fma(temp_112, 0.0 - temp_113, temp_112), fma(temp_112, 0.0 - _sysEmitterStaticUniformBlock.data[68].x, _sysEmitterStaticUniformBlock.data[68].x))))) * _sysEmitterDynamicUniformBlock.data[0].w;
    break;
} while (false);
}
