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

layout (binding = 11, std140) uniform sysCustomShaderUniformBlock0
{
    precise vec4 data[4096];
} _sysCustomShaderUniformBlock0;


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
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    bool temp_17;
    precise float temp_18;
    bool temp_19;
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
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr2.x = 0.0;
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
        out_attr2.x = 0.0;
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
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_11 = sysLocalPosAttr.x;
    temp_12 = sysLocalPosAttr.y;
    temp_13 = sysLocalPosAttr.z;
    temp_14 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_15 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_16 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_17 = sqrt(temp_10) > 0.0;
    temp_18 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_19 = sqrt(temp_14) > 0.0;
    temp_20 = temp_10;
    temp_21 = temp_15;
    temp_22 = temp_14;
    temp_23 = temp_18;
    temp_24 = temp_16;
    if (temp_17)
    {
        temp_20 = inversesqrt(temp_10);
    }
    temp_25 = sqrt(temp_15) > 0.0;
    temp_26 = temp_11 * _sysEmitterDynamicUniformBlock.data[4].x;
    temp_27 = temp_26;
    temp_28 = temp_20;
    if (temp_25)
    {
        temp_21 = inversesqrt(temp_15);
    }
    temp_29 = fma(temp_12, _sysEmitterDynamicUniformBlock.data[4].y, temp_26);
    temp_30 = temp_29;
    temp_31 = temp_21;
    if (temp_19)
    {
        temp_27 = inversesqrt(temp_14);
    }
    temp_32 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_33 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y * _sysEmitterDynamicUniformBlock.data[3].z;
    temp_34 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_35 = sysNormalAttr.x;
    temp_36 = sysNormalAttr.y;
    temp_37 = sysNormalAttr.z;
    temp_38 = temp_33;
    temp_39 = temp_27;
    temp_40 = temp_34;
    if (temp_17)
    {
        temp_30 = temp_20 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_41 = temp_30;
    if (!temp_17)
    {
        temp_41 = 0.0;
    }
    temp_42 = temp_16 * temp_34;
    temp_43 = temp_18 * temp_33;
    if (temp_17)
    {
        temp_22 = temp_20 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_44 = temp_22;
    if (temp_17)
    {
        temp_23 = temp_20 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_45 = temp_23;
    if (temp_19)
    {
        temp_28 = temp_27 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_46 = temp_28;
    if (!temp_17)
    {
        temp_44 = 0.0;
    }
    if (!temp_19)
    {
        temp_46 = 0.0;
    }
    if (!temp_17)
    {
        temp_45 = 0.0;
    }
    if (temp_19)
    {
        temp_38 = temp_27 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_47 = temp_38;
    if (temp_25)
    {
        temp_24 = temp_21 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_48 = temp_24;
    if (!temp_19)
    {
        temp_47 = 0.0;
    }
    if (!temp_25)
    {
        temp_48 = 0.0;
    }
    if (temp_19)
    {
        temp_39 = temp_27 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_49 = temp_39;
    if (!temp_19)
    {
        temp_49 = 0.0;
    }
    temp_50 = fma(temp_13, _sysEmitterDynamicUniformBlock.data[4].z, temp_29) + _sysEmitterDynamicUniformBlock.data[4].w;
    if (temp_25)
    {
        temp_40 = temp_21 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_51 = temp_40;
    if (!temp_25)
    {
        temp_51 = 0.0;
    }
    if (temp_25)
    {
        temp_31 = temp_21 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_52 = temp_31;
    if (!temp_25)
    {
        temp_52 = 0.0;
    }
    temp_53 = fma(temp_13, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_12, _sysEmitterDynamicUniformBlock.data[5].y, temp_11 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_54 = temp_50 + fma(temp_32, temp_48, fma(temp_43, temp_46, temp_42 * temp_41));
    temp_55 = fma(temp_13, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_12, _sysEmitterDynamicUniformBlock.data[6].y, temp_11 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_56 = temp_53 + fma(temp_32, temp_51, fma(temp_43, temp_47, temp_42 * temp_44));
    temp_57 = temp_55 + fma(temp_32, temp_52, fma(temp_43, temp_49, temp_42 * temp_45));
    temp_58 = fma(0.0, temp_55, fma(temp_52, temp_37, fma(temp_49, temp_36, temp_45 * temp_35)));
    gl_Position.x = fma(temp_57, _sysViewUniformBlock.data[8].z, fma(temp_56, _sysViewUniformBlock.data[8].y, temp_54 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_57, _sysViewUniformBlock.data[9].z, fma(temp_56, _sysViewUniformBlock.data[9].y, temp_54 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_57, _sysViewUniformBlock.data[10].z, fma(temp_56, _sysViewUniformBlock.data[10].y, temp_54 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_57, _sysViewUniformBlock.data[11].z, fma(temp_56, _sysViewUniformBlock.data[11].y, temp_54 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    temp_59 = fma(0.0, temp_53, fma(temp_51, temp_37, fma(temp_47, temp_36, temp_44 * temp_35)));
    temp_60 = fma(0.0, temp_50, fma(temp_48, temp_37, fma(temp_46, temp_36, temp_41 * temp_35)));
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].x)
    {
        temp_61 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].y, _sysEmitterStaticUniformBlock.data[8].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].x);
        temp_62 = temp_61 + 0.0 - floor(temp_61);
    }
    else
    {
        temp_62 = temp_5 * (1.0 / temp_6);
    }
    temp_63 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_58, _sysViewUniformBlock.data[0].z, fma(temp_59, _sysViewUniformBlock.data[0].y, temp_60 * _sysViewUniformBlock.data[0].x)));
    temp_64 = fma(temp_57, _sysViewUniformBlock.data[0].z, fma(temp_56, _sysViewUniformBlock.data[0].y, temp_54 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_65 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_58, _sysViewUniformBlock.data[1].z, fma(temp_59, _sysViewUniformBlock.data[1].y, temp_60 * _sysViewUniformBlock.data[1].x)));
    temp_66 = fma(temp_57, _sysViewUniformBlock.data[1].z, fma(temp_56, _sysViewUniformBlock.data[1].y, temp_54 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_67 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_58, _sysViewUniformBlock.data[2].z, fma(temp_59, _sysViewUniformBlock.data[2].y, temp_60 * _sysViewUniformBlock.data[2].x)));
    temp_68 = fma(temp_57, _sysViewUniformBlock.data[2].z, fma(temp_56, _sysViewUniformBlock.data[2].y, temp_54 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_69 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[60].w + _sysEmitterStaticUniformBlock.data[61].w);
    temp_70 = inversesqrt(fma(temp_67, temp_67, fma(temp_65, temp_65, temp_63 * temp_63)));
    temp_71 = inversesqrt(fma(temp_68, temp_68, fma(temp_66, temp_66, temp_64 * temp_64)));
    temp_72 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].y;
    temp_73 = temp_65 * temp_70;
    temp_74 = temp_63 * temp_70;
    temp_75 = temp_64 * temp_71;
    temp_76 = temp_66 * temp_71;
    temp_77 = temp_68 * temp_71;
    temp_78 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].x;
    temp_79 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].z;
    temp_80 = clamp(max(temp_67 * temp_70, 0.2) + -0.0, 0.0, 1.0);
    temp_81 = fma(temp_58, _sysViewUniformBlock.data[2].x, fma(temp_60, _sysViewUniformBlock.data[0].x, temp_59 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[3].x;
    temp_82 = fma(temp_77, temp_80, fma(temp_73, temp_76, temp_74 * temp_75));
    temp_83 = fma(temp_58, _sysViewUniformBlock.data[2].y, fma(temp_60, _sysViewUniformBlock.data[0].y, temp_59 * _sysViewUniformBlock.data[1].y)) + _sysViewUniformBlock.data[3].y;
    temp_84 = fma(temp_74 * temp_82, -2.0, temp_75);
    temp_85 = fma(temp_73 * temp_82, -2.0, temp_76);
    temp_86 = temp_62 >= _sysEmitterStaticUniformBlock.data[61].w ? 1.0 : 0.0;
    temp_87 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].y, temp_72)));
    temp_88 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].y, 0.0 - temp_72)));
    temp_89 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].z, 0.0 - temp_79)));
    temp_90 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].x, 0.0 - temp_78)));
    temp_91 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].x, temp_78)));
    temp_92 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].z, temp_79)));
    temp_93 = temp_62 >= _sysEmitterStaticUniformBlock.data[60].w ? 1.0 : 0.0;
    temp_94 = temp_62 + 0.0 - _sysEmitterStaticUniformBlock.data[60].w;
    temp_95 = fma(temp_58, _sysViewUniformBlock.data[2].z, fma(temp_60, _sysViewUniformBlock.data[0].z, temp_59 * _sysViewUniformBlock.data[1].z)) + _sysViewUniformBlock.data[3].z;
    temp_96 = inversesqrt(fma(temp_95, temp_95, fma(temp_83, temp_83, temp_81 * temp_81)));
    temp_97 = inversesqrt(fma(temp_92, temp_92, fma(temp_87, temp_87, temp_91 * temp_91)));
    temp_98 = inversesqrt(fma(temp_89, temp_89, fma(temp_88, temp_88, temp_90 * temp_90)));
    temp_99 = fma(temp_86, 0.0 - temp_93, temp_93);
    temp_100 = 1.0 / (sqrt(fma(fma(temp_80 * temp_82, -2.0, temp_77) + 1.0, fma(temp_80 * temp_82, -2.0, temp_77) + 1.0, fma(0.0 + temp_85, 0.0 + temp_85, (0.0 + temp_84) * (0.0 + temp_84)))) * 2.0);
    temp_101 = temp_81 * temp_96;
    temp_102 = temp_83 * temp_96;
    temp_103 = temp_95 * temp_96;
    temp_104 = fma(temp_84, temp_100, 0.5);
    temp_105 = fma(temp_85, 0.0 - temp_100, 0.5);
    temp_106 = temp_104;
    temp_107 = temp_105;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_106 = 0.0 - temp_104 + 1.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_107 = 0.0 - temp_105 + 1.0;
    }
    out_attr3.x = 1.0;
    out_attr3.y = 1.0;
    out_attr3.z = 1.0;
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = fma(temp_86, _sysEmitterStaticUniformBlock.data[61].x, fma(fma(temp_94, (_sysEmitterStaticUniformBlock.data[61].x + 0.0 - _sysEmitterStaticUniformBlock.data[60].x) * temp_69, _sysEmitterStaticUniformBlock.data[60].x), temp_99, fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[60].x, _sysEmitterStaticUniformBlock.data[60].x))) * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = fma(temp_86, _sysEmitterStaticUniformBlock.data[61].y, fma(fma(temp_94, (_sysEmitterStaticUniformBlock.data[61].y + 0.0 - _sysEmitterStaticUniformBlock.data[60].y) * temp_69, _sysEmitterStaticUniformBlock.data[60].y), temp_99, fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[60].y, _sysEmitterStaticUniformBlock.data[60].y))) * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = fma(temp_86, _sysEmitterStaticUniformBlock.data[61].z, fma(fma(temp_94, (_sysEmitterStaticUniformBlock.data[61].z + 0.0 - _sysEmitterStaticUniformBlock.data[60].z) * temp_69, _sysEmitterStaticUniformBlock.data[60].z), temp_99, fma(temp_93, 0.0 - _sysEmitterStaticUniformBlock.data[60].z, _sysEmitterStaticUniformBlock.data[60].z))) * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    out_attr4.x = clamp(max(fma(temp_103, temp_89 * temp_98, fma(temp_102, temp_88 * temp_98, temp_101 * temp_90 * temp_98)), 0.3) + -0.0, 0.0, 1.0);
    out_attr4.y = clamp(fma(temp_103, temp_92 * temp_97, fma(temp_102, temp_87 * temp_97, temp_101 * temp_91 * temp_97)), 0.0, 1.0);
    out_attr1.x = temp_106 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = temp_107 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
