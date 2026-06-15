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
layout (location = 2) in vec4 sysVertexColor0Attr;
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;

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
    bool temp_6;
    precise float temp_7;
    precise float temp_8;
    int temp_9;
    int temp_10;
    int temp_11;
    precise float temp_12;
    precise float temp_13;
    bool temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    bool temp_22;
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
    bool temp_34;
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
    temp_6 = temp_5 >= float(int(trunc(sysLocalPosAttr.w)));
    if (temp_6)
    {
        out_attr2.x = 0.0;
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
    temp_9 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 1;
    temp_10 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 2;
    temp_11 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 4;
    temp_12 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_13 = fma(temp_5 + _sysEmitterStaticUniformBlock.data[15].z, 1.0 / _sysEmitterStaticUniformBlock.data[14].z, temp_8 * _sysEmitterStaticUniformBlock.data[15].x);
    temp_14 = sqrt(temp_12) > 0.0;
    temp_15 = sysLocalPosAttr.x;
    temp_16 = sysLocalPosAttr.y;
    temp_17 = sysLocalPosAttr.z;
    temp_18 = temp_13 + 0.0 - floor(temp_13);
    temp_19 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_20 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_21 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_22 = sqrt(temp_19) > 0.0;
    temp_23 = temp_15 * _sysEmitterDynamicUniformBlock.data[4].x;
    temp_24 = fma(temp_16, _sysEmitterDynamicUniformBlock.data[5].y, temp_15 * _sysEmitterDynamicUniformBlock.data[5].x);
    temp_25 = temp_19;
    temp_26 = temp_23;
    temp_27 = temp_21;
    temp_28 = temp_24;
    temp_29 = temp_12;
    temp_30 = temp_20;
    if (temp_22)
    {
        temp_25 = inversesqrt(temp_19);
    }
    temp_31 = fma(temp_16, _sysEmitterDynamicUniformBlock.data[4].y, temp_23);
    temp_32 = temp_25;
    temp_33 = temp_31;
    if (temp_14)
    {
        temp_26 = inversesqrt(temp_12);
    }
    temp_34 = sqrt(temp_21) > 0.0;
    temp_35 = fma(float(abs(0 - (temp_11 > 0 ? -1 : 0) + 0 - (temp_11 >= 0 ? 0 : 1))), abs(0.0 - fma(temp_18 >= 0.5 ? 1.0 : 0.0, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, _sysEmitterStaticUniformBlock.data[14].x) + 1.0) + -0.0, fma(float(abs(0 - (temp_10 > 0 ? -1 : 0) + 0 - (temp_10 >= 0 ? 0 : 1))), abs(fma(temp_18, 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0)) + -0.0, fma(fma(cos(temp_13 * 6.28318548), 0.5, 0.5), 0.0 - _sysEmitterStaticUniformBlock.data[14].x, 1.0) * float(abs(0 - (temp_9 > 0 ? -1 : 0) + 0 - (temp_9 >= 0 ? 0 : 1)))));
    temp_36 = sysNormalAttr.x;
    temp_37 = sysNormalAttr.y;
    temp_38 = sysNormalAttr.z;
    temp_39 = (clamp(min(0.0, temp_8) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x;
    temp_40 = temp_35;
    temp_41 = temp_39;
    if (temp_34)
    {
        temp_27 = inversesqrt(temp_21);
    }
    temp_42 = temp_35 * sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y;
    temp_43 = temp_42;
    temp_44 = temp_27;
    if (temp_22)
    {
        temp_40 = temp_25 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_45 = temp_40;
    if (temp_22)
    {
        temp_28 = temp_25 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_46 = temp_28;
    if (temp_22)
    {
        temp_29 = temp_25 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_47 = temp_29;
    if (temp_14)
    {
        temp_41 = temp_26 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_48 = temp_41;
    if (temp_14)
    {
        temp_32 = temp_26 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_49 = temp_32;
    if (temp_14)
    {
        temp_33 = temp_26 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_50 = temp_33;
    if (!temp_22)
    {
        temp_46 = 0.0;
    }
    if (!temp_22)
    {
        temp_47 = 0.0;
    }
    if (!temp_14)
    {
        temp_49 = 0.0;
    }
    temp_51 = temp_35 * temp_39 * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_52 = temp_42 * _sysEmitterDynamicUniformBlock.data[3].z * temp_20;
    if (!temp_22)
    {
        temp_45 = 0.0;
    }
    if (!temp_14)
    {
        temp_50 = 0.0;
    }
    temp_53 = temp_35 * sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    if (temp_34)
    {
        temp_43 = temp_27 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_54 = temp_43;
    if (!temp_34)
    {
        temp_54 = 0.0;
    }
    if (temp_34)
    {
        temp_30 = temp_27 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_55 = temp_30;
    if (!temp_34)
    {
        temp_55 = 0.0;
    }
    if (!temp_14)
    {
        temp_48 = 0.0;
    }
    temp_56 = fma(temp_17, _sysEmitterDynamicUniformBlock.data[4].z, temp_31) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_57 = fma(temp_17, _sysEmitterDynamicUniformBlock.data[5].z, temp_24) + _sysEmitterDynamicUniformBlock.data[5].w;
    if (temp_34)
    {
        temp_44 = temp_27 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_58 = temp_44;
    if (!temp_34)
    {
        temp_58 = 0.0;
    }
    temp_59 = fma(0.0, temp_56, fma(temp_54, temp_38, fma(temp_49, temp_37, temp_46 * temp_36)));
    temp_60 = temp_56 + fma(temp_53, temp_54, fma(temp_52, temp_49, temp_51 * temp_46));
    temp_61 = fma(0.0, temp_57, fma(temp_55, temp_38, fma(temp_50, temp_37, temp_47 * temp_36)));
    temp_62 = fma(temp_17, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_16, _sysEmitterDynamicUniformBlock.data[6].y, temp_15 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_63 = temp_57 + fma(temp_53, temp_55, fma(temp_52, temp_50, temp_51 * temp_47));
    temp_64 = fma(0.0, temp_62, fma(temp_58, temp_38, fma(temp_48, temp_37, temp_45 * temp_36)));
    temp_65 = temp_62 + fma(temp_53, temp_58, fma(temp_52, temp_48, temp_51 * temp_45));
    temp_66 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_64, _sysViewUniformBlock.data[0].z, fma(temp_61, _sysViewUniformBlock.data[0].y, temp_59 * _sysViewUniformBlock.data[0].x)));
    temp_67 = fma(temp_65, _sysViewUniformBlock.data[0].z, fma(temp_63, _sysViewUniformBlock.data[0].y, temp_60 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_68 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_64, _sysViewUniformBlock.data[1].z, fma(temp_61, _sysViewUniformBlock.data[1].y, temp_59 * _sysViewUniformBlock.data[1].x)));
    temp_69 = fma(temp_65, _sysViewUniformBlock.data[1].z, fma(temp_63, _sysViewUniformBlock.data[1].y, temp_60 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_70 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_64, _sysViewUniformBlock.data[2].z, fma(temp_61, _sysViewUniformBlock.data[2].y, temp_59 * _sysViewUniformBlock.data[2].x)));
    temp_71 = fma(temp_65, _sysViewUniformBlock.data[2].z, fma(temp_63, _sysViewUniformBlock.data[2].y, temp_60 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    temp_72 = inversesqrt(fma(temp_70, temp_70, fma(temp_68, temp_68, temp_66 * temp_66)));
    temp_73 = inversesqrt(fma(temp_71, temp_71, fma(temp_69, temp_69, temp_67 * temp_67)));
    temp_74 = temp_66 * temp_72;
    temp_75 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].y;
    temp_76 = temp_67 * temp_73;
    temp_77 = temp_69 * temp_73;
    temp_78 = temp_71 * temp_73;
    temp_79 = temp_68 * temp_72;
    temp_80 = clamp(max(temp_70 * temp_72, 0.2) + -0.0, 0.0, 1.0);
    temp_81 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].x;
    temp_82 = fma(temp_78, temp_80, fma(temp_79, temp_77, temp_74 * temp_76));
    temp_83 = _sysCustomShaderUniformBlock0.data[9].y * _sysViewUniformBlock.data[1].z;
    temp_84 = fma(temp_74 * temp_82, -2.0, temp_76);
    temp_85 = fma(temp_79 * temp_82, -2.0, temp_77);
    temp_86 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].x, 0.0 - temp_81)));
    temp_87 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].z, 0.0 - temp_83)));
    temp_88 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].x, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].x, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].x, temp_81)));
    temp_89 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].z, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].z, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].z, temp_83)));
    temp_90 = fma(_sysCustomShaderUniformBlock0.data[9].w, 0.0 - _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, 0.0 - _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, 0.0 - _sysViewUniformBlock.data[0].y, 0.0 - temp_75)));
    temp_91 = fma(temp_64, _sysViewUniformBlock.data[2].x, fma(temp_59, _sysViewUniformBlock.data[0].x, temp_61 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[3].x;
    temp_92 = fma(_sysCustomShaderUniformBlock0.data[9].w, _sysViewUniformBlock.data[3].y, fma(_sysCustomShaderUniformBlock0.data[9].z, _sysViewUniformBlock.data[2].y, fma(_sysCustomShaderUniformBlock0.data[9].x, _sysViewUniformBlock.data[0].y, temp_75)));
    temp_93 = fma(temp_64, _sysViewUniformBlock.data[2].y, fma(temp_59, _sysViewUniformBlock.data[0].y, temp_61 * _sysViewUniformBlock.data[1].y)) + _sysViewUniformBlock.data[3].y;
    temp_94 = fma(temp_64, _sysViewUniformBlock.data[2].z, fma(temp_59, _sysViewUniformBlock.data[0].z, temp_61 * _sysViewUniformBlock.data[1].z)) + _sysViewUniformBlock.data[3].z;
    temp_95 = inversesqrt(fma(temp_89, temp_89, fma(temp_92, temp_92, temp_88 * temp_88)));
    temp_96 = inversesqrt(fma(temp_87, temp_87, fma(temp_90, temp_90, temp_86 * temp_86)));
    temp_97 = inversesqrt(fma(temp_94, temp_94, fma(temp_93, temp_93, temp_91 * temp_91)));
    temp_98 = 1.0 / (sqrt(fma(fma(temp_80 * temp_82, -2.0, temp_78) + 1.0, fma(temp_80 * temp_82, -2.0, temp_78) + 1.0, fma(0.0 + temp_85, 0.0 + temp_85, (0.0 + temp_84) * (0.0 + temp_84)))) * 2.0);
    temp_99 = temp_91 * temp_97;
    out_attr3.x = sysVertexColor0Attr.x;
    temp_100 = temp_93 * temp_97;
    out_attr3.y = sysVertexColor0Attr.y;
    out_attr3.z = sysVertexColor0Attr.z;
    temp_101 = temp_94 * temp_97;
    temp_102 = fma(temp_84, temp_98, 0.5);
    temp_103 = fma(temp_85, 0.0 - temp_98, 0.5);
    temp_104 = temp_103;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_104 = 0.0 - temp_103 + 1.0;
    }
    out_attr3.w = sysVertexColor0Attr.w;
    temp_105 = temp_102;
    if (!(((!((floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x80000) == floatBitsToInt(7.34684E-40)) || !(temp_8 > 0.5) ? -1 : 0)) != 0))
    {
        temp_105 = 0.0 - temp_102 + 1.0;
    }
    out_attr2.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    gl_Position.x = fma(temp_65, _sysViewUniformBlock.data[8].z, fma(temp_63, _sysViewUniformBlock.data[8].y, temp_60 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_65, _sysViewUniformBlock.data[9].z, fma(temp_63, _sysViewUniformBlock.data[9].y, temp_60 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_65, _sysViewUniformBlock.data[10].z, fma(temp_63, _sysViewUniformBlock.data[10].y, temp_60 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_65, _sysViewUniformBlock.data[11].z, fma(temp_63, _sysViewUniformBlock.data[11].y, temp_60 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    out_attr4.x = clamp(max(fma(temp_101, temp_87 * temp_96, fma(temp_100, temp_90 * temp_96, temp_99 * temp_86 * temp_96)), 0.3) + -0.0, 0.0, 1.0);
    out_attr4.y = clamp(fma(temp_101, temp_89 * temp_95, fma(temp_100, temp_92 * temp_95, temp_99 * temp_88 * temp_95)), 0.0, 1.0);
    out_attr1.x = temp_105 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr1.y = temp_104 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
