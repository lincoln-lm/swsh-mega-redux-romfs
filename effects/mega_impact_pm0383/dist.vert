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
    precise float temp_6;
    bool temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    bool temp_13;
    bool temp_14;
    bool temp_15;
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
    bool temp_46;
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
    temp_9 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_11 = sysRandomAttr.x;
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_13 = sqrt(temp_9) > 0.0;
    temp_14 = sqrt(temp_10) > 0.0;
    temp_15 = sqrt(temp_12) > 0.0;
    temp_16 = intBitsToFloat(undef);
    if (temp_13)
    {
        temp_16 = inversesqrt(temp_9);
    }
    temp_17 = temp_16;
    if (!temp_13)
    {
        temp_17 = 0.0;
    }
    temp_18 = intBitsToFloat(undef);
    temp_19 = temp_17;
    if (temp_14)
    {
        temp_18 = inversesqrt(temp_10);
    }
    temp_20 = intBitsToFloat(undef);
    temp_21 = temp_18;
    if (!temp_13)
    {
        temp_20 = 0.0;
    }
    temp_22 = intBitsToFloat(undef);
    temp_23 = temp_20;
    if (temp_15)
    {
        temp_22 = inversesqrt(temp_12);
    }
    temp_24 = intBitsToFloat(undef);
    temp_25 = temp_22;
    if (!temp_13)
    {
        temp_24 = 0.0;
    }
    temp_26 = temp_24;
    if (!temp_14)
    {
        temp_21 = 0.0;
    }
    temp_27 = intBitsToFloat(undef);
    temp_28 = temp_21;
    if (!temp_14)
    {
        temp_27 = 0.0;
    }
    temp_29 = intBitsToFloat(undef);
    temp_30 = temp_27;
    if (!temp_14)
    {
        temp_29 = 0.0;
    }
    temp_31 = temp_29;
    if (!temp_15)
    {
        temp_25 = 0.0;
    }
    temp_32 = intBitsToFloat(undef);
    temp_33 = temp_25;
    if (!temp_15)
    {
        temp_32 = 0.0;
    }
    temp_34 = temp_32;
    if (temp_13)
    {
        temp_26 = temp_17 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    if (temp_13)
    {
        temp_23 = temp_17 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    if (temp_14)
    {
        temp_31 = temp_21 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    if (temp_14)
    {
        temp_30 = temp_21 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_35 = intBitsToFloat(undef);
    if (temp_15)
    {
        temp_35 = temp_25 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_36 = temp_35;
    if (temp_15)
    {
        temp_34 = temp_25 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    if (temp_13)
    {
        temp_19 = temp_17 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    if (temp_14)
    {
        temp_28 = temp_21 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    if (temp_15)
    {
        temp_33 = temp_25 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    if (!temp_15)
    {
        temp_36 = 0.0;
    }
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_37 = fma(temp_11 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_38 = temp_37 + 0.0 - floor(temp_37);
    }
    else
    {
        temp_38 = temp_5 * (1.0 / temp_6);
    }
    temp_39 = sysNormalAttr.x;
    temp_40 = sysNormalAttr.y;
    temp_41 = sysNormalAttr.z;
    temp_42 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_43 = temp_38 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_44 = temp_38 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_45 = temp_38 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_46 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_47 = sysScaleAttr.w;
    temp_48 = fma(temp_44, 0.0 - temp_43, temp_43);
    temp_49 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_50 = fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_42, _sysEmitterStaticUniformBlock.data[96].z), temp_48, fma(temp_43, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z));
    temp_51 = fma(temp_44, _sysEmitterStaticUniformBlock.data[97].y, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_42, _sysEmitterStaticUniformBlock.data[96].y), temp_48, fma(temp_43, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y)));
    temp_52 = temp_48;
    temp_53 = temp_50;
    temp_54 = temp_51;
    temp_55 = temp_49;
    if (temp_46)
    {
        temp_52 = temp_49 * temp_49;
    }
    temp_56 = intBitsToFloat(undef);
    temp_57 = temp_52;
    if (temp_46)
    {
        temp_56 = temp_52 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    if (temp_46)
    {
        temp_53 = temp_56 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_58 = temp_53;
    if (temp_46)
    {
        temp_57 = temp_56 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_59 = temp_57;
    if (temp_46)
    {
        temp_54 = temp_56 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_60 = temp_54;
    if (!temp_46)
    {
        temp_61 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_62 = (temp_49 + 0.0 - fma(temp_61, exp2(temp_49 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_61)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_60 = temp_62 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_58 = temp_62 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_59 = temp_62 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    if (!temp_46)
    {
        temp_63 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_55 = fma(exp2(temp_49 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_63, temp_63);
    }
    temp_64 = fma(fma(temp_55, sysLocalVecAttr.x, temp_60), temp_47, sysLocalPosAttr.x);
    temp_65 = (clamp(min(0.0, temp_11) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_44, _sysEmitterStaticUniformBlock.data[97].x, fma(fma(temp_45, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_42, _sysEmitterStaticUniformBlock.data[96].x), temp_48, fma(temp_43, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_66 = fma(fma(temp_55, sysLocalVecAttr.y, temp_58), temp_47, sysLocalPosAttr.y);
    temp_67 = fma(fma(temp_55, sysLocalVecAttr.z, temp_59), temp_47, sysLocalPosAttr.z);
    temp_68 = temp_51 * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_69 = fma(temp_44, _sysEmitterStaticUniformBlock.data[97].z, temp_50) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_70 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[4].y, temp_64 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_71 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[5].y, temp_64 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_72 = temp_70 + fma(temp_69, temp_36, fma(temp_68, temp_31, temp_65 * temp_26));
    temp_73 = fma(0.0, temp_70, fma(temp_36, temp_41, fma(temp_31, temp_40, temp_26 * temp_39)));
    temp_74 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[6].y, temp_64 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_75 = temp_71 + fma(temp_69, temp_34, fma(temp_68, temp_30, temp_65 * temp_23));
    temp_76 = fma(0.0, temp_71, fma(temp_34, temp_41, fma(temp_30, temp_40, temp_23 * temp_39)));
    temp_77 = temp_74 + fma(temp_69, temp_33, fma(temp_68, temp_28, temp_65 * temp_19));
    temp_78 = fma(0.0, temp_74, fma(temp_33, temp_41, fma(temp_28, temp_40, temp_19 * temp_39)));
    out_attr5.x = temp_73;
    out_attr5.y = temp_76;
    out_attr5.z = temp_78;
    temp_79 = fma(temp_77, _sysViewUniformBlock.data[0].z, fma(temp_75, _sysViewUniformBlock.data[0].y, temp_72 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_80 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_78, _sysViewUniformBlock.data[0].z, fma(temp_76, _sysViewUniformBlock.data[0].y, temp_73 * _sysViewUniformBlock.data[0].x)));
    temp_81 = fma(temp_77, _sysViewUniformBlock.data[1].z, fma(temp_75, _sysViewUniformBlock.data[1].y, temp_72 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_82 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_78, _sysViewUniformBlock.data[1].z, fma(temp_76, _sysViewUniformBlock.data[1].y, temp_73 * _sysViewUniformBlock.data[1].x)));
    temp_83 = temp_5 * (1.0 / temp_6);
    temp_84 = fma(temp_77, _sysViewUniformBlock.data[2].z, fma(temp_75, _sysViewUniformBlock.data[2].y, temp_72 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_85 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_78, _sysViewUniformBlock.data[2].z, fma(temp_76, _sysViewUniformBlock.data[2].y, temp_73 * _sysViewUniformBlock.data[2].x)));
    temp_86 = inversesqrt(fma(temp_84, temp_84, fma(temp_81, temp_81, temp_79 * temp_79)));
    temp_87 = inversesqrt(fma(temp_85, temp_85, fma(temp_82, temp_82, temp_80 * temp_80)));
    temp_88 = temp_79 * temp_86;
    temp_89 = temp_81 * temp_86;
    temp_90 = temp_80 * temp_87;
    temp_91 = temp_82 * temp_87;
    temp_92 = temp_84 * temp_86;
    temp_93 = clamp(max(temp_85 * temp_87, 0.2) + -0.0, 0.0, 1.0);
    temp_94 = fma(temp_92, temp_93, fma(temp_89, temp_91, temp_88 * temp_90));
    temp_95 = temp_83 >= _sysEmitterStaticUniformBlock.data[104].w ? 1.0 : 0.0;
    temp_96 = fma(temp_90 * temp_94, -2.0, temp_88);
    temp_97 = temp_83 >= _sysEmitterStaticUniformBlock.data[105].w ? 1.0 : 0.0;
    temp_98 = fma(temp_91 * temp_94, -2.0, temp_89);
    temp_99 = temp_83 >= _sysEmitterStaticUniformBlock.data[106].w ? 1.0 : 0.0;
    temp_100 = temp_83 >= _sysEmitterStaticUniformBlock.data[107].w ? 1.0 : 0.0;
    temp_101 = temp_83 >= _sysEmitterStaticUniformBlock.data[108].w ? 1.0 : 0.0;
    temp_102 = temp_83 >= _sysEmitterStaticUniformBlock.data[109].w ? 1.0 : 0.0;
    temp_103 = 1.0 / (sqrt(fma(fma(temp_93 * temp_94, -2.0, temp_92) + 1.0, fma(temp_93 * temp_94, -2.0, temp_92) + 1.0, fma(0.0 + temp_98, 0.0 + temp_98, (0.0 + temp_96) * (0.0 + temp_96)))) * 2.0);
    temp_104 = temp_83 >= _sysEmitterStaticUniformBlock.data[110].w ? 1.0 : 0.0;
    temp_105 = temp_83 >= _sysEmitterStaticUniformBlock.data[111].w ? 1.0 : 0.0;
    temp_106 = fma(temp_96, temp_103, 0.5);
    temp_107 = fma(temp_98, 0.0 - temp_103, 0.5);
    temp_108 = temp_106;
    temp_109 = temp_107;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_11 > 0.5) ? -1 : 0)) != 0))
    {
        temp_108 = 0.0 - temp_106 + 1.0;
    }
    temp_110 = fma(temp_77, _sysViewUniformBlock.data[9].z, fma(temp_75, _sysViewUniformBlock.data[9].y, temp_72 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_109 = 0.0 - temp_107 + 1.0;
    }
    temp_111 = fma(temp_77, _sysViewUniformBlock.data[8].z, fma(temp_75, _sysViewUniformBlock.data[8].y, temp_72 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_112 = 0.0 * temp_110;
    temp_113 = fma(temp_77, _sysViewUniformBlock.data[10].z, fma(temp_75, _sysViewUniformBlock.data[10].y, temp_72 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_114 = fma(0.0, temp_111, temp_112);
    temp_115 = fma(temp_77, _sysViewUniformBlock.data[11].z, fma(temp_75, _sysViewUniformBlock.data[11].y, temp_72 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_111;
    gl_Position.y = temp_110;
    gl_Position.z = temp_113;
    gl_Position.w = temp_115;
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr6.x = temp_72 + 0.0 - _sysViewUniformBlock.data[17].x;
    out_attr6.y = temp_75 + 0.0 - _sysViewUniformBlock.data[17].y;
    out_attr6.z = temp_77 + 0.0 - _sysViewUniformBlock.data[17].z;
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr3.y = fma(temp_105, _sysEmitterStaticUniformBlock.data[111].x, fma(fma((_sysEmitterStaticUniformBlock.data[111].x + 0.0 - _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[110].w + _sysEmitterStaticUniformBlock.data[111].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[110].w, _sysEmitterStaticUniformBlock.data[110].x), fma(temp_104, 0.0 - temp_105, temp_104), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[109].x + _sysEmitterStaticUniformBlock.data[110].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[110].w + 0.0 - _sysEmitterStaticUniformBlock.data[109].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[109].w, _sysEmitterStaticUniformBlock.data[109].x), fma(temp_102, 0.0 - temp_104, temp_102), fma(fma((_sysEmitterStaticUniformBlock.data[109].x + 0.0 - _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[108].w + _sysEmitterStaticUniformBlock.data[109].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[108].w, _sysEmitterStaticUniformBlock.data[108].x), fma(temp_101, 0.0 - temp_102, temp_101), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[107].x + _sysEmitterStaticUniformBlock.data[108].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[108].w + 0.0 - _sysEmitterStaticUniformBlock.data[107].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[107].w, _sysEmitterStaticUniformBlock.data[107].x), fma(temp_100, 0.0 - temp_101, temp_100), fma(fma((_sysEmitterStaticUniformBlock.data[107].x + 0.0 - _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[106].w + _sysEmitterStaticUniformBlock.data[107].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[106].w, _sysEmitterStaticUniformBlock.data[106].x), fma(temp_99, 0.0 - temp_100, temp_99), fma(fma((0.0 - _sysEmitterStaticUniformBlock.data[105].x + _sysEmitterStaticUniformBlock.data[106].x) * (1.0 / (_sysEmitterStaticUniformBlock.data[106].w + 0.0 - _sysEmitterStaticUniformBlock.data[105].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[105].w, _sysEmitterStaticUniformBlock.data[105].x), fma(temp_97, 0.0 - temp_99, temp_97), fma(fma((_sysEmitterStaticUniformBlock.data[105].x + 0.0 - _sysEmitterStaticUniformBlock.data[104].x) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[104].w + _sysEmitterStaticUniformBlock.data[105].w)), temp_83 + 0.0 - _sysEmitterStaticUniformBlock.data[104].w, _sysEmitterStaticUniformBlock.data[104].x), fma(temp_97, 0.0 - temp_95, temp_95), fma(temp_95, 0.0 - _sysEmitterStaticUniformBlock.data[104].x, _sysEmitterStaticUniformBlock.data[104].x)))))))));
    out_attr1.x = temp_108 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = temp_109 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr2.x = fma(temp_115, 0.5, fma(0.0, temp_113, fma(temp_111, 0.5, temp_112)));
    out_attr2.y = fma(temp_115, 0.5, fma(0.0, temp_113, fma(0.0, temp_111, temp_110 * -0.5)));
    out_attr2.z = fma(0.0, temp_115, temp_114 + temp_113);
    out_attr2.w = temp_115 + fma(0.0, temp_113, temp_114);
    break;
} while (false);
}
